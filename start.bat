@echo off
set curpath=%~dp0
echo %curpath%


docker run -p 8000:8000 --rm --name=jupyter -v %curpath%/notebooks:/opt/conda/notebooks -e TOKEN= -it socialsirius/jupyter