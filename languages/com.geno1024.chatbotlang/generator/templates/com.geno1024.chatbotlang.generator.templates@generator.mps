<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1fee7be5-c2df-4976-a10d-a6a38b4ee1a1(com.geno1024.chatbotlang.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="tpek" ref="r:00000000-0000-4000-0000-011c895902c0(jetbrains.mps.baseLanguage.behavior)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="1i04" ref="r:3270011d-8b2d-4938-8dff-d256a759e017(jetbrains.mps.lang.behavior.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118786554307" name="jetbrains.mps.lang.generator.structure.LoopMacro" flags="ln" index="1WS0z7">
        <child id="1167952069335" name="sourceNodesQuery" index="3Jn$fo" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1171500988903" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenOperation" flags="nn" index="32TBzR" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
    </language>
  </registry>
  <node concept="bUwia" id="2c2jK0Un_OB">
    <property role="TrG5h" value="main" />
    <node concept="3lhOvk" id="4zqelTg5$CR" role="3lj3bC">
      <ref role="30HIoZ" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
      <ref role="3lhOvi" node="4zqelTg5$CT" resolve="map_RobotConfig" />
    </node>
  </node>
  <node concept="312cEu" id="4zqelTg5$CT">
    <property role="TrG5h" value="map_RobotConfig" />
    <node concept="Wx3nA" id="4zqelTg5_6l" role="jymVt">
      <property role="TrG5h" value="NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4zqelTg5_0r" role="1B3o_S" />
      <node concept="17QB3L" id="4zqelTg5_4S" role="1tU5fm" />
      <node concept="Xl_RD" id="4zqelTg5_8d" role="33vP2m">
        <property role="Xl_RC" value="RobotConfig" />
        <node concept="17Uvod" id="4zqelTg5_cR" role="lGtFl">
          <property role="2qtEX9" value="value" />
          <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
          <node concept="3zFVjK" id="4zqelTg5_cU" role="3zH0cK">
            <node concept="3clFbS" id="4zqelTg5_cV" role="2VODD2">
              <node concept="3clFbF" id="4zqelTg5_d1" role="3cqZAp">
                <node concept="2OqwBi" id="4zqelTg5_cW" role="3clFbG">
                  <node concept="3TrcHB" id="4zqelTg5_cZ" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                  <node concept="30H73N" id="4zqelTg5_d0" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zqelTg5_md" role="jymVt" />
    <node concept="312cEu" id="4zqelTg5_WR" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="IM" />
      <node concept="3clFbW" id="4zqelTg5Ava" role="jymVt">
        <node concept="3cqZAl" id="4zqelTg5Avb" role="3clF45" />
        <node concept="3clFbS" id="4zqelTg5Avd" role="3clF47" />
        <node concept="3Tm1VV" id="4zqelTg5Apc" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="4zqelTg5AFj" role="jymVt" />
      <node concept="3clFb_" id="4zqelTg6l7D" role="jymVt">
        <property role="TrG5h" value="login" />
        <node concept="3clFbS" id="4zqelTg6l7G" role="3clF47">
          <node concept="3cpWs6" id="4zqelTg6ly2" role="3cqZAp">
            <node concept="2ShNRf" id="4zqelTg6lCy" role="3cqZAk">
              <node concept="1pGfFk" id="4zqelTg6mQE" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              </node>
            </node>
            <node concept="2b32R4" id="4zqelTg6naH" role="lGtFl">
              <node concept="3JmXsc" id="4zqelTg6naK" role="2P8S$">
                <node concept="3clFbS" id="4zqelTg6naL" role="2VODD2">
                  <node concept="3cpWs8" id="4zqelTg8X$F" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTg8X$B" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="4zqelTg8Y2s" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="4zqelTg91mf" role="33vP2m">
                        <node concept="2OqwBi" id="4zqelTg90hM" role="2Oq$k0">
                          <node concept="30H73N" id="4zqelTg8ZGg" role="2Oq$k0" />
                          <node concept="2yIwOk" id="4zqelTg90L7" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="4zqelTg92h2" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgaGDr" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgaGDs" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="4zqelTgaGDt" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="4zqelTgaJQf" role="33vP2m">
                        <node concept="37vLTw" id="4zqelTgaJ8b" role="2Oq$k0">
                          <ref role="3cqZAo" node="4zqelTg8X$B" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="4zqelTgaKq_" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="4zqelTgaUZO" role="3cqZAp">
                    <node concept="3clFbS" id="4zqelTgaUZQ" role="3clFbx">
                      <node concept="3cpWs6" id="4zqelTgaXb1" role="3cqZAp">
                        <node concept="10Nm6u" id="4zqelTgaYb9" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="4zqelTgaWdA" role="3clFbw">
                      <node concept="10Nm6u" id="4zqelTgaWHF" role="3uHU7w" />
                      <node concept="37vLTw" id="4zqelTgaVDy" role="3uHU7B">
                        <ref role="3cqZAo" node="4zqelTgaGDs" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTg9ddG" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTg9ddH" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="2OqwBi" id="4zqelTg9gHR" role="33vP2m">
                        <node concept="37vLTw" id="4zqelTgaLxs" role="2Oq$k0">
                          <ref role="3cqZAo" node="4zqelTgaGDs" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="4zqelTg9wOC" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="4zqelTg9xFe" role="37wK5m">
                            <node concept="3clFbS" id="4zqelTg9xFf" role="1bW5cS">
                              <node concept="3clFbF" id="4zqelTg9Dln" role="3cqZAp">
                                <node concept="2OqwBi" id="4zqelTg9Guw" role="3clFbG">
                                  <node concept="2OqwBi" id="4zqelTg9F9o" role="2Oq$k0">
                                    <node concept="2OqwBi" id="4zqelTg9DWY" role="2Oq$k0">
                                      <node concept="37vLTw" id="4zqelTg9Dll" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4zqelTg9yw3" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="4zqelTg9Ey6" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4zqelTg9FC0" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4zqelTg9Wol" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="4zqelTg9WKZ" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="4zqelTg9yw3" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="4zqelTg9yw2" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="4zqelTgaeUL" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="4zqelTgbSLj" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgaqee" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgaqef" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="4zqelTgaqeg" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="4zqelTgavA0" role="33vP2m">
                        <node concept="2OqwBi" id="4zqelTgatZq" role="2Oq$k0">
                          <node concept="2OqwBi" id="4zqelTgasfJ" role="2Oq$k0">
                            <node concept="37vLTw" id="4zqelTgarqQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="4zqelTg9ddH" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="4zqelTgatbU" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4zqelTgauXy" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4zqelTgawy1" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgba92" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgba93" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="4zqelTgdJ_I" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="4zqelTgdKtZ" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4zqelTgbl8t" role="33vP2m">
                        <node concept="2YIFZM" id="4zqelTgbgqd" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="4zqelTgbj1z" role="37wK5m">
                            <node concept="2OqwBi" id="4zqelTgbhAr" role="2Oq$k0">
                              <node concept="37vLTw" id="4zqelTgbh2n" role="2Oq$k0">
                                <ref role="3cqZAo" node="4zqelTgaqef" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="4zqelTgbil7" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4zqelTgbjIT" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="4zqelTgbkgc" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="4zqelTgbmM0" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="4zqelTgbodt" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="4zqelTgbpPD" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgdM4Z" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgdM50" role="3cpWs9">
                      <property role="TrG5h" value="accountBehavior" />
                      <node concept="3uibUv" id="4zqelTgdM51" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="4zqelTgejrV" role="33vP2m">
                        <node concept="2ShNRf" id="4zqelTgdTWK" role="2Oq$k0">
                          <node concept="2Jqq0_" id="4zqelTgfig$" role="2ShVmc">
                            <node concept="3uibUv" id="4zqelTgfiY5" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="4zqelTgfjWB" role="I$8f6">
                              <ref role="3cqZAo" node="4zqelTgba93" resolve="behaviors" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4zqelTgibk9" role="2OqNvi">
                          <node concept="1bVj0M" id="4zqelTgibkb" role="23t8la">
                            <node concept="3clFbS" id="4zqelTgibkc" role="1bW5cS">
                              <node concept="3clFbF" id="4zqelTgibkd" role="3cqZAp">
                                <node concept="2OqwBi" id="4zqelTgibke" role="3clFbG">
                                  <node concept="2OqwBi" id="4zqelTgibkf" role="2Oq$k0">
                                    <node concept="0kSF2" id="4zqelTgibkg" role="2Oq$k0">
                                      <node concept="3uibUv" id="4zqelTgibkh" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="4zqelTgibki" role="0kSFX">
                                        <ref role="3cqZAo" node="4zqelTgibkm" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4zqelTgibkj" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4zqelTgibkk" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                                    <node concept="Xl_RD" id="4zqelTgibkl" role="37wK5m">
                                      <property role="Xl_RC" value="Account" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4zqelTgibkm" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4zqelTgibkn" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgfxfE" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgfxfF" role="3cpWs9">
                      <property role="TrG5h" value="accountFunctions" />
                      <node concept="3uibUv" id="4zqelTgfRLn" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="4zqelTgfSwo" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4zqelTgfXnx" role="33vP2m">
                        <node concept="2YIFZM" id="4zqelTgfUj7" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="4zqelTgfM8e" role="37wK5m">
                            <node concept="2OqwBi" id="4zqelTgfBPe" role="2Oq$k0">
                              <node concept="37vLTw" id="4zqelTgfAHC" role="2Oq$k0">
                                <ref role="3cqZAo" node="4zqelTgdM50" resolve="accountBehavior" />
                              </node>
                              <node concept="liA8E" id="4zqelTgfCEY" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="4zqelTgfNvO" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="4zqelTgfWhj" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="4zqelTgg059" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="4zqelTgg2_G" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="4zqelTgg52l" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="4zqelTgj56z" role="3cqZAp">
                    <node concept="3cpWsn" id="4zqelTgj56$" role="3cpWs9">
                      <property role="TrG5h" value="loginFunction" />
                      <node concept="3uibUv" id="4zqelTgj56_" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="4zqelTgjeUx" role="33vP2m">
                        <node concept="2ShNRf" id="4zqelTgj7xM" role="2Oq$k0">
                          <node concept="2Jqq0_" id="4zqelTgj9bh" role="2ShVmc">
                            <node concept="3uibUv" id="4zqelTgjavn" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="4zqelTgjcCf" role="I$8f6">
                              <ref role="3cqZAo" node="4zqelTgfxfF" resolve="accountFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="4zqelTgjgYL" role="2OqNvi">
                          <node concept="1bVj0M" id="4zqelTgjgYN" role="23t8la">
                            <node concept="3clFbS" id="4zqelTgjgYO" role="1bW5cS">
                              <node concept="3clFbF" id="4zqelTgjir8" role="3cqZAp">
                                <node concept="2OqwBi" id="4zqelTgjkP7" role="3clFbG">
                                  <node concept="Xl_RD" id="4zqelTgjir7" role="2Oq$k0">
                                    <property role="Xl_RC" value="login" />
                                  </node>
                                  <node concept="liA8E" id="4zqelTgjmFk" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="4zqelTglcZX" role="37wK5m">
                                      <node concept="0kSF2" id="4zqelTglcZY" role="2Oq$k0">
                                        <node concept="3uibUv" id="4zqelTglcZZ" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="4zqelTgld00" role="0kSFX">
                                          <ref role="3cqZAo" node="4zqelTgjgYP" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="4zqelTgld01" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="4zqelTgjgYP" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="4zqelTgjgYQ" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="4zqelTg74au" role="3cqZAp">
                    <node concept="2OqwBi" id="4zqelTglKKm" role="3cqZAk">
                      <node concept="2OqwBi" id="4zqelTglF97" role="2Oq$k0">
                        <node concept="1PxgMI" id="4zqelTglAe7" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="4zqelTglBLX" role="3oSUPX">
                            <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          </node>
                          <node concept="37vLTw" id="4zqelTgl$gh" role="1m5AlR">
                            <ref role="3cqZAo" node="4zqelTgj56$" resolve="loginFunction" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="4zqelTglHm0" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                        </node>
                      </node>
                      <node concept="32TBzR" id="4zqelTglMqp" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="4zqelTgaTBE" role="3cqZAp" />
                  <node concept="1X3_iC" id="4zqelTg7kZq" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs6" id="4zqelTg6EXn" role="8Wnug">
                      <node concept="2OqwBi" id="2c2jK0UmEtN" role="3cqZAk">
                        <node concept="2OqwBi" id="2c2jK0UmCzg" role="2Oq$k0">
                          <node concept="1PxgMI" id="2c2jK0UmB8M" role="2Oq$k0">
                            <property role="1BlNFB" value="true" />
                            <node concept="chp4Y" id="2c2jK0UmC1r" role="3oSUPX">
                              <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                            </node>
                            <node concept="0kSF2" id="2c2jK0UmxmM" role="1m5AlR">
                              <node concept="3uibUv" id="2c2jK0Umyei" role="0kSFW">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                              <node concept="2OqwBi" id="2c2jK0Umg78" role="0kSFX">
                                <node concept="2OqwBi" id="2c2jK0Umg79" role="2Oq$k0">
                                  <node concept="2OqwBi" id="2c2jK0Umg7a" role="2Oq$k0">
                                    <node concept="2OqwBi" id="2c2jK0Umg7b" role="2Oq$k0">
                                      <node concept="2OqwBi" id="2c2jK0Umg7c" role="2Oq$k0">
                                        <node concept="0kSF2" id="2c2jK0Umg7d" role="2Oq$k0">
                                          <node concept="3uibUv" id="2c2jK0Umg7e" role="0kSFW">
                                            <ref role="3uigEE" to="w1kc:~InterfaceSNode" resolve="InterfaceSNode" />
                                          </node>
                                          <node concept="2OqwBi" id="2c2jK0Umg7f" role="0kSFX">
                                            <node concept="2OqwBi" id="2c2jK0Umg7g" role="2Oq$k0">
                                              <node concept="2OqwBi" id="2c2jK0Umg7h" role="2Oq$k0">
                                                <node concept="2OqwBi" id="2c2jK0Umg7i" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="2c2jK0Umg7j" role="2Oq$k0">
                                                    <node concept="2YIFZM" id="2c2jK0Umg7k" role="2Oq$k0">
                                                      <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                                      <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                                      <node concept="2OqwBi" id="2c2jK0Umg7l" role="37wK5m">
                                                        <node concept="2OqwBi" id="2c2jK0Umg7m" role="2Oq$k0">
                                                          <node concept="0kSF2" id="2c2jK0Umg7n" role="2Oq$k0">
                                                            <node concept="3uibUv" id="2c2jK0Umg7o" role="0kSFW">
                                                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                                            </node>
                                                            <node concept="AH0OO" id="2c2jK0Umg7p" role="0kSFX">
                                                              <node concept="3cmrfG" id="2c2jK0Umg7q" role="AHEQo">
                                                                <property role="3cmrfH" value="0" />
                                                              </node>
                                                              <node concept="2OqwBi" id="2c2jK0Umg7r" role="AHHXb">
                                                                <node concept="2OqwBi" id="2c2jK0Umg7s" role="2Oq$k0">
                                                                  <node concept="2OqwBi" id="2c2jK0Umg7t" role="2Oq$k0">
                                                                    <node concept="2OqwBi" id="2c2jK0Umg7u" role="2Oq$k0">
                                                                      <node concept="2OqwBi" id="2c2jK0Umg7v" role="2Oq$k0">
                                                                        <node concept="30H73N" id="2c2jK0Umg7w" role="2Oq$k0" />
                                                                        <node concept="2yIwOk" id="2c2jK0Umg7x" role="2OqNvi" />
                                                                      </node>
                                                                      <node concept="liA8E" id="2c2jK0Umg7y" role="2OqNvi">
                                                                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                                                      </node>
                                                                    </node>
                                                                    <node concept="liA8E" id="2c2jK0Umg7z" role="2OqNvi">
                                                                      <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                                                                    </node>
                                                                  </node>
                                                                  <node concept="liA8E" id="2c2jK0Umg7$" role="2OqNvi">
                                                                    <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                                                    <node concept="1bVj0M" id="2c2jK0Umg7_" role="37wK5m">
                                                                      <node concept="3clFbS" id="2c2jK0Umg7A" role="1bW5cS">
                                                                        <node concept="3clFbF" id="2c2jK0Umg7B" role="3cqZAp">
                                                                          <node concept="2OqwBi" id="2c2jK0Umg7C" role="3clFbG">
                                                                            <node concept="2OqwBi" id="2c2jK0Umg7D" role="2Oq$k0">
                                                                              <node concept="2OqwBi" id="2c2jK0Umg7E" role="2Oq$k0">
                                                                                <node concept="37vLTw" id="2c2jK0Umg7F" role="2Oq$k0">
                                                                                  <ref role="3cqZAo" node="2c2jK0Umg7K" resolve="model" />
                                                                                </node>
                                                                                <node concept="liA8E" id="2c2jK0Umg7G" role="2OqNvi">
                                                                                  <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                                                                </node>
                                                                              </node>
                                                                              <node concept="liA8E" id="2c2jK0Umg7H" role="2OqNvi">
                                                                                <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                                                              </node>
                                                                            </node>
                                                                            <node concept="liA8E" id="2c2jK0Umg7I" role="2OqNvi">
                                                                              <ref role="37wK5l" to="wyt6:~String.endsWith(java.lang.String)" resolve="endsWith" />
                                                                              <node concept="Xl_RD" id="2c2jK0Umg7J" role="37wK5m">
                                                                                <property role="Xl_RC" value="behavior" />
                                                                              </node>
                                                                            </node>
                                                                          </node>
                                                                        </node>
                                                                      </node>
                                                                      <node concept="37vLTG" id="2c2jK0Umg7K" role="1bW2Oz">
                                                                        <property role="TrG5h" value="model" />
                                                                        <node concept="3uibUv" id="2c2jK0Umg7L" role="1tU5fm">
                                                                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                                <node concept="liA8E" id="2c2jK0Umg7M" role="2OqNvi">
                                                                  <ref role="37wK5l" to="33ny:~Collection.toArray()" resolve="toArray" />
                                                                </node>
                                                              </node>
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="2c2jK0Umg7N" role="2OqNvi">
                                                            <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="2c2jK0Umg7O" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                                        </node>
                                                      </node>
                                                      <node concept="3clFbT" id="2c2jK0Umg7P" role="37wK5m" />
                                                    </node>
                                                    <node concept="liA8E" id="2c2jK0Umg7Q" role="2OqNvi">
                                                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                                      <node concept="2YIFZM" id="2c2jK0Umg7R" role="37wK5m">
                                                        <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="2c2jK0Umg7S" role="2OqNvi">
                                                    <ref role="37wK5l" to="33ny:~List.toArray()" resolve="toArray" />
                                                  </node>
                                                </node>
                                                <node concept="39bAoz" id="2c2jK0Umg7T" role="2OqNvi" />
                                              </node>
                                              <node concept="3zZkjj" id="2c2jK0Umg7U" role="2OqNvi">
                                                <node concept="1bVj0M" id="2c2jK0Umg7V" role="23t8la">
                                                  <node concept="3clFbS" id="2c2jK0Umg7W" role="1bW5cS">
                                                    <node concept="3clFbF" id="2c2jK0Umg7X" role="3cqZAp">
                                                      <node concept="2OqwBi" id="2c2jK0Umg7Y" role="3clFbG">
                                                        <node concept="2OqwBi" id="2c2jK0Umg7Z" role="2Oq$k0">
                                                          <node concept="0kSF2" id="2c2jK0Umg80" role="2Oq$k0">
                                                            <node concept="3uibUv" id="2c2jK0Umg81" role="0kSFW">
                                                              <ref role="3uigEE" to="w1kc:~InterfaceSNode" resolve="InterfaceSNode" />
                                                            </node>
                                                            <node concept="37vLTw" id="2c2jK0Umg82" role="0kSFX">
                                                              <ref role="3cqZAo" node="2c2jK0Umg86" resolve="it" />
                                                            </node>
                                                          </node>
                                                          <node concept="liA8E" id="2c2jK0Umg83" role="2OqNvi">
                                                            <ref role="37wK5l" to="w1kc:~SNode.getName()" resolve="getName" />
                                                          </node>
                                                        </node>
                                                        <node concept="liA8E" id="2c2jK0Umg84" role="2OqNvi">
                                                          <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                                                          <node concept="Xl_RD" id="2c2jK0Umg85" role="37wK5m">
                                                            <property role="Xl_RC" value="Account" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="Rh6nW" id="2c2jK0Umg86" role="1bW2Oz">
                                                    <property role="TrG5h" value="it" />
                                                    <node concept="2jxLKc" id="2c2jK0Umg87" role="1tU5fm" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="1uHKPH" id="2c2jK0Umg88" role="2OqNvi" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2c2jK0Umg89" role="2OqNvi">
                                          <ref role="37wK5l" to="w1kc:~SNode.getChildren()" resolve="getChildren" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2c2jK0Umg8a" role="2OqNvi">
                                        <ref role="37wK5l" to="33ny:~List.toArray()" resolve="toArray" />
                                      </node>
                                    </node>
                                    <node concept="39bAoz" id="2c2jK0Umg8b" role="2OqNvi" />
                                  </node>
                                  <node concept="3zZkjj" id="2c2jK0Umg8c" role="2OqNvi">
                                    <node concept="1bVj0M" id="2c2jK0Umg8d" role="23t8la">
                                      <node concept="3clFbS" id="2c2jK0Umg8e" role="1bW5cS">
                                        <node concept="3clFbF" id="2c2jK0Umg8f" role="3cqZAp">
                                          <node concept="2OqwBi" id="2c2jK0Umg8g" role="3clFbG">
                                            <node concept="Xl_RD" id="2c2jK0Umg8h" role="2Oq$k0">
                                              <property role="Xl_RC" value="login" />
                                            </node>
                                            <node concept="liA8E" id="2c2jK0Umg8i" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                              <node concept="2OqwBi" id="2c2jK0Umg8j" role="37wK5m">
                                                <node concept="0kSF2" id="2c2jK0Umg8k" role="2Oq$k0">
                                                  <node concept="3uibUv" id="2c2jK0Umg8l" role="0kSFW">
                                                    <ref role="3uigEE" to="w1kc:~SNode" resolve="SNode" />
                                                  </node>
                                                  <node concept="37vLTw" id="2c2jK0Umg8m" role="0kSFX">
                                                    <ref role="3cqZAo" node="2c2jK0Umg8o" resolve="it" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="2c2jK0Umg8n" role="2OqNvi">
                                                  <ref role="37wK5l" to="w1kc:~SNode.getName()" resolve="getName" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="2c2jK0Umg8o" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="2c2jK0Umg8p" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1uHKPH" id="2c2jK0UmskE" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                          <node concept="2qgKlT" id="2c2jK0UmDxe" role="2OqNvi">
                            <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                          </node>
                        </node>
                        <node concept="32TBzR" id="2c2jK0UmFP2" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4zqelTg6l3d" role="1B3o_S" />
        <node concept="3uibUv" id="4zqelTg6l6V" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="4zqelTgm7Fn" role="lGtFl">
            <node concept="3NFfHV" id="4zqelTgm8K1" role="3NFExx">
              <node concept="3clFbS" id="4zqelTgm8K2" role="2VODD2">
                <node concept="3cpWs8" id="4zqelTgmaZ7" role="3cqZAp">
                  <node concept="3cpWsn" id="4zqelTgmaZ8" role="3cpWs9">
                    <property role="TrG5h" value="subLanguage" />
                    <node concept="3uibUv" id="4zqelTgmaZ9" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                    <node concept="2OqwBi" id="4zqelTgmaZa" role="33vP2m">
                      <node concept="2OqwBi" id="4zqelTgmaZb" role="2Oq$k0">
                        <node concept="30H73N" id="4zqelTgmaZc" role="2Oq$k0" />
                        <node concept="2yIwOk" id="4zqelTgmaZd" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="4zqelTgmaZe" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4zqelTgmaZf" role="3cqZAp">
                  <node concept="3cpWsn" id="4zqelTgmaZg" role="3cpWs9">
                    <property role="TrG5h" value="subModule" />
                    <node concept="3uibUv" id="4zqelTgmaZh" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="4zqelTgmaZi" role="33vP2m">
                      <node concept="37vLTw" id="4zqelTgmaZj" role="2Oq$k0">
                        <ref role="3cqZAo" node="4zqelTgmaZ8" resolve="subLanguage" />
                      </node>
                      <node concept="liA8E" id="4zqelTgmaZk" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="4zqelTgmaZl" role="3cqZAp">
                  <node concept="3clFbS" id="4zqelTgmaZm" role="3clFbx">
                    <node concept="3cpWs6" id="4zqelTgmaZn" role="3cqZAp">
                      <node concept="10Nm6u" id="4zqelTgmaZo" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="4zqelTgmaZp" role="3clFbw">
                    <node concept="10Nm6u" id="4zqelTgmaZq" role="3uHU7w" />
                    <node concept="37vLTw" id="4zqelTgmaZr" role="3uHU7B">
                      <ref role="3cqZAo" node="4zqelTgmaZg" resolve="subModule" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4zqelTgvtuE" role="3cqZAp">
                  <node concept="3cpWsn" id="4zqelTgvtuK" role="3cpWs9">
                    <property role="TrG5h" value="structureAspects" />
                    <node concept="3uibUv" id="4zqelTgvtuM" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="4zqelTgvyXx" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4zqelTgwkNO" role="33vP2m">
                      <node concept="37vLTw" id="4zqelTgwkNP" role="2Oq$k0">
                        <ref role="3cqZAo" node="4zqelTgmaZg" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="4zqelTgwkNQ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="4zqelTgwkNR" role="37wK5m">
                          <node concept="3clFbS" id="4zqelTgwkNS" role="1bW5cS">
                            <node concept="3clFbF" id="4zqelTgwkNT" role="3cqZAp">
                              <node concept="2OqwBi" id="4zqelTgwkNU" role="3clFbG">
                                <node concept="2OqwBi" id="4zqelTgwkNV" role="2Oq$k0">
                                  <node concept="2OqwBi" id="4zqelTgwkNW" role="2Oq$k0">
                                    <node concept="37vLTw" id="4zqelTgwkNX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4zqelTgwkO2" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="4zqelTgwkNY" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4zqelTgwkNZ" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="4zqelTgwkO0" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="4zqelTgwkO1" role="37wK5m">
                                    <property role="Xl_RC" value="structure" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="4zqelTgwkO2" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="4zqelTgwkO3" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4zqelTgwJRV" role="3cqZAp">
                  <node concept="3cpWsn" id="4zqelTgwJRW" role="3cpWs9">
                    <property role="TrG5h" value="structureAspect" />
                    <node concept="3uibUv" id="4zqelTgwJRX" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="4zqelTgxlsI" role="33vP2m">
                      <node concept="2OqwBi" id="4zqelTgxcOT" role="2Oq$k0">
                        <node concept="2OqwBi" id="4zqelTgx483" role="2Oq$k0">
                          <node concept="37vLTw" id="4zqelTgx16n" role="2Oq$k0">
                            <ref role="3cqZAo" node="4zqelTgvtuK" resolve="structureAspects" />
                          </node>
                          <node concept="liA8E" id="4zqelTgxal7" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4zqelTgxiBC" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4zqelTgxr34" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="4zqelTgz7Ww" role="3cqZAp">
                  <node concept="3cpWsn" id="4zqelTgz7WA" role="3cpWs9">
                    <property role="TrG5h" value="structures" />
                    <node concept="3uibUv" id="4zqelTgz7WC" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="4zqelTgzdC2" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="4zqelTg$5gi" role="33vP2m">
                      <node concept="2YIFZM" id="4zqelTgzvLm" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="4zqelTgzLZ5" role="37wK5m">
                          <node concept="2OqwBi" id="4zqelTgzEM6" role="2Oq$k0">
                            <node concept="37vLTw" id="4zqelTgz$Tl" role="2Oq$k0">
                              <ref role="3cqZAo" node="4zqelTgwJRW" resolve="structureAspect" />
                            </node>
                            <node concept="liA8E" id="4zqelTgzJBg" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4zqelTgzOLa" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="4zqelTgzZd4" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="4zqelTg$bca" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="4zqelTg$paM" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="4zqelTg$TsJ" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2xdQw9" id="4zqelTgxwvf" role="3cqZAp">
                  <property role="2xdLsb" value="h1akgim/info" />
                  <node concept="37vLTw" id="4zqelTg$vkW" role="9lYJi">
                    <ref role="3cqZAo" node="4zqelTgz7WA" resolve="structures" />
                  </node>
                </node>
                <node concept="3cpWs6" id="4zqelTgveLW" role="3cqZAp">
                  <node concept="10Nm6u" id="4zqelTgvjBI" role="3cqZAk" />
                </node>
                <node concept="3clFbH" id="4zqelTg_DxI" role="3cqZAp" />
                <node concept="3clFbH" id="4zqelTg_x$T" role="3cqZAp" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4zqelTg6lbz" role="3clF46">
          <property role="TrG5h" value="username" />
          <node concept="17QB3L" id="4zqelTg6lby" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4zqelTg6lq1" role="3clF46">
          <property role="TrG5h" value="password" />
          <node concept="17QB3L" id="4zqelTg6lun" role="1tU5fm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4zqelTg5_Ux" role="1B3o_S" />
      <node concept="1WS0z7" id="4zqelTg5A2p" role="lGtFl">
        <node concept="3JmXsc" id="4zqelTg5A2s" role="3Jn$fo">
          <node concept="3clFbS" id="4zqelTg5A2t" role="2VODD2">
            <node concept="3clFbF" id="4zqelTg5A2z" role="3cqZAp">
              <node concept="2OqwBi" id="4zqelTg5A2u" role="3clFbG">
                <node concept="3Tsc0h" id="4zqelTg5A2x" role="2OqNvi">
                  <ref role="3TtcxE" to="7xvd:2c2jK0UnDxU" resolve="using" />
                </node>
                <node concept="30H73N" id="4zqelTg5A2y" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17Uvod" id="4zqelTg5Afq" role="lGtFl">
        <property role="2qtEX9" value="name" />
        <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
        <node concept="3zFVjK" id="4zqelTg5Aft" role="3zH0cK">
          <node concept="3clFbS" id="4zqelTg5Afu" role="2VODD2">
            <node concept="3clFbF" id="4zqelTg5Af$" role="3cqZAp">
              <node concept="2OqwBi" id="4zqelTg5Afv" role="3clFbG">
                <node concept="3TrcHB" id="4zqelTg5Afy" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="30H73N" id="4zqelTg5Afz" role="2Oq$k0" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4zqelTg5_pe" role="jymVt" />
    <node concept="2YIFZL" id="4zqelTg5$Dh" role="jymVt">
      <property role="TrG5h" value="main" />
      <node concept="37vLTG" id="4zqelTg5$Di" role="3clF46">
        <property role="TrG5h" value="args" />
        <node concept="10Q1$e" id="4zqelTg5$Dj" role="1tU5fm">
          <node concept="17QB3L" id="4zqelTg5$Dk" role="10Q1$1" />
        </node>
      </node>
      <node concept="3cqZAl" id="4zqelTg5$Dl" role="3clF45" />
      <node concept="3Tm1VV" id="4zqelTg5$Dm" role="1B3o_S" />
      <node concept="3clFbS" id="4zqelTg5$Dn" role="3clF47" />
    </node>
    <node concept="3Tm1VV" id="4zqelTg5$CU" role="1B3o_S" />
    <node concept="n94m4" id="4zqelTg5$CV" role="lGtFl">
      <ref role="n9lRv" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
    </node>
  </node>
</model>

