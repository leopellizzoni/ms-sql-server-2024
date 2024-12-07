# ms-sql-server-2024

https://sou.ucs.br/extensao/detalhes/microsoft-sql-server-EXT034905/

## Links utilizados no curso
* Sql Server 2022 (Develop ou Express) https://www.microsoft.com/pt-br/sql-server/sql-server-downloads
* Sql Server Management Studio: https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16#download-ssms
* Azure Data Studio: https://learn.microsoft.com/pt-br/azure-data-studio/download-azure-data-studio

### Partes práticas
* Especificação: https://github.com/leopellizzoni/ms-sql-server-2024/issues/1
* Resposta: https://github.com/leopellizzoni/ms-sql-server-2024/blob/main/encontro2/respostaPartePratica1.sql
* Especificação: https://github.com/leopellizzoni/ms-sql-server-2024/issues/2
* Resposta: https://github.com/leopellizzoni/ms-sql-server-2024/blob/main/encontro4/respostaPartePratica2.sql

### Docker
* https://www.docker.com/
* https://hub.docker.com/r/microsoft/mssql-server 
* docker pull mcr.microsoft.com/mssql/server:2022-latest 
* docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Senha#UmDoisTres" -p 1434:1433 --name sqlserver -d mcr.microsoft.com/mssql/server:2022-latest
* Conectar em localhost,1434 
* Usuário: sa
* Senha: Senha#UmDoisTres
* https://portal.azure.com/ [ Exemplo do banco online via nuvem ]
