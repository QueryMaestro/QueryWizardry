--SQL Server configuration, set login audit level to both failed and successful logins
USE [master]
GO
EXEC xp_instance_regwrite N'HKEY_LOCAL_MACHINE', N'Software\Microsoft\MSSQLServer\MSSQLServer', N'AuditLevel', REG_DWORD, 3
--0, none
--1, success only
--2, failed only
--3, success and failed
GO
