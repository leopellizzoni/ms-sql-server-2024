# ms-sql-server-2024

https://sou.ucs.br/extensao/detalhes/microsoft-sql-server-EXT034905/

## Links utilizados no curso
* Sql Server 2022 (Develop ou Express) https://www.microsoft.com/pt-br/sql-server/sql-server-downloads
* Sql Server Management Studio: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms
* Azure Data Studio: https://learn.microsoft.com/pt-br/azure-data-studio/download-azure-data-studio


### Docker
* https://www.docker.com/
* https://hub.docker.com/r/microsoft/mssql-server 
* docker pull mcr.microsoft.com/mssql/server:2022-latest 
* docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Senha#UmDoisTres" -p 1434:1433 --name sqlserver -d mcr.microsoft.com/mssql/server:2022-latest
* Conectar em localhost,1434 
* Usuário: sa
* Senha: Senha#UmDoisTres
