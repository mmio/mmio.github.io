@echo off
echo XMLlint: Linking files

set SGML_CATALOG_FILES=C:\docbook\my_xsl\catalog.xml
c:\docbook\libxml\bin\xmllint.exe --catalogs --xinclude --valid %1 > tmp.xml
pause

echo SAXON: Generating FO

java -cp c:\docbook\resolver\;c:\docbook\resolver\resolver.jar;c:\docbook\saxon\saxon.jar;c:\docbook\xalan\bin\xercesImpl.jar;c:\docbook\xsl\extensions\saxon653.jar -Djavax.xml.parsers.DocumentBuilderFactory=org.apache.xerces.jaxp.DocumentBuilderFactoryImpl -Djavax.xml.parsers.SAXParserFactory=org.apache.xerces.jaxp.SAXParserFactoryImpl com.icl.saxon.StyleSheet -x org.apache.xml.resolver.tools.ResolvingXMLReader -y org.apache.xml.resolver.tools.ResolvingXMLReader -r org.apache.xml.resolver.tools.CatalogResolver -o fo.xml tmp.xml thesis.xsl
pause
del /F tmp.xml

echo XEP: Generating PDF

call C:\docbook\xep\xep.bat -fo fo.xml -pdf output.pdf
pause
del /F fo.xml