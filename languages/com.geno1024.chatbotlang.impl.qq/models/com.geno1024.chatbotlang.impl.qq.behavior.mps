<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:226402d2-8626-43c0-bea2-c9fa701ea79e(com.geno1024.chatbotlang.impl.qq.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="4oku" ref="07274949-c3ce-4e56-ba72-75c07c0ec361/java:net.mamoe.mirai(com.geno1024.chatbotlang.impl.qq.runtime/)" />
    <import index="d5eb" ref="r:541866d3-7cc8-4cdc-a62d-2f4a10ae89d6(com.geno1024.chatbotlang.behavior)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" />
    <import index="2ti8" ref="r:d13b8abc-6a97-44ed-890d-1f2076436091(com.geno1024.chatbotlang.impl.qq.structure)" implicit="true" />
    <import index="ztls" ref="07274949-c3ce-4e56-ba72-75c07c0ec361/java:net.mamoe.mirai.contact(com.geno1024.chatbotlang.impl.qq.runtime/)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="2453008993612717257" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_StatementList" flags="ng" index="3X5gDB">
        <child id="2453008993612717258" name="statementList" index="3X5gD$" />
      </concept>
      <concept id="2453008993612559843" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCase" flags="ng" index="3X5Udd">
        <child id="2453008993612717146" name="body" index="3X5gFO" />
        <child id="2453008993612559844" name="members" index="3X5Uda" />
      </concept>
      <concept id="2453008993612559839" name="jetbrains.mps.lang.smodel.structure.EnumSwitchExpression" flags="ng" index="3X5UdL">
        <child id="2453008993612714935" name="cases" index="3X5gkp" />
        <child id="2453008993612559840" name="enumExpression" index="3X5Ude" />
        <child id="2453008993619909454" name="otherwiseBody" index="3XxORw" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="3133179214568824809" name="jetbrains.mps.lang.text.structure.NodeWrapperElement" flags="nn" index="tu5oc">
        <child id="3133179214568824810" name="node" index="tu5of" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="4zqelTg5Kti">
    <ref role="13h7C2" to="2ti8:4zqelTg5KsQ" resolve="QQAccount" />
    <node concept="13i0hz" id="4zqelTg5Ktt" role="13h7CS">
      <property role="TrG5h" value="login" />
      <ref role="13i0hy" to="d5eb:4zqelTg5KqG" resolve="login" />
      <node concept="3clFbS" id="4zqelTg5Ktw" role="3clF47">
        <node concept="3cpWs8" id="4zqelTg5LwE" role="3cqZAp">
          <node concept="3cpWsn" id="4zqelTg5LwF" role="3cpWs9">
            <property role="TrG5h" value="bot" />
            <node concept="3uibUv" id="4zqelTg5LwG" role="1tU5fm">
              <ref role="3uigEE" to="4oku:~Bot" resolve="Bot" />
            </node>
            <node concept="2OqwBi" id="4zqelTg5LKC" role="33vP2m">
              <node concept="10M0yZ" id="49WvUPtJCJ8" role="2Oq$k0">
                <ref role="3cqZAo" to="4oku:~BotFactory.INSTANCE" resolve="INSTANCE" />
                <ref role="1PxDUh" to="4oku:~BotFactory" resolve="BotFactory" />
              </node>
              <node concept="liA8E" id="4zqelTg5LWk" role="2OqNvi">
                <ref role="37wK5l" to="4oku:~BotFactory.newBot(long,java.lang.String)" resolve="newBot" />
                <node concept="2YIFZM" id="4zqelTg6fFJ" role="37wK5m">
                  <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                  <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                  <node concept="37vLTw" id="4zqelTg6fL9" role="37wK5m">
                    <ref role="3cqZAo" node="4zqelTg5KtH" resolve="username" />
                  </node>
                </node>
                <node concept="37vLTw" id="4zqelTg6fQS" role="37wK5m">
                  <ref role="3cqZAo" node="4zqelTg5KtJ" resolve="password" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70opIpknOn_" role="3cqZAp">
          <node concept="2OqwBi" id="70opIpknOEa" role="3clFbG">
            <node concept="37vLTw" id="70opIpknOnz" role="2Oq$k0">
              <ref role="3cqZAo" node="4zqelTg5LwF" resolve="bot" />
            </node>
            <node concept="liA8E" id="70opIpknPet" role="2OqNvi">
              <ref role="37wK5l" to="4oku:~Bot.login()" resolve="login" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4zqelTg5Qe7" role="3cqZAp">
          <node concept="37vLTw" id="4zqelTg5QfC" role="3cqZAk">
            <ref role="3cqZAo" node="4zqelTg5LwF" resolve="bot" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4zqelTg5KtH" role="3clF46">
        <property role="TrG5h" value="username" />
        <node concept="17QB3L" id="4zqelTg5KtI" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4zqelTg5KtJ" role="3clF46">
        <property role="TrG5h" value="password" />
        <node concept="17QB3L" id="4zqelTg5KtK" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="4zqelTg5KtL" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="4zqelTg5KtM" role="1B3o_S" />
    </node>
    <node concept="13i0hz" id="70opIpjPawk" role="13h7CS">
      <property role="TrG5h" value="run" />
      <ref role="13i0hy" to="d5eb:70opIpjP9KT" resolve="run" />
      <node concept="3clFbS" id="70opIpjPawn" role="3clF47">
        <node concept="3clFbF" id="70opIpjPbSf" role="3cqZAp">
          <node concept="2OqwBi" id="70opIpjPcy8" role="3clFbG">
            <node concept="0kSF2" id="70opIpjPbY8" role="2Oq$k0">
              <node concept="3uibUv" id="70opIpjPbYa" role="0kSFW">
                <ref role="3uigEE" to="4oku:~Bot" resolve="Bot" />
              </node>
              <node concept="37vLTw" id="70opIpjPbSe" role="0kSFX">
                <ref role="3cqZAo" node="70opIpjPbsk" resolve="object" />
              </node>
            </node>
            <node concept="liA8E" id="70opIpjPcY4" role="2OqNvi">
              <ref role="37wK5l" to="4oku:~Bot.join()" resolve="join" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="70opIpjPdff" role="3cqZAp">
          <node concept="37vLTw" id="70opIpjPdmL" role="3cqZAk">
            <ref role="3cqZAo" node="70opIpjPbsk" resolve="object" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="70opIpjPaF7" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm1VV" id="70opIpjPaF8" role="1B3o_S" />
      <node concept="37vLTG" id="70opIpjPbsk" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIpjPbsj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4zqelTg5Ktj" role="13h7CW">
      <node concept="3clFbS" id="4zqelTg5Ktk" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="4zqelTgm9QK">
    <ref role="13h7C2" to="2ti8:2c2jK0UnCVM" resolve="QQ" />
    <node concept="13i0hz" id="4zqelTgqEQh" role="13h7CS">
      <property role="TrG5h" value="type" />
      <node concept="3Tm1VV" id="4zqelTgqEQi" role="1B3o_S" />
      <node concept="3uibUv" id="4zqelTgqEQW" role="3clF45">
        <ref role="3uigEE" to="4oku:~Bot" resolve="Bot" />
      </node>
      <node concept="3clFbS" id="4zqelTgqEQk" role="3clF47">
        <node concept="3cpWs6" id="4zqelTgqESV" role="3cqZAp">
          <node concept="10Nm6u" id="4zqelTgqETN" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="4zqelTgm9QL" role="13h7CW">
      <node concept="3clFbS" id="4zqelTgm9QM" role="2VODD2" />
    </node>
  </node>
  <node concept="13h7C7" id="70opIpldyM0">
    <ref role="13h7C2" to="2ti8:70opIpldxt0" resolve="QQOnBoot" />
    <node concept="13i0hz" id="70opIplevgX" role="13h7CS">
      <property role="TrG5h" value="onTrigger" />
      <ref role="13i0hy" to="d5eb:70opIplesc8" resolve="onTrigger" />
      <node concept="3clFbS" id="70opIplevh0" role="3clF47">
        <node concept="3cpWs8" id="70opIplevQQ" role="3cqZAp">
          <node concept="3cpWsn" id="70opIplevQR" role="3cpWs9">
            <property role="TrG5h" value="bot" />
            <node concept="3uibUv" id="70opIplevQS" role="1tU5fm">
              <ref role="3uigEE" to="4oku:~Bot" resolve="Bot" />
            </node>
            <node concept="0kSF2" id="70opIplew2B" role="33vP2m">
              <node concept="3uibUv" id="70opIplew2E" role="0kSFW">
                <ref role="3uigEE" to="4oku:~Bot" resolve="Bot" />
              </node>
              <node concept="37vLTw" id="70opIplevXE" role="0kSFX">
                <ref role="3cqZAo" node="70opIplev$D" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="70opIplewbt" role="3cqZAp">
          <node concept="3X5UdL" id="70opIplewbp" role="3clFbG">
            <node concept="2OqwBi" id="70opIplewo_" role="3X5Ude">
              <node concept="37vLTw" id="70opIplewgN" role="2Oq$k0">
                <ref role="3cqZAo" node="70opIplev$F" resolve="target" />
              </node>
              <node concept="3TrcHB" id="70opIplewDs" role="2OqNvi">
                <ref role="3TsBF5" to="7xvd:70opIplehPv" resolve="type" />
              </node>
            </node>
            <node concept="3X5Udd" id="70opIplewLR" role="3X5gkp">
              <node concept="21nZrQ" id="70opIplewLQ" role="3X5Uda">
                <ref role="21nZrZ" to="7xvd:70opIpldL4g" resolve="DirectChat" />
              </node>
              <node concept="3X5gDB" id="70opIplewQN" role="3X5gFO">
                <node concept="3clFbS" id="70opIplewQP" role="3X5gD$">
                  <node concept="3clFbF" id="70opIplexLa" role="3cqZAp">
                    <node concept="3X5UdL" id="70opIplexL8" role="3clFbG">
                      <node concept="2OqwBi" id="70opIpley14" role="3X5Ude">
                        <node concept="37vLTw" id="70opIplexR_" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplev$H" resolve="reply" />
                        </node>
                        <node concept="3TrcHB" id="70opIpleyeK" role="2OqNvi">
                          <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIpleyv5" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIpleyv4" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                        </node>
                        <node concept="3X5gDB" id="70opIpleyCF" role="3X5gFO">
                          <node concept="3clFbS" id="70opIpleyCH" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIpleyGc" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIpleyGd" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:70opIpled_P" resolve="StaticImage" />
                        </node>
                        <node concept="3X5gDB" id="70opIpleyXw" role="3X5gFO">
                          <node concept="3clFbS" id="70opIpleyXy" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIplez11" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIplez12" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAwareText" />
                        </node>
                        <node concept="3X5gDB" id="70opIplezfv" role="3X5gFO">
                          <node concept="3clFbS" id="70opIplezfx" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIplezj0" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIplezj1" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:70opIplee7j" resolve="InputAwareImage" />
                        </node>
                        <node concept="3X5gDB" id="70opIplez_R" role="3X5gFO">
                          <node concept="3clFbS" id="70opIplez_T" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5gDB" id="70opIplezR4" role="3XxORw">
                        <node concept="3clFbS" id="70opIplezR6" role="3X5gD$" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3X5Udd" id="70opIplex1Q" role="3X5gkp">
              <node concept="21nZrQ" id="70opIplex1R" role="3X5Uda">
                <ref role="21nZrZ" to="7xvd:70opIpldL9x" resolve="GroupChat" />
              </node>
              <node concept="3X5gDB" id="70opIplexgo" role="3X5gFO">
                <node concept="3clFbS" id="70opIplexgq" role="3X5gD$">
                  <node concept="3clFbF" id="70opIple$BV" role="3cqZAp">
                    <node concept="3X5UdL" id="70opIple$BW" role="3clFbG">
                      <node concept="2OqwBi" id="70opIple$BX" role="3X5Ude">
                        <node concept="37vLTw" id="70opIple$BY" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplev$H" resolve="reply" />
                        </node>
                        <node concept="3TrcHB" id="70opIple$BZ" role="2OqNvi">
                          <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIple$C0" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIple$C1" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                        </node>
                        <node concept="3X5gDB" id="70opIple$C2" role="3X5gFO">
                          <node concept="3clFbS" id="70opIple$C3" role="3X5gD$">
                            <node concept="3clFbF" id="70opIpleHnY" role="3cqZAp">
                              <node concept="2OqwBi" id="70opIpleL24" role="3clFbG">
                                <node concept="2OqwBi" id="70opIpleHAF" role="2Oq$k0">
                                  <node concept="37vLTw" id="70opIpleHnX" role="2Oq$k0">
                                    <ref role="3cqZAo" node="70opIplevQR" resolve="bot" />
                                  </node>
                                  <node concept="liA8E" id="70opIpleHZv" role="2OqNvi">
                                    <ref role="37wK5l" to="4oku:~Bot.getGroup(long)" resolve="getGroup" />
                                    <node concept="2YIFZM" id="70opIpleKxx" role="37wK5m">
                                      <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                      <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                      <node concept="2OqwBi" id="70opIpleJoQ" role="37wK5m">
                                        <node concept="1PxgMI" id="70opIpleJ57" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="chp4Y" id="70opIpleJd3" role="3oSUPX">
                                            <ref role="cht4Q" to="7xvd:70opIplefYT" resolve="GroupTarget" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpleIb5" role="1m5AlR">
                                            <ref role="3cqZAo" node="70opIplev$F" resolve="target" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="70opIpleJNF" role="2OqNvi">
                                          <ref role="3TsBF5" to="7xvd:70opIplek0D" resolve="target" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpleLQE" role="2OqNvi">
                                  <ref role="37wK5l" to="ztls:~Group.sendMessage(java.lang.String)" resolve="sendMessage" />
                                  <node concept="2OqwBi" id="70opIpleNAA" role="37wK5m">
                                    <node concept="1PxgMI" id="70opIpleMYJ" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="70opIpleNkH" role="3oSUPX">
                                        <ref role="cht4Q" to="7xvd:2c2jK0Uo2Cr" resolve="StaticTextReply" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpleLZC" role="1m5AlR">
                                        <ref role="3cqZAo" node="70opIplev$H" resolve="reply" />
                                      </node>
                                    </node>
                                    <node concept="3TrcHB" id="70opIpleNSL" role="2OqNvi">
                                      <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cs" resolve="content" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIple$C4" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIple$C5" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:70opIpled_P" resolve="StaticImage" />
                        </node>
                        <node concept="3X5gDB" id="70opIple$C6" role="3X5gFO">
                          <node concept="3clFbS" id="70opIple$C7" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIple$C8" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIple$C9" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAwareText" />
                        </node>
                        <node concept="3X5gDB" id="70opIple$Ca" role="3X5gFO">
                          <node concept="3clFbS" id="70opIple$Cb" role="3X5gD$">
                            <node concept="3SKdUt" id="70opIplfayB" role="3cqZAp">
                              <node concept="1PaTwC" id="70opIplfayC" role="1aUNEU">
                                <node concept="tu5oc" id="70opIplfaLO" role="1PaTwD">
                                  <node concept="2OqwBi" id="70opIplf0lI" role="tu5of">
                                    <node concept="1PxgMI" id="70opIpleZDt" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="70opIplf02H" role="3oSUPX">
                                        <ref role="cht4Q" to="7xvd:2c2jK0UozfT" resolve="InputAwareTextReply" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpleZ1B" role="1m5AlR">
                                        <ref role="3cqZAo" node="70opIplev$H" resolve="reply" />
                                      </node>
                                    </node>
                                    <node concept="3TrEf2" id="70opIplf0Fy" role="2OqNvi">
                                      <ref role="3Tt5mk" to="7xvd:2c2jK0UozfU" resolve="function" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="70opIplG1nx" role="3cqZAp">
                              <node concept="3cpWsn" id="70opIplG1ny" role="3cpWs9">
                                <property role="TrG5h" value="replyFunction" />
                                <node concept="1ajhzC" id="70opIplG2wH" role="1tU5fm">
                                  <node concept="17QB3L" id="70opIplG3ln" role="1ajl9A" />
                                  <node concept="17QB3L" id="70opIplJ2$y" role="1ajw0F" />
                                  <node concept="17QB3L" id="70opIplG2UK" role="1ajw0F" />
                                  <node concept="17QB3L" id="70opIplG31N" role="1ajw0F" />
                                  <node concept="17QB3L" id="70opIplG34q" role="1ajw0F" />
                                </node>
                                <node concept="1bVj0M" id="70opIplf9ku" role="33vP2m">
                                  <node concept="3clFbS" id="70opIplf9kv" role="1bW5cS">
                                    <node concept="9aQIb" id="70opIplfmAC" role="3cqZAp">
                                      <node concept="3clFbS" id="70opIplfmAD" role="9aQI4">
                                        <node concept="3cpWs6" id="70opIplfmJ6" role="3cqZAp">
                                          <node concept="Xl_RD" id="70opIplfmQ0" role="3cqZAk">
                                            <property role="Xl_RC" value="" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="70opIplfbeN" role="1bW2Oz">
                                    <property role="TrG5h" value="message" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="70opIplfbeM" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="70opIplfbvI" role="1bW2Oz">
                                    <property role="TrG5h" value="senderId" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="70opIplffpZ" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="70opIplffI6" role="1bW2Oz">
                                    <property role="TrG5h" value="fromGroup" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="70opIplffON" role="1tU5fm" />
                                  </node>
                                  <node concept="37vLTG" id="70opIplfg5i" role="1bW2Oz">
                                    <property role="TrG5h" value="senderNick" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="70opIplfgfs" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="70opIpleTTm" role="3cqZAp">
                              <node concept="2OqwBi" id="70opIpleX8H" role="3clFbG">
                                <node concept="2OqwBi" id="70opIpleU8t" role="2Oq$k0">
                                  <node concept="37vLTw" id="70opIpleTTl" role="2Oq$k0">
                                    <ref role="3cqZAo" node="70opIplevQR" resolve="bot" />
                                  </node>
                                  <node concept="liA8E" id="70opIpleUJ$" role="2OqNvi">
                                    <ref role="37wK5l" to="4oku:~Bot.getGroup(long)" resolve="getGroup" />
                                    <node concept="2YIFZM" id="70opIpleV$6" role="37wK5m">
                                      <ref role="37wK5l" to="wyt6:~Long.parseLong(java.lang.String)" resolve="parseLong" />
                                      <ref role="1Pybhc" to="wyt6:~Long" resolve="Long" />
                                      <node concept="2OqwBi" id="70opIpleWnK" role="37wK5m">
                                        <node concept="1PxgMI" id="70opIpleW07" role="2Oq$k0">
                                          <property role="1BlNFB" value="true" />
                                          <node concept="chp4Y" id="70opIpleW9N" role="3oSUPX">
                                            <ref role="cht4Q" to="7xvd:70opIplefYT" resolve="GroupTarget" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpleVD7" role="1m5AlR">
                                            <ref role="3cqZAo" node="70opIplev$F" resolve="target" />
                                          </node>
                                        </node>
                                        <node concept="3TrcHB" id="70opIpleWI4" role="2OqNvi">
                                          <ref role="3TsBF5" to="7xvd:70opIplek0D" resolve="target" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpleYFo" role="2OqNvi">
                                  <ref role="37wK5l" to="ztls:~Group.sendMessage(java.lang.String)" resolve="sendMessage" />
                                  <node concept="2Sg_IR" id="70opIplf9kt" role="37wK5m">
                                    <node concept="10Nm6u" id="70opIplfhKd" role="2SgHGx" />
                                    <node concept="10Nm6u" id="70opIplfhZ2" role="2SgHGx" />
                                    <node concept="2OqwBi" id="70opIplfkHU" role="2SgHGx">
                                      <node concept="1PxgMI" id="70opIplfkkz" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIplfkwZ" role="3oSUPX">
                                          <ref role="cht4Q" to="7xvd:70opIplefYT" resolve="GroupTarget" />
                                        </node>
                                        <node concept="37vLTw" id="70opIplfjpk" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIplev$F" resolve="target" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="70opIplflll" role="2OqNvi">
                                        <ref role="3TsBF5" to="7xvd:70opIplek0D" resolve="target" />
                                      </node>
                                    </node>
                                    <node concept="10Nm6u" id="70opIplfiu4" role="2SgHGx" />
                                    <node concept="37vLTw" id="70opIplG3yM" role="2SgG2M">
                                      <ref role="3cqZAo" node="70opIplG1ny" resolve="reply" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3X5Udd" id="70opIple$Cc" role="3X5gkp">
                        <node concept="21nZrQ" id="70opIple$Cd" role="3X5Uda">
                          <ref role="21nZrZ" to="7xvd:70opIplee7j" resolve="InputAwareImage" />
                        </node>
                        <node concept="3X5gDB" id="70opIple$Ce" role="3X5gFO">
                          <node concept="3clFbS" id="70opIple$Cf" role="3X5gD$" />
                        </node>
                      </node>
                      <node concept="3X5gDB" id="70opIple$Cg" role="3XxORw">
                        <node concept="3clFbS" id="70opIple$Ch" role="3X5gD$" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3X5gDB" id="70opIplexwS" role="3XxORw">
              <node concept="3clFbS" id="70opIplexwU" role="3X5gD$" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="70opIplev$D" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="70opIplev$E" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplev$F" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="70opIplev$G" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:70opIplegRm" resolve="Target" />
        </node>
      </node>
      <node concept="37vLTG" id="70opIplev$H" role="3clF46">
        <property role="TrG5h" value="reply" />
        <node concept="3Tqbb2" id="70opIplev$I" role="1tU5fm">
          <ref role="ehGHo" to="7xvd:2c2jK0UnUSj" resolve="Reply" />
        </node>
      </node>
      <node concept="3cqZAl" id="70opIpmAynY" role="3clF45" />
      <node concept="3Tm1VV" id="70opIplev$K" role="1B3o_S" />
    </node>
    <node concept="13hLZK" id="70opIpldyM1" role="13h7CW">
      <node concept="3clFbS" id="70opIpldyM2" role="2VODD2" />
    </node>
  </node>
</model>

