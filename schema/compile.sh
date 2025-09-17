if [ -z "$SAXON_HOME" ]; then
   echo "SAXON_HOME is not set"
   exit 1
fi
if [ ! -d "${SAXON_HOME}" ]; then
   echo "Nothing found at $SAXON_HOME"
   exit 1
fi

#echo "compiling Lex0 ODD"
#pushd ../lexicalresources/Schemas/TEILex0/
#java -jar ~/bin/SaxonHE11-2J/saxon-he-11.2.jar -xi -s:TEILex0.odd -xsl:../../../TEI-Stylesheets/odds/odd2odd.xsl -o:../../../tmp/TEILex0.compiled.odd
#popd 

echo "compiling Generic Dict ODD"
echo "SAXON_HOME=$SAXON_HOME"
java -jar $SAXON_HOME/saxon-he-11.2.jar -xi -s:acdh-ch-dicts.odd -xsl:../TEI-Stylesheets/odds/odd2odd.xsl -o:acdh-ch-dicts.compiled.odd
cp acdh-ch-dicts.compiled.odd tmp/acdh-ch-dicts.compiled.odd 
