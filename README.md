# Learning Oracle RDBMS

This repo was created to learn how to use Oracle DB.

I have the following learning objectives (in order of priority):

1. Master PL/SQL as much as possible
2. Get Certification:
   - Oracle SQL Developer: Certified Associate (1Z0-071)

The repo is structured to navigate between the following sections:

1. [Practice scripts](00_01_practice_scripts/README.md)
1. [Exam preparations](00_02_exam_preparation/README.md)
1. [Study Material](01_00_study_material/README.md)

## Setup

### Download Study Material

1. download the course-provided documents in the following paths:
   - `01_00_study_material/01_complete_pl_sql_bootcamp/01_resource_material/Archive.zip`
   - `01_00_study_material/02_complete_oracle_sql_bootcamp/01_resource_material/Archive.zip`

### Install Docker

performed initially

1. Install `docker`
   ```commandline
   brew install docker
   ```

1. Install `colima` (optionally for Mac users).
   ```commandline
   brew install colima
   ```

### start database container

1. run virtual machine (4-8 GB recommended)
   ```commandline
   colima start --memory <size_in_GB> --arch x86_64
   ```

1. run docker image
   ```commandline
   docker run -d --name <db-container-name> -p 1521:1521 -e ORACLE_PASSWORD=<some-password> -v <absolute/path/to/target/dir> gvenzl/oracle-free
   ```

### Setup database and user credentials - Basic (not recommended for production)

1. update password for sys and sysadmin
   ```commandline
   docker exec <container name|id> resetPassword <your password>
   ```
   
1. follow [these instructions](oracle-volume/README.md)


### Stop docker container
1. stop docker
   ```commandline
   docker stop <container id | name>
   ```
1. stop virtual machine
   ```commandline
   colima stop
   ```

## Sources:

- [free oracle database docker image documentation](https://hub.docker.com/r/gvenzl/oracle-free)
- [video tutorial: how to set up Oracle HR schema](https://www.youtube.com/watch?v=x8C8w4JM3AU)
