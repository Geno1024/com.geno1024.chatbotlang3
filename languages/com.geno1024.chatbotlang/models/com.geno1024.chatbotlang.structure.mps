<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="4fqr" ref="r:fa713d69-08ea-4732-b1f2-cb07f9e103ef(jetbrains.mps.execution.util.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="3348158742936976480" name="jetbrains.mps.lang.structure.structure.EnumerationMemberDeclaration" flags="ng" index="25R33">
        <property id="1421157252384165432" name="memberId" index="3tVfz5" />
      </concept>
      <concept id="3348158742936976479" name="jetbrains.mps.lang.structure.structure.EnumerationDeclaration" flags="ng" index="25R3W">
        <child id="3348158742936976577" name="members" index="25R1y" />
      </concept>
      <concept id="1082978164218" name="jetbrains.mps.lang.structure.structure.DataTypeDeclaration" flags="ng" index="AxPO6">
        <property id="7791109065626895363" name="datatypeId" index="3F6X1D" />
      </concept>
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <property id="4628067390765956802" name="abstract" index="R5$K7" />
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
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
  <node concept="1TIwiD" id="2c2jK0UnBKs">
    <property role="EcuMT" value="2522665603678764060" />
    <property role="TrG5h" value="RobotConfig" />
    <property role="19KtqR" value="true" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2c2jK0UnBOd" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="PrWs8" id="2c2jK0UnBOi" role="PzmwI">
      <ref role="PrY4T" to="4fqr:431DWIovi3l" resolve="IMainClass" />
    </node>
    <node concept="1TJgyj" id="2c2jK0UnDxU" role="1TKVEi">
      <property role="IQ2ns" value="2522665603678771322" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="using" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2c2jK0UnBOm" resolve="SubLanguage" />
    </node>
    <node concept="1TJgyj" id="2c2jK0UnUSk" role="1TKVEi">
      <property role="IQ2ns" value="2522665603678842388" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20kJfa" value="replyPool" />
      <ref role="20lvS9" node="2c2jK0UnUSj" resolve="Reply" />
    </node>
  </node>
  <node concept="1TIwiD" id="2c2jK0UnBOm">
    <property role="EcuMT" value="2522665603678764310" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="SubLanguage" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2c2jK0UnDxz" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="2c2jK0UnUSj">
    <property role="EcuMT" value="2522665603678842387" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="Reply" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2c2jK0UnUSn" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="2c2jK0Uo2Cl" role="1TKVEl">
      <property role="IQ2nx" value="2522665603678874133" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="2c2jK0Uo2Ce" resolve="ReplyType" />
    </node>
  </node>
  <node concept="25R3W" id="2c2jK0Uo2Ce">
    <property role="3F6X1D" value="2522665603678874126" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="ReplyType" />
    <node concept="25R33" id="2c2jK0Uo2Cf" role="25R1y">
      <property role="3tVfz5" value="2522665603678874127" />
      <property role="TrG5h" value="Static" />
    </node>
    <node concept="25R33" id="2c2jK0Uo2Ci" role="25R1y">
      <property role="3tVfz5" value="2522665603678874130" />
      <property role="TrG5h" value="InputAware" />
    </node>
  </node>
  <node concept="1TIwiD" id="2c2jK0Uo2Cr">
    <property role="EcuMT" value="2522665603678874139" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <property role="TrG5h" value="StaticReply" />
    <ref role="1TJDcQ" node="2c2jK0UnUSj" resolve="Reply" />
    <node concept="1TJgyi" id="2c2jK0Uo2Cs" role="1TKVEl">
      <property role="IQ2nx" value="2522665603678874140" />
      <property role="TrG5h" value="content" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2c2jK0Uo5Ax">
    <property role="EcuMT" value="2522665603678886305" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="InputAwareReplyFunction" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UoaFU">
    <property role="EcuMT" value="2522665603678907130" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Message" />
    <property role="34LRSv" value="message" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UoaU1">
    <property role="EcuMT" value="2522665603678908033" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Sender" />
    <property role="34LRSv" value="senderId" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0Uob41">
    <property role="EcuMT" value="2522665603678908673" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="From" />
    <property role="34LRSv" value="fromGroup" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0Uob97">
    <property role="EcuMT" value="2522665603678908999" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Nickname" />
    <property role="34LRSv" value="senderNick" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UozfT">
    <property role="EcuMT" value="2522665603679007737" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <property role="TrG5h" value="InputAwareReply" />
    <ref role="1TJDcQ" node="2c2jK0UnUSj" resolve="Reply" />
    <node concept="1TJgyj" id="2c2jK0UozfU" role="1TKVEi">
      <property role="IQ2ns" value="2522665603679007738" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="function" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2c2jK0Uo5Ax" resolve="InputAwareReplyFunction" />
    </node>
  </node>
</model>

