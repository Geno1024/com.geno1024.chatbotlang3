<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b154bdc8-b99c-4e17-b4e5-16e7fdc1c36c(com.geno1024.chatbotlang.typesystem)">
  <persistence version="9" />
  <languages>
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="5" />
    <devkit ref="00000000-0000-4000-0000-1de82b3a4936(jetbrains.mps.devkit.aspect.typesystem)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem">
      <concept id="1185788614172" name="jetbrains.mps.lang.typesystem.structure.NormalTypeClause" flags="ng" index="mw_s8">
        <child id="1185788644032" name="normalType" index="mwGJk" />
      </concept>
      <concept id="1195213580585" name="jetbrains.mps.lang.typesystem.structure.AbstractCheckingRule" flags="ig" index="18hYwZ">
        <child id="1195213635060" name="body" index="18ibNy" />
      </concept>
      <concept id="1174642788531" name="jetbrains.mps.lang.typesystem.structure.ConceptReference" flags="ig" index="1YaCAy">
        <reference id="1174642800329" name="concept" index="1YaFvo" />
      </concept>
      <concept id="1174643105530" name="jetbrains.mps.lang.typesystem.structure.InferenceRule" flags="ig" index="1YbPZF" />
      <concept id="1174648085619" name="jetbrains.mps.lang.typesystem.structure.AbstractRule" flags="ng" index="1YuPPy">
        <child id="1174648101952" name="applicableNode" index="1YuTPh" />
      </concept>
      <concept id="1174650418652" name="jetbrains.mps.lang.typesystem.structure.ApplicableNodeReference" flags="nn" index="1YBJjd">
        <reference id="1174650432090" name="applicableNode" index="1YBMHb" />
      </concept>
      <concept id="1174657487114" name="jetbrains.mps.lang.typesystem.structure.TypeOfExpression" flags="nn" index="1Z2H0r">
        <child id="1174657509053" name="term" index="1Z2MuG" />
      </concept>
      <concept id="1174658326157" name="jetbrains.mps.lang.typesystem.structure.CreateEquationStatement" flags="nn" index="1Z5TYs" />
      <concept id="1174660718586" name="jetbrains.mps.lang.typesystem.structure.AbstractEquationStatement" flags="nn" index="1Zf1VF">
        <child id="1174660783413" name="leftExpression" index="1ZfhK$" />
        <child id="1174660783414" name="rightExpression" index="1ZfhKB" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1YbPZF" id="2c2jK0UoaRN">
    <property role="TrG5h" value="typeof_Message" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <node concept="3clFbS" id="2c2jK0UoaRO" role="18ibNy">
      <node concept="1Z5TYs" id="2c2jK0UoaRU" role="3cqZAp">
        <node concept="mw_s8" id="2c2jK0UoaS4" role="1ZfhK$">
          <node concept="1Z2H0r" id="2c2jK0UoaS0" role="mwGJk">
            <node concept="1YBJjd" id="2c2jK0UoaSl" role="1Z2MuG">
              <ref role="1YBMHb" node="2c2jK0UoaRQ" resolve="message" />
            </node>
          </node>
        </node>
        <node concept="mw_s8" id="2c2jK0UoaSS" role="1ZfhKB">
          <node concept="2c44tf" id="2c2jK0UoaSO" role="mwGJk">
            <node concept="17QB3L" id="2c2jK0UoaTe" role="2c44tc" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2c2jK0UoaRQ" role="1YuTPh">
      <property role="TrG5h" value="message" />
      <ref role="1YaFvo" to="7xvd:2c2jK0UoaFU" resolve="Message" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c2jK0UoaU8">
    <property role="TrG5h" value="typeof_Sender" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <node concept="3clFbS" id="2c2jK0UoaU9" role="18ibNy">
      <node concept="1Z5TYs" id="2c2jK0Uob33" role="3cqZAp">
        <node concept="mw_s8" id="2c2jK0Uob3n" role="1ZfhKB">
          <node concept="2c44tf" id="2c2jK0Uob3j" role="mwGJk">
            <node concept="17QB3L" id="70opIplfeF3" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="2c2jK0Uob36" role="1ZfhK$">
          <node concept="1Z2H0r" id="2c2jK0UoaUf" role="mwGJk">
            <node concept="1YBJjd" id="2c2jK0UoaW3" role="1Z2MuG">
              <ref role="1YBMHb" node="2c2jK0UoaUb" resolve="sender" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2c2jK0UoaUb" role="1YuTPh">
      <property role="TrG5h" value="sender" />
      <ref role="1YaFvo" to="7xvd:2c2jK0UoaU1" resolve="Sender" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c2jK0Uob48">
    <property role="TrG5h" value="typeof_From" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <node concept="3clFbS" id="2c2jK0Uob49" role="18ibNy">
      <node concept="1Z5TYs" id="2c2jK0Uob89" role="3cqZAp">
        <node concept="mw_s8" id="2c2jK0Uob8t" role="1ZfhKB">
          <node concept="2c44tf" id="2c2jK0Uob8p" role="mwGJk">
            <node concept="17QB3L" id="2c2jK0Uob8N" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="2c2jK0Uob8c" role="1ZfhK$">
          <node concept="1Z2H0r" id="2c2jK0Uob4f" role="mwGJk">
            <node concept="1YBJjd" id="2c2jK0Uob63" role="1Z2MuG">
              <ref role="1YBMHb" node="2c2jK0Uob4b" resolve="from" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2c2jK0Uob4b" role="1YuTPh">
      <property role="TrG5h" value="from" />
      <ref role="1YaFvo" to="7xvd:2c2jK0Uob41" resolve="From" />
    </node>
  </node>
  <node concept="1YbPZF" id="2c2jK0Uob9e">
    <property role="TrG5h" value="typeof_Nickname" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <node concept="3clFbS" id="2c2jK0Uob9f" role="18ibNy">
      <node concept="1Z5TYs" id="2c2jK0Uobdf" role="3cqZAp">
        <node concept="mw_s8" id="2c2jK0Uobdz" role="1ZfhKB">
          <node concept="2c44tf" id="2c2jK0Uobdv" role="mwGJk">
            <node concept="17QB3L" id="2c2jK0UobeW" role="2c44tc" />
          </node>
        </node>
        <node concept="mw_s8" id="2c2jK0Uobdi" role="1ZfhK$">
          <node concept="1Z2H0r" id="2c2jK0Uob9l" role="mwGJk">
            <node concept="1YBJjd" id="2c2jK0Uobb9" role="1Z2MuG">
              <ref role="1YBMHb" node="2c2jK0Uob9h" resolve="nickname" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1YaCAy" id="2c2jK0Uob9h" role="1YuTPh">
      <property role="TrG5h" value="nickname" />
      <ref role="1YaFvo" to="7xvd:2c2jK0Uob97" resolve="Nickname" />
    </node>
  </node>
</model>

