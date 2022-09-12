# ACDH-CH Generic Dictionary Schema

Charly Mörth, Daniel Schopper    
[ACDH-CH](https://www.oeaw.ac.at/acdh), 2021

This repository contains a TEI customization used as the base model for several dictionaries produced at ACDH-CH. The most important files are:

* the [acdh-ch-dicts Schema Defintion (ODD)](schema/acdh-ch-dicts.odd) itself
* a [HTML documentation](schema/acdh-ch-dicts.html)
* the [RNG Schema, Schematron rules included](schema/out/acdh-ch-dicts.rng) derived from the ODD
* and the [XML Schema](schema/out/acdh-ch-dicts.xsd)

## Building the schema

This ODD is not written from scratch, but builds on the excellent work of the [TEI Lex-0 initiative](https://dariah-eric.github.io/lexicalresources/pages/TEILex0/TEILex0.html). This repository contains everything you need to build the ACDH-CH Generic Dictionary Schema, namely the [odd2odd.xsl](TEI-Stylesheets/odds/odd2odd.xsl) script from the [TEI-C Stylesheets suite](https://github.com/TEIC/Stylesheets)
and the [TEI Lex-0 ODD](lexicalresources/Schemas/TEILex0/TEILex0.odd) from the [TEI Lex0 repository](https://github.com/DARIAH-ERIC/lexicalresources/tree/master/Schemas/TEILex0).

We use a method called ODD chaining to extend TEI Lex0 ODD in a two-step process:

1. First the bare-bones Lex-0 ODD is compiled into a stand-alone TEI definition by running it through [odd2odd.xsl](TEI-Stylesheets/odds/odd2odd.xsl). The result should be saved to `schema/tmp/TEI-Lex0.compiled.odd`. If you are using the oXygen XML editor, you can do this by running the transformation scenario `compile LEX0 ODD` in the oXygen project `acdh-ch-dicts-schema.xpr`.
2. Afterwards, you can process the acdh-ch-dicts ODD into the various output formats. Again, you can use oXygen transformation scenarios for this: either the ones shipped with your oXygen installation or the most up-to-date ones provided by the [Oxygen TEI plugin](https://github.com/TEIC/oxygen-tei).

For more information on ODD chaining see <http://teic.github.io/TCW/howtoChain.html>. 

For more information on how to process ODDs into documentation and schemas refer to the section *Processing your ODD specification* at [Getting Started with P5 ODDs](https://tei-c.org/guidelines/customization/getting-started-with-p5-odds).

NB Both the TEI-C Stylesheets and the TEI Lex-0 ODD are included as *git submodules*. That means, that both directories are present but empty when you pull this repository. If you want to re-build the acdh-ch-dicts ODD, you have to initialize both submodules and pull in their content by issuing running two commands: `git submodule init` to initialize your local configuration file, and `git submodule update` to fetch all the data from that project. Otherwise you can include the submodules already when you clone this repository by adding the flag `--recurse-submodules` to the `git clone` command.

Whenever you want or need to update one of the two libraries, cd into the respective directories and run `git submodule update`. Afterwards you have to recompile the TEI Lex0 ODD and the ACDH-CH schemas (see steps above).


## References

Toma Tasovac, Laurent Romary, Piotr Banski, Jack Bowers, Jesse de Does, Katrien Depuydt, Tomaž Erjavec, Alexander Geyken, Axel Herold, Vera Hildenbrandt, Mohamed Khemakhem, Boris Lehečka, Snežana Petrović, Ana Salgado and Andreas Witt. 2018. TEI Lex-0: A baseline encoding for lexicographic data. Version 0.9.0. DARIAH Working Group on Lexical Resources. <https://dariah-eric.github.io/lexicalresources/pages/TEILex0/TEILex0.html>.

Lou Bernhard. unpublished discussion draft: ODD chaining for Beginners. <http://teic.github.io/TCW/howtoChain.html>.

How to automatically update your TEI framework in oXygen. <https://github.com/TEIC/oxygen-tei/blob/master/oxygen-tei-plugin.md>

## License

The content of this repository is licensed under CC BY 4.0. Please check the included submodules for other licenses to consider.

## Reference Dictionaries

Here are some examples of dictionaries which use or extend/restrict this schema: 

* [VICAV dictionaries](https://vicav.acdh.oeaw.ac.at/#map=[biblMarkers,_vicavDicts_,]&1=[textQuery,vicavMission,MISSION,closed]&3=[textQuery,vicavDictionariesTechnicalities,DICTIONARIES%20(TECHNICALITIES),open]&4=[textQuery,vicavDictionariesTechnicalities,DICTIONARIES%20(TECHNICALITIES),open]&5=[crossDictQueryLauncher,open])
* [Zulu Dictionary](https://zuludict.acdh-dev.oeaw.ac.at/)

## Want to know more? 

Contact us at <acdh-helpdesk@oeaw.ac.at>

