 
The db obtained from http://web.fflch.usp.br/centrodametropole/716
is converted to sentences with:
    pgdbf ESC2013_RMSP_CEM.DBF > dbfile.sql

replace ******
    cat dbfile.sql | sed 's/\*\*\*\*\*\*\*\*\*\*\*/0/' > dbfile2.sql
    cat dbfile2.sql | sed 's/\*\*\*\*\*\*\*\*\*\*\*/0/' > dbfile3.sql
    cat dbfile3.sql | sed 's/\xf5\|\x2d|\xa7//g' > dbfile4.sql
    cat dbfile4.sql | sed 's/--//g' > dbfile5.sql
    cat dbfile5.sql | sed 's/\xA7\|\xdd//g' > dbfile6.sql


execute the script using: 
    sudo -u postgres psql -d kriging_city_development -f dbfile6.sql


insert into schools(identifier,longitude,latitude,code,nomeesc,created_at,updated_at) select id,cast(longitude as numeric),cast(latitude as numeric),codesctx,nomeesc,now(),now() from esc2013_rmsp_cem;