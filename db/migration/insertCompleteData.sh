#!/bin/bash
sudo -u postgres psql -d kriging_city_development -f dbfile6.sql
sudo -u postgres psql -d kriging_city_development -c 'insert into schools(identifier,longitude,latitude,code,nomeesc,created_at,updated_at) select id,cast(longitude as numeric),cast(latitude as numeric),codesctx,nomeesc,now(),now() from esc2013_rmsp_cem;'
