<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" xmlns:rng="http://relaxng.org/ns/structure/1.0" queryBinding="xslt2">
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="tei" uri="http://www.tei-c.org/ns/1.0"/>
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="xs" uri="http://www.w3.org/2001/XMLSchema"/>
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="rng" uri="http://relaxng.org/ns/structure/1.0"/>
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="rna" uri="http://relaxng.org/ns/compatibility/annotations/1.0"/>
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="sch" uri="http://purl.oclc.org/dsdl/schematron"/>
   <sch:ns xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xi="http://www.w3.org/2001/XInclude" xmlns:xlink="http://www.w3.org/1999/xlink" prefix="sch1x" uri="http://www.ascc.net/xml/schematron"/>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.cmc-generatedBy-CMC_generatedBy_within_post-constraint-rule-1">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@generatedBy]">
         <sch:assert test="ancestor-or-self::tei:post">The @generatedBy attribute is for use within a &lt;post&gt; element.</sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.datable.w3c-att-datable-w3c-when-constraint-rule-2">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@when]">
         <sch:report test="@notBefore|@notAfter|@from|@to" role="nonfatal">The @when attribute cannot be used with any other att.datable.w3c attributes.</sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.datable.w3c-att-datable-w3c-from-constraint-rule-3">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@from]">
         <sch:report test="@notBefore" role="nonfatal">The @from and @notBefore attributes cannot be used together.</sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.datable.w3c-att-datable-w3c-to-constraint-rule-4">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@to]">
         <sch:report test="@notAfter" role="nonfatal">The @to and @notAfter attributes cannot be used together.</sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.global.source-source-only_1_ODD_source-constraint-rule-5">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@source]">
         <sch:let name="srcs" value="tokenize( normalize-space(@source),' ')"/>
         <sch:report test="(   self::tei:classRef                                 | self::tei:dataRef                                 | self::tei:elementRef                                 | self::tei:macroRef                                 | self::tei:moduleRef                                 | self::tei:schemaSpec )                                   and                                   $srcs[2]">
              When used on a schema description element (like
              <sch:value-of select="name(.)"/>), the @source attribute
              should have only 1 value. (This one has <sch:value-of select="count($srcs)"/>.)
            </sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.pointing-targetLang-targetLang-constraint-rule-6">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[not(self::tei:schemaSpec)][@targetLang]">
         <sch:assert test="@target">@targetLang should only be used on <sch:name/> if @target is specified.</sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.styleDef-schemeVersion-schemeVersionRequiresScheme-constraint-rule-7">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@schemeVersion]">
         <sch:assert test="@scheme and not(@scheme = 'free')">
              @schemeVersion can only be used if @scheme is specified.
            </sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.typed-subtypeTyped-constraint-rule-8">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@subtype]">
         <sch:assert test="@type">The <sch:name/> element should not be categorized in detail with @subtype unless also categorized in general with @type</sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.global-xml-lang-on-object-lang-elts-constraint-rule-9">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:entry|                                     tei:cit[@type='example']/tei:quote|                                     tei:orth|                            tei:gram[@type=('arguments','diaRoot','root','synRoot')]">
         <s:assert test="exists(@xml:lang)">Elements containing object language
                              must have an @xml:lang attribute.</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.global-order-of-langs-constraint-rule-10">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:cit[@type='example']">
         <s:assert test="not(@xml:lang)">cit must not have @xml:lang</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:orth|tei:quote">
         <s:assert test="@xml:lang">Needs to have a lang attribute</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:form[@type][tei:orth[@xml:lang='ar-Latn'] and tei:orth[@xml:lang='ar']]">
         <s:assert test="tei:orth[@xml:lang='ar-Latn'][following-sibling::tei:orth[@xml:lang='ar']]">ar-Latn has to be before ar</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-att.calendarSystem-calendar-calendar_attr_on_empty_element-constraint-rule-13">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:*[@calendar]">
         <sch:assert test="string-length( normalize-space(.) ) gt 0"> @calendar indicates one or more
              systems or calendars to which the date represented by the content of this element belongs,
              but this <sch:name/> element has no textual content.</sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-p-abstractModel-structure-p-in-ab-or-p-constraint-rule-14">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:p">
         <sch:report test="(ancestor::tei:ab or ancestor::tei:p) and                        not( ancestor::tei:floatingText                           | parent::tei:exemplum                           | parent::tei:item                           | parent::tei:note                           | parent::tei:q                           | parent::tei:quote                           | parent::tei:remarks                           | parent::tei:said                           | parent::tei:sp                           | parent::tei:stage                           | parent::tei:cell                           | parent::tei:figure )">
          Abstract model violation: Paragraphs may not occur inside other paragraphs or ab elements.
        </sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-p-abstractModel-structure-p-in-l-constraint-rule-15">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:l//tei:p">
         <sch:assert test="ancestor::tei:floatingText | parent::tei:figure | parent::tei:note">
          Abstract model violation: Metrical lines may not contain higher-level structural elements such as div, p, or ab, unless p is a child of figure or note, or is a descendant of floatingText.
        </sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-cit-cit-context-constraint-rule-16">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:cit[@type = 'translationEquivalent']">
         <s:assert test="parent::tei:sense">translationEquivalent: must be a
                              direct child of a sense element</s:assert>
         <s:assert test="exists(child::tei:form[not(@type)])">translationEquivalent must contain a form without a type attribute
                           </s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:cit[@type = 'translation']">
         <s:assert test="parent::tei:cit[@type = 'example']">cit/type="translation" must be part of an example</s:assert>
         <s:report test="* except (tei:quote|tei:usg)">a cit type translation may
                              only contain 1) the translated text in a quote element, 2) the context
                              of the translation in a tei:usg element</s:report>
         <s:assert test="not(@subtype) or @subtype='literal'">only "literal"
                              translations expected</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:cit[@subtype = 'proverb']">
         <s:assert test="@type = 'example'">unexpected value "<s:value-of select="current()/@type"/>" in @type – a proverb must be encoded as
                              cit type="example" subtype="proverb"</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-ref-ref-constraint-rule-19">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:ref[@type = 'example']">
         <s:assert test="exists(substring-after(.,':'))">Example with id
                                 "<s:value-of select="exists(//tei:cit[@type='example'][@xml:id=substring-after(current()/@target,'#')])"/>" not found</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-ref-refAtts-constraint-rule-20">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:ref">
         <sch:report test="@target and @cRef">Only one of the attributes @target and @cRef may be supplied on <sch:name/>.</sch:report>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-list-gloss-list-must-have-labels-constraint-rule-21">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:list[@type='gloss']">
         <sch:assert test="tei:label">The content of a "gloss" list should include a sequence of one or more pairs of a label element followed by an item element</sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-listBibl-listBibl-context-constraint-rule-22">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:listBibl[ancestor::tei:body]">
         <s:assert test="parent::tei:entry or parent::tei:cit[@type = 'example']">a listBibl is expected to be a direct child of an entry or an
                              example</s:assert>
         <s:assert test="not(tei:biblStruct)">a listBibl inside of an entry of an
                              example is composed of bibl elements</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-form-form-type-constraint-rule-23">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:form[not(parent::tei:cit)]">
         <s:assert test="exists(@type)">@type is reqired on all forms except
                              examples or translations.</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:form[@type = 'variant']">
         <s:assert test="parent::tei:form[@type = ('lemma','multiWordUnit', 'inflected')]">a variant must be a direct child of the main form (type = "lemma",
                              "multiWordUnit" or "inflected").</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:form[@type = ('lemma', 'inflected')]">
         <s:assert test="parent::tei:entry">a headword or inflected form must be a
                              direct child of an entry element. </s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:form[@subtype='compound']">
         <s:assert test="@type='lemma'">The subtype "compound" must be accompanied
                              by the type attribute "lemma".</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-gram-gram-constraints-constraint-rule-27">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:gram[@type = 'morphPattern']">
         <s:assert test="parent::tei:gramGrp/parent::tei:form[@type]">a
                              gram type morphPattern must be a direct child of a gramGrp
                              and a direct grandchild of a form with a type
                              attribute</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:gram[@type = 'polarity']">
         <s:assert test="normalize-space(.) = 'negative'">'gram' elements with type 'polarity' can only have the value 'negative'</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:gram[@type = 'degree']">
         <s:assert test="normalize-space(.) = 'elative'">'gram' elements with type 'degree' can only have the value 'elative'</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-gramGrp-gramGrpChildrenOrder-constraint-rule-30">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:gramGrp">
         <s:assert test="count(tei:gram[@type='pos'])&lt;2">Only one pos allowed</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:gramGrp">
         <s:assert test="count(tei:gram[@type='arguments']) &lt; 2 or not(tei:gram[@type='arguments'][1]/following-sibling::*[not(self::tei:gram[@type='arguments'])]/following-sibling::tei:gram[@type='arguments'])">All gramGrp elements with type arguments must occur consecutively without any other elements between them.</s:assert>
         <s:assert test="count(tei:gram[@type='diaRoot']) &lt; 2 or not(tei:gram[@type='diaRoot'][1]/following-sibling::*[not(self::tei:gram[@type='diaRoot'])]/following-sibling::tei:gram[@type='diaRoot'])">All gramGrp elements with type diaRoot must occur consecutively without any other elements between them.</s:assert>
         <s:assert test="count(tei:gram[@type='morphPattern']) &lt; 2 or not(tei:gram[@type='morphPattern'][1]/following-sibling::*[not(self::tei:gram[@type='morphPattern'])]/following-sibling::tei:gram[@type='morphPattern'])">All gramGrp elements with type morphPattern must occur consecutively without any other elements between them.</s:assert>
         <s:assert test="count(tei:gram[@type='pos']) &lt; 2 or not(tei:gram[@type='pos'][1]/following-sibling::*[not(self::tei:gram[@type='pos'])]/following-sibling::tei:gram[@type='pos'])">All gramGrp elements with type pos must occur consecutively without any other elements between them.</s:assert>
         <s:assert test="count(tei:gram[@type='synRoot']) &lt; 2 or not(tei:gram[@type='synRoot'][1]/following-sibling::*[not(self::tei:gram[@type='synRoot'])]/following-sibling::tei:gram[@type='synRoot'])">All gramGrp elements with type synRoot must occur consecutively without any other elements between them.</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-usg-name-in-usg-constraint-rule-32">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:usg[not(@type = 'geographic') and not(@type='socioCultural') and not(@type='pragmatics')]">
         <s:report test="exists(tei:name)">the name element must only occur inside
                              of usg elements with @type="geographic" or
                              @type="socioCultural".</s:report>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-seg-seg-context-constraint-rule-33">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:seg[@type = 'hint']">
         <s:assert test="parent::tei:quote[parent::tei:cit[@type = 'translation']]">a
                              hint segment must be inside a translation equivalent</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-body-body-children-constraint-rule-34">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:body">
         <s:assert test="exists(tei:div[@type = 'entries'])">body must contain a
                              div of type "entries".</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-div-div-example-children-constraint-rule-35">
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:div[@type = 'examples']">
         <s:assert test="every $e in * satisfies $e/self::tei:cit[@type = 'example']">div
                              type="examples" may only contain cit type="example"</s:assert>
      </s:rule>
      <s:rule xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns="http://www.tei-c.org/ns/1.0" context="tei:div[@type = 'entries']">
         <s:assert test="every $e in * satisfies $e/self::tei:entry">div
                              type="entries" may only contain entry elements</s:assert>
      </s:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-div-abstractModel-structure-div-in-l-constraint-rule-37">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:l//tei:div">
         <sch:assert test="ancestor::tei:floatingText">
          Abstract model violation: Metrical lines may not contain higher-level structural elements such as div, unless div is a descendant of floatingText.
        </sch:assert>
      </sch:rule>
   </pattern>
   <pattern xmlns="http://purl.oclc.org/dsdl/schematron" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:teix="http://www.tei-c.org/ns/Examples" xmlns:xlink="http://www.w3.org/1999/xlink" id="acdh-ch-dicts-div-abstractModel-structure-div-in-ab-or-p-constraint-rule-38">
      <sch:rule xmlns="http://www.tei-c.org/ns/1.0" xmlns:s="http://purl.oclc.org/dsdl/schematron" xmlns:xi="http://www.w3.org/2001/XInclude" context="tei:div">
         <sch:report test="(ancestor::tei:p or ancestor::tei:ab) and not(ancestor::tei:floatingText)">
          Abstract model violation: p and ab may not contain higher-level structural elements such as div, unless div is a descendant of floatingText.
        </sch:report>
      </sch:rule>
   </pattern>
   <sch:diagnostics/>
</sch:schema>