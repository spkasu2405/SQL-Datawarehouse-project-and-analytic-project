/*
--=======================================
creating a database and schema
==========================================
Script Purpose:
the script creates a new database name "Datawarehouse" after checking it already exists.
if the database exists it drops and recreate
aditionally the script set up 3 SCHEMAS( bronze, silver, gold) with in the database datawarehouse.

Warning: 
Running the database will drop the entire datawarehouse database  if exists.
*/



use master;
=============================================
--drop and recreate database if exists
=============================================
if exists(select 1 from sys.databases where name= 'datawarehouse')
begin
   alter database datawarehouse set single_user with rollback immediate;
   Drop database datawarehouse
   end;
   go
--====================
Create a database
--=====================
create database datawarehouse;

use datawarehouse;
 ====================
 create a schema
 =====================
 create schema bronze
 go
 create schema silver
  go
  create schema gold
