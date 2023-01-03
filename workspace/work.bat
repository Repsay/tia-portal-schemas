set RESULTS_DIR=results
set LINKS_FILE=links.xml
set XSLT_FILE=xs3p.xsl
set ORIGINAL_XSLT_FILE=..\%XSLT_FILE%
@REM Copy XSLT file to local directory
copy %ORIGINAL_XSLT_FILE% .
@REM Create results directory
if not exist %RESULTS_DIR% mkdir %RESULTS_DIR%
@REM Loop through schema files
for %%f in (*.xsd) do msxsl %%f %XSLT_FILE% -t -o %RESULTS_DIR%\%%f.html searchImportedSchemas=true searchIncludedSchemas=true linksFile=%LINKS_FILE%
@REM Delete local copy of stylesheet
del %XSLT_FILE%

pause