<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:83cf1236-496d-4f4b-88d6-6661085e1cc8(com.geno1024.chatbotlang.constraints)">
  <persistence version="9" />
  <languages>
    <use id="5dae8159-ab99-46bb-a40d-0cee30ee7018" name="jetbrains.mps.lang.constraints.rules.kinds" version="0" />
    <use id="ea3159bf-f48e-4720-bde2-86dba75f0d34" name="jetbrains.mps.lang.context.defs" version="0" />
    <use id="e51810c5-7308-4642-bcb6-469e61b5dd18" name="jetbrains.mps.lang.constraints.msg.specification" version="0" />
    <use id="134c38d4-e3af-4d9e-b069-1c7df0a4005d" name="jetbrains.mps.lang.constraints.rules.skeleton" version="0" />
    <use id="b3551702-269c-4f05-ba61-58060cef4292" name="jetbrains.mps.lang.rulesAndMessages" version="0" />
    <use id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints" version="6" />
    <use id="13744753-c81f-424a-9c1b-cf8943bf4e86" name="jetbrains.mps.lang.sharedConcepts" version="0" />
    <use id="3ad5badc-1d9c-461c-b7b1-fa2fcd0a0ae7" name="jetbrains.mps.lang.context" version="0" />
    <use id="ad93155d-79b2-4759-b10c-55123e763903" name="jetbrains.mps.lang.messages" version="0" />
    <devkit ref="00000000-0000-4000-0000-5604ebd4f22c(jetbrains.mps.devkit.aspect.constraints)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
    </language>
    <language id="3f4bc5f5-c6c1-4a28-8b10-c83066ffa4a1" name="jetbrains.mps.lang.constraints">
      <concept id="1147467115080" name="jetbrains.mps.lang.constraints.structure.NodePropertyConstraint" flags="ng" index="EnEH3">
        <reference id="1147467295099" name="applicableProperty" index="EomxK" />
        <child id="1147468630220" name="propertyGetter" index="EtsB7" />
      </concept>
      <concept id="1147467790433" name="jetbrains.mps.lang.constraints.structure.ConstraintFunction_PropertyGetter" flags="in" index="Eqf_E" />
      <concept id="1213093968558" name="jetbrains.mps.lang.constraints.structure.ConceptConstraints" flags="ng" index="1M2fIO">
        <reference id="1213093996982" name="concept" index="1M2myG" />
        <child id="1213098023997" name="property" index="1MhHOB" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="1M2fIO" id="2c2jK0Uo2D6">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <ref role="1M2myG" to="7xvd:2c2jK0Uo2Cr" resolve="StaticReply" />
    <node concept="EnEH3" id="2c2jK0Uo2D7" role="1MhHOB">
      <ref role="EomxK" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
      <node concept="Eqf_E" id="2c2jK0Uo2DO" role="EtsB7">
        <node concept="3clFbS" id="2c2jK0Uo2DP" role="2VODD2">
          <node concept="3cpWs6" id="2c2jK0Uo2Gd" role="3cqZAp">
            <node concept="2OqwBi" id="2c2jK0Uo3ek" role="3cqZAk">
              <node concept="1XH99k" id="2c2jK0Uo2JM" role="2Oq$k0">
                <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
              </node>
              <node concept="2ViDtV" id="2c2jK0Uo3r_" role="2OqNvi">
                <ref role="2ViDtZ" to="7xvd:2c2jK0Uo2Cf" resolve="Static" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1M2fIO" id="2c2jK0Up1Iy">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <ref role="1M2myG" to="7xvd:2c2jK0UozfT" resolve="InputAwareReply" />
    <node concept="EnEH3" id="2c2jK0Up1Iz" role="1MhHOB">
      <ref role="EomxK" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
      <node concept="Eqf_E" id="2c2jK0Up1Jl" role="EtsB7">
        <node concept="3clFbS" id="2c2jK0Up1Jm" role="2VODD2">
          <node concept="3cpWs6" id="2c2jK0Up1LN" role="3cqZAp">
            <node concept="2OqwBi" id="2c2jK0Up2h7" role="3cqZAk">
              <node concept="1XH99k" id="2c2jK0Up1M_" role="2Oq$k0">
                <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
              </node>
              <node concept="2ViDtV" id="2c2jK0Up2uo" role="2OqNvi">
                <ref role="2ViDtZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAware" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

