# ACDH-CH Dictionary Schema

Charly Mörth, Daniel Schopper    
[ACDH-CH](https://www.oeaw.ac.at/acdh), 2021

This repository contains a basic TEI customization commonly used in all dictionaries produced at ACDH-CH. The most important files are:

* the [acdh-ch-dicts Schema Defintion (ODD)](schema/acdh-ch-dicts.odd) itslef
* a [HTML documentation](schema/acdh-ch-dicts.html)
* the [RNG Schema, Schematron rules included](schema/out/acdh-ch-dicts.rng) derived from the ODD
* and the [XML Schema](schema/out/acdh-ch-dicts.xml)

## Building the schema

This schema is not written from scratch, but builds on the excellent work of the [TEI Lex-0 initiative](https://dariah-eric.github.io/lexicalresources/pages/TEILex0/TEILex0.html).

This repository contains everything you need to build the ACDH-CH dictionary schema, namely the [odd2odd.xsl](TEI-Stylesheets/odds/odd2odd.xsl) script from the [TEI-C Stylesheets suite](https://github.com/TEIC/Stylesheets)
and the [TEI Lex-0 ODD](lexicalresources/Schemas/TEILex0/TEILex0.odd) from the [TEI Lex0 repository](https://github.com/DARIAH-ERIC/lexicalresources/tree/master/Schemas/TEILex0).

We use a method called ODD chaining to extend the original TEI Lex0 ODD in a two-step process:

1. First the bare-bones Lex-0 ODD is compiled into a stand-alone TEI definition by running it through [odd2odd.xsl](TEI-Stylesheets/odds/odd2odd.xsl). The result should be saved to `schema/tmp/TEI-Lex0.compiled.odd`. 
2. Afterwards, you can process the acdh-ch-dicts ODD into the various output formats.

There is an oXygen XML editor project to help you with both tasks you can use the transformation scenario `compile LEX0 ODD` for step 1 and either the TEI ODD transformation scenarios which are shiped with your oXygen installation or provided by the [Oxygen TEI plugin](https://github.com/TEIC/oxygen-tei).

For more information on ODD chaining see <http://teic.github.io/TCW/howtoChain.html>. 

For more information on how to process ODDs into documentation and schemas refer to the section *Processing your ODD specification* at [Getting Started with P5 ODDs](https://tei-c.org/guidelines/customization/getting-started-with-p5-odds).

## Updating external libraries

Both the TEI-C Stylesheets and the TEI Lex-0 ODD are included as *git submodules*, which means that both are still linked to their respective source git repositories. Whenever you want or need one of them, cd into the respective directories and run `git submodule update`. Afterwards you have to recompile the TEI Lex0 ODD and the ACDH-CH schemas.


## References

Toma Tasovac, Laurent Romary, Piotr Banski, Jack Bowers, Jesse de Does, Katrien Depuydt, Tomaž Erjavec, Alexander Geyken, Axel Herold, Vera Hildenbrandt, Mohamed Khemakhem, Boris Lehečka, Snežana Petrović, Ana Salgado and Andreas Witt. 2018. TEI Lex-0: A baseline encoding for lexicographic data. Version 0.9.0. DARIAH Working Group on Lexical Resources. <https://dariah-eric.github.io/lexicalresources/pages/TEILex0/TEILex0.html>.

Lou Bernhard. unpublished discussion draft: ODD chaining for Beginners. <http://teic.github.io/TCW/howtoChain.html>.

How to automatically update your TEI framework in oXygen. <https://github.com/TEIC/oxygen-tei/blob/master/oxygen-tei-plugin.md>

## License

The content of this repository is licensed under CC BY 4.0. Please check the included submodules for other licenses to consider.

## Want to know more? 

Contact us at <acdh-helpdesk@oeaw.ac.at>

