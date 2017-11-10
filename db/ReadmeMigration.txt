 
The db obtained from http://web.fflch.usp.br/centrodametropole/716
is converted to sentences with:
    pgdbf ESC2013_RMSP_CEM.DBF > dbfile.sql

execute the script using: 
    sudo -u postgres psql -d db/development -f dbfile.sql 