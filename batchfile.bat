@ECHO OFF 
TITLE Convert repository to Git

ECHO ============================
ECHO EXPORTING MERCURIAL TO GIT
ECHO ============================


echo %CD%\.hg\hgrc

>> %CD%\.hg\hgrc echo;
>> %CD%\.hg\hgrc echo [git]
>> %CD%\.hg\hgrc echo intree=1

ECHO ============================
ECHO hgrc aangepast
ECHO ============================

ECHO ================================================
ECHO Running export... (This could take about 30 min)
ECHO ================================================

hg gexport


ECHO ============================================
ECHO Finished export
ECHO ============================================


git config --local --bool core.bare false

ECHO ============================================
ECHO Created valid Git repo
ECHO ============================================



git add --all
git commit -m "convert HG to git"


ECHO ============================================
ECHO Done
ECHO ============================================


PAUSE