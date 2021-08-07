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
    <import index="2ti8" ref="r:d13b8abc-6a97-44ed-890d-1f2076436091(com.geno1024.chatbotlang.impl.qq.structure)" implicit="true" />
    <import index="d5eb" ref="r:541866d3-7cc8-4cdc-a62d-2f4a10ae89d6(com.geno1024.chatbotlang.behavior)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
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
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
</model>

