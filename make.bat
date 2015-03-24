@echo off
xelatex epyt-demo
xelatex epyt-demo
xelatex epyt-demo-cn
xelatex epyt-demo-cn
if not exist temp\tex\latex\epyt md temp\tex\latex\epyt
copy /y beamerthemeepyt.sty temp\tex\latex\epyt
if not exist temp\doc\latex\epyt md temp\doc\latex\epyt
copy /y epyt-demo.tex temp\doc\latex\epyt
copy /y epyt-demo.pdf temp\doc\latex\epyt
copy /y epyt-demo-cn.tex temp\doc\latex\epyt
copy /y epyt-demo-cn.pdf temp\doc\latex\epyt
copy /y README temp\doc\latex\epyt
if not exist temp\epyt md temp\epyt
copy /y beamerthemeepyt.sty temp\epyt
copy /y epyt-demo.tex temp\epyt
copy /y epyt-demo.pdf temp\epyt
copy /y README temp\epyt
if exist temp\epyt.tds.zip del temp\epyt.tds.zip
if exist temp\epyt.zip del temp\epyt.zip
cd temp && zip -r -X -ll epyt.tds.zip doc tex
cd ..
cd temp && zip -r -X -ll epyt.zip epyt.tds.zip epyt
