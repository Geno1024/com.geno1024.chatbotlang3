<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:541866d3-7cc8-4cdc-a62d-2f4a10ae89d6(com.geno1024.chatbotlang.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" implicit="true" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz">
        <reference id="6677504323281689839" name="conceptDeclaraton" index="3bZ5Sy" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
    </language>
  </registry>
  <node concept="13h7C7" id="2c2jK0Uo5HV">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply.inputaware" />
    <ref role="13h7C2" to="7xvd:2c2jK0Uo5Ax" resolve="InputAwareTextReplyFunction" />
    <node concept="13i0hz" id="2c2jK0Uo8KK" role="13h7CS">
      <property role="TrG5h" value="getExpectedReturnType" />
      <ref role="13i0hy" to="tpek:hEwIGRD" resolve="getExpectedReturnType" />
      <node concept="3clFbS" id="2c2jK0Uo8KN" role="3clF47">
        <node concept="3cpWs6" id="2c2jK0Uo8Lc" role="3cqZAp">
          <node concept="2c44tf" id="2c2jK0Uo8L$" role="3cqZAk">
            <node concept="17QB3L" id="2c2jK0Uo8M6" role="2c44tc" />
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="2c2jK0Uo8L0" role="3clF45" />
      <node concept="3Tm1VV" id="2c2jK0Uo8L1" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="2c2jK0Uo8M_" role="13h7CS">
      <property role="TrG5h" value="getParameterConcepts" />
      <ref role="13i0hy" to="tpek:2xELmDxyi2v" resolve="getParameterConcepts" />
      <node concept="3clFbS" id="2c2jK0Uo8MC" role="3clF47">
        <node concept="3cpWs6" id="2c2jK0Uobgb" role="3cqZAp">
          <node concept="2ShNRf" id="2c2jK0UobgH" role="3cqZAk">
            <node concept="Tc6Ow" id="2c2jK0Uojfn" role="2ShVmc">
              <node concept="3bZ5Sz" id="2c2jK0Uojxn" role="HW$YZ">
                <ref role="3bZ5Sy" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
              </node>
              <node concept="35c_gC" id="2c2jK0UohTs" role="HW$Y0">
                <ref role="35c_gD" to="7xvd:2c2jK0UoaFU" resolve="Message" />
              </node>
              <node concept="35c_gC" id="2c2jK0UohTt" role="HW$Y0">
                <ref role="35c_gD" to="7xvd:2c2jK0UoaU1" resolve="Sender" />
              </node>
              <node concept="35c_gC" id="2c2jK0UohTu" role="HW$Y0">
                <ref role="35c_gD" to="7xvd:2c2jK0Uob41" resolve="From" />
              </node>
              <node concept="35c_gC" id="2c2jK0UohTv" role="HW$Y0">
                <ref role="35c_gD" to="7xvd:2c2jK0Uob97" resolve="Nickname" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="2c2jK0Uo8MW" role="3clF45">
        <node concept="3bZ5Sz" id="2c2jK0Uo8MX" role="_ZDj9">
          <ref role="3bZ5Sy" to="tpee:g76ryKb" resolve="ConceptFunctionParameter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2c2jK0Uo8MY" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="2c2jK0Uo5HW" role="13h7CW">
      <node concept="3clFbS" id="2c2jK0Uo5HX" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="70opIpldzbS">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <ref role="13h7C2" to="7xvd:49WvUPuolTq" resolve="Trigger" />
    <node concept="13hLZK" id="70opIpldzbT" role="13h7CW">
      <node concept="3clFbS" id="70opIpldzbU" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="70opIpldziY" role="13h7CS">
      <property role="TrG5h" value="onTrigger" />
      <property role="13i0it" value="true" />
      <property role="13i0iv" value="true" />
      <node concept="3Tm1VV" id="70opIpldziZ" role="1B3o_S" />
      <node concept="3cqZAl" id="70opIpmAx9Z" role="3clF45" />
      <node concept="3clFbS" id="70opIpldzj1" role="3clF47" />
      <node concept="37vLTG" id="70opIpld_hO" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIpld_hN" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIpld_nW" role="3clF46">
        <property role="TrG5h" value="triggerType" />
        <node concept="2ZThk1" id="70opIpld_EV" role="1tU5fm">
          <ref role="2ZWj4r" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIpldECO" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="70opIplepqE" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:70opIplegRm" resolve="Target" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIpldArB" role="3clF46">
        <property role="TrG5h" value="reply" />
        <node concept="3Tqbb2" id="70opIpldBuN" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:2c2jK0UnUSj" resolve="Reply" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="70opIpldM0_">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.trigger" />
    <ref role="13h7C2" to="7xvd:49WvUPuolow" resolve="OnBoot" />
    <node concept="13hLZK" id="70opIpldM0A" role="13h7CW">
      <node concept="3clFbS" id="70opIpldM0B" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="70opIplerTK" role="13h7CS">
      <property role="TrG5h" value="onTrigger" />
      <ref role="13i0hy" node="70opIpldziY" resolve="onTrigger" />
      <node concept="3Tm1VV" id="70opIplerTL" role="1B3o_S" />
      <node concept="3clFbS" id="70opIplerTW" role="3clF47">
        <node concept="3clFbF" id="70opIpmAxzU" role="3cqZAp">
          <node concept="BsUDl" id="70opIpletvi" role="3clFbG">
            <ref role="37wK5l" node="70opIplesc8" resolve="onTrigger" />
            <node concept="37vLTw" id="70opIpletzs" role="37wK5m">
              <ref role="3cqZAo" node="70opIplerTX" resolve="state" />
            </node>
            <node concept="37vLTw" id="70opIpletB5" role="37wK5m">
              <ref role="3cqZAo" node="70opIplerU1" resolve="target" />
            </node>
            <node concept="37vLTw" id="70opIpletDS" role="37wK5m">
              <ref role="3cqZAo" node="70opIplerU3" resolve="reply" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="70opIplerTX" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIplerTY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplerTZ" role="3clF46">
        <property role="TrG5h" value="triggerType" />
        <node concept="2ZThk1" id="70opIplerU0" role="1tU5fm">
          <ref role="2ZWj4r" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplerU1" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="70opIplerU2" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:70opIplegRm" resolve="Target" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplerU3" role="3clF46">
        <property role="TrG5h" value="reply" />
        <node concept="3Tqbb2" id="70opIplerU4" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:2c2jK0UnUSj" resolve="Reply" />
        </node>
      </node>
      <node concept="3cqZAl" id="70opIpmAxs4" role="3clF45" />
    </node>
    <node concept="13i0hz" id="70opIplesc8" role="13h7CS">
      <property role="TrG5h" value="onTrigger" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="70opIplesc9" role="1B3o_S" />
      <node concept="3cqZAl" id="70opIpmAxJ_" role="3clF45" />
      <node concept="3clFbS" id="70opIplescb" role="3clF47" />
      <node concept="37vLTG" id="70opIplesyA" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIplesy_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIples_g" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="70opIplesLk" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:70opIplegRm" resolve="Target" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplesUd" role="3clF46">
        <property role="TrG5h" value="reply" />
        <node concept="3Tqbb2" id="70opIplet3t" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:2c2jK0UnUSj" resolve="Reply" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="70opIpoL5hw">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <ref role="13h7C2" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
    <node concept="13i0hz" id="4zqelTg5KqG" role="13h7CS">
      <property role="TrG5h" value="login" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="4zqelTg5KqH" role="1B3o_S" />
      <node concept="3uibUv" id="4zqelTg5KqW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="4zqelTg5KqJ" role="3clF47">
        <node concept="3clFbF" id="70opIppaQ_F" role="3cqZAp">
          <node concept="10Nm6u" id="70opIppaQ_E" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="4zqelTg5Krg" role="3clF46">
        <property role="TrG5h" value="username" />
        <node concept="17QB3L" id="4zqelTg5Krf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4zqelTg5Kru" role="3clF46">
        <property role="TrG5h" value="password" />
        <node concept="17QB3L" id="4zqelTg5Kr$" role="1tU5fm" />
      </node>
    </node>
    <node concept="13i0hz" id="70opIpjP9KT" role="13h7CS">
      <property role="TrG5h" value="run" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="70opIpjP9KU" role="1B3o_S" />
      <node concept="3uibUv" id="70opIpjP9Pl" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3clFbS" id="70opIpjP9KW" role="3clF47">
        <node concept="3clFbF" id="70opIppaQYW" role="3cqZAp">
          <node concept="10Nm6u" id="70opIppaQYV" role="3clFbG" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIpjPbar" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIpjPbaq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="70opIpoL5hx" role="13h7CW">
      <node concept="3clFbS" id="70opIpoL5hy" role="2VODD2" />
    </node>
  </node>
</model>

