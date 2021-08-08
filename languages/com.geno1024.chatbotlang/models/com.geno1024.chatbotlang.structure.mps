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
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
    </language>
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
        <property id="4628067390765907488" name="conceptShortDescription" index="R4oN_" />
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
        <child id="6327362524875300597" name="icon" index="rwd14" />
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
    <node concept="1TJgyj" id="49WvUPtuAYY" role="1TKVEi">
      <property role="IQ2ns" value="4790844486189739966" />
      <property role="20kJfa" value="login" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <ref role="20lvS9" node="4zqelTg5B6H" resolve="Account" />
    </node>
    <node concept="1TJgyj" id="49WvUPuorfS" role="1TKVEi">
      <property role="IQ2ns" value="4790844486204896248" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="triggerPool" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="49WvUPuolTq" resolve="Trigger" />
    </node>
    <node concept="1TJgyj" id="2c2jK0UnUSk" role="1TKVEi">
      <property role="IQ2ns" value="2522665603678842388" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <property role="20kJfa" value="replyPool" />
      <ref role="20lvS9" node="2c2jK0UnUSj" resolve="Reply" />
    </node>
    <node concept="1irR5M" id="70opIpkkOlY" role="rwd14">
      <property role="2$rrk2" value="1" />
      <node concept="1irPie" id="70opIpkkOpG" role="1irR9h">
        <property role="1irPi9" value="B" />
        <node concept="3PKj8D" id="70opIpkkOtP" role="3PKjny">
          <property role="3PKj8l" value="007FFF" />
        </node>
      </node>
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
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <property role="TrG5h" value="ReplyType" />
    <node concept="25R33" id="2c2jK0Uo2Cf" role="25R1y">
      <property role="3tVfz5" value="2522665603678874127" />
      <property role="TrG5h" value="StaticText" />
    </node>
    <node concept="25R33" id="70opIpled_P" role="25R1y">
      <property role="3tVfz5" value="8077319071147284853" />
      <property role="TrG5h" value="StaticImage" />
    </node>
    <node concept="25R33" id="2c2jK0Uo2Ci" role="25R1y">
      <property role="3tVfz5" value="2522665603678874130" />
      <property role="TrG5h" value="InputAwareText" />
    </node>
    <node concept="25R33" id="70opIplee7j" role="25R1y">
      <property role="3tVfz5" value="8077319071147286995" />
      <property role="TrG5h" value="InputAwareImage" />
    </node>
  </node>
  <node concept="1TIwiD" id="2c2jK0Uo2Cr">
    <property role="EcuMT" value="2522665603678874139" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <property role="TrG5h" value="StaticTextReply" />
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
    <property role="TrG5h" value="InputAwareTextReplyFunction" />
    <ref role="1TJDcQ" to="tpee:gyVMwX8" resolve="ConceptFunction" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UoaFU">
    <property role="EcuMT" value="2522665603678907130" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Message" />
    <property role="34LRSv" value="message" />
    <property role="R4oN_" value="string" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UoaU1">
    <property role="EcuMT" value="2522665603678908033" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Sender" />
    <property role="34LRSv" value="senderId" />
    <property role="R4oN_" value="string" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0Uob41">
    <property role="EcuMT" value="2522665603678908673" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="From" />
    <property role="34LRSv" value="fromGroup" />
    <property role="R4oN_" value="string" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0Uob97">
    <property role="EcuMT" value="2522665603678908999" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <property role="TrG5h" value="Nickname" />
    <property role="34LRSv" value="senderNick" />
    <property role="R4oN_" value="string" />
    <ref role="1TJDcQ" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
  </node>
  <node concept="1TIwiD" id="2c2jK0UozfT">
    <property role="EcuMT" value="2522665603679007737" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <property role="TrG5h" value="InputAwareTextReply" />
    <ref role="1TJDcQ" node="2c2jK0UnUSj" resolve="Reply" />
    <node concept="1TJgyj" id="2c2jK0UozfU" role="1TKVEi">
      <property role="IQ2ns" value="2522665603679007738" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="function" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="2c2jK0Uo5Ax" resolve="InputAwareTextReplyFunction" />
    </node>
  </node>
  <node concept="1TIwiD" id="4zqelTg5B6H">
    <property role="EcuMT" value="5249571392887091629" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="Account" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="4zqelTg5KnU" role="1TKVEl">
      <property role="IQ2nx" value="5249571392887129594" />
      <property role="TrG5h" value="username" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="4zqelTg5Kpd" role="1TKVEl">
      <property role="IQ2nx" value="5249571392887129677" />
      <property role="TrG5h" value="password" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
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
  <node concept="1TIwiD" id="49WvUPuolow">
    <property role="EcuMT" value="4790844486204872224" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.trigger" />
    <property role="TrG5h" value="OnBoot" />
    <ref role="1TJDcQ" node="49WvUPuolTq" resolve="Trigger" />
  </node>
  <node concept="1TIwiD" id="49WvUPuolTq">
    <property role="EcuMT" value="4790844486204874330" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="Trigger" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="49WvUPuomFd" role="1TKVEl">
      <property role="IQ2nx" value="4790844486204877517" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="49WvUPuomwe" resolve="TriggerType" />
    </node>
    <node concept="1TJgyj" id="49WvUPuonlT" role="1TKVEi">
      <property role="IQ2ns" value="4790844486204880249" />
      <property role="20kJfa" value="reply" />
      <ref role="20lvS9" node="2c2jK0UnUSj" resolve="Reply" />
    </node>
    <node concept="1TJgyj" id="70opIpleqvZ" role="1TKVEi">
      <property role="IQ2ns" value="8077319071147337727" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="target" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="70opIplegRm" resolve="Target" />
    </node>
  </node>
  <node concept="25R3W" id="49WvUPuomwe">
    <property role="3F6X1D" value="4790844486204876814" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.trigger" />
    <property role="TrG5h" value="TriggerType" />
    <node concept="25R33" id="49WvUPuomwf" role="25R1y">
      <property role="3tVfz5" value="4790844486204876815" />
      <property role="TrG5h" value="OnBoot" />
    </node>
    <node concept="25R33" id="49WvUPuomwm" role="25R1y">
      <property role="3tVfz5" value="4790844486204876822" />
      <property role="TrG5h" value="OnKeyword" />
    </node>
    <node concept="25R33" id="49WvUPuomwp" role="25R1y">
      <property role="3tVfz5" value="4790844486204876825" />
      <property role="TrG5h" value="OnSchedule" />
    </node>
  </node>
  <node concept="25R3W" id="70opIpldL4f">
    <property role="3F6X1D" value="8077319071147168015" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.target" />
    <property role="TrG5h" value="TargetType" />
    <node concept="25R33" id="70opIpldL4g" role="25R1y">
      <property role="3tVfz5" value="8077319071147168016" />
      <property role="TrG5h" value="DirectChat" />
    </node>
    <node concept="25R33" id="70opIpldL9x" role="25R1y">
      <property role="3tVfz5" value="8077319071147168353" />
      <property role="TrG5h" value="GroupChat" />
    </node>
  </node>
  <node concept="1TIwiD" id="70opIplefYT">
    <property role="EcuMT" value="8077319071147294649" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.target" />
    <property role="TrG5h" value="GroupTarget" />
    <ref role="1TJDcQ" node="70opIplegRm" resolve="Target" />
    <node concept="1TJgyi" id="70opIplek0D" role="1TKVEl">
      <property role="IQ2nx" value="8077319071147311145" />
      <property role="TrG5h" value="target" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="70opIplegRm">
    <property role="EcuMT" value="8077319071147298262" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <property role="TrG5h" value="Target" />
    <property role="R5$K7" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" />
    <node concept="1TJgyi" id="70opIplehPv" role="1TKVEl">
      <property role="IQ2nx" value="8077319071147302239" />
      <property role="TrG5h" value="type" />
      <ref role="AX2Wp" node="70opIpldL4f" resolve="TargetType" />
    </node>
  </node>
  <node concept="1TIwiD" id="70opIplekES">
    <property role="EcuMT" value="8077319071147313848" />
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.target" />
    <property role="TrG5h" value="DirectTarget" />
    <ref role="1TJDcQ" node="70opIplegRm" resolve="Target" />
  </node>
</model>

