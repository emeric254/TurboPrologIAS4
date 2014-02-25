rem fichier d'installation de TURBO-PROLOG
rem lancer par 
rem      a:install 
rem ou par 
rem      a:
rem      install

@echo off
echo.
echo installation de Turbo-Prolog
echo.

md c:\prolog
xcopy /s a:\*.* c:\prolog\

