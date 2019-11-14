## Readme

This repo contains: 

 - A basic Web App (Hello World) project (c# .net CSPROJ) 
 - A Database project for SQL Server (on Azure)
 - A yml (yaml) template for a basic build profile

And a WebAppRelease.json file that contains an export of the release pipeline
This Repo is meant to be used by Devs to autonomously deploy their applications in the Azure Cloud infrastructure.

## IMPORTANT
It requires a "library" (**globally** pipelined-shared variables) that define a client name, and a product name that must be linked in the deployment pipeline. And it must contain:

 - ClientID=Client Name 
 - ProductID=Product Name
 - sqladminUsername=The username for the SQL Server Database

It is important not to use spaces in the names, nor underscores (hyphens are okay)

The Yaml build includes a nuget restore.

This should include everything required to rapidly set up a deployment pipeline for a new project.
