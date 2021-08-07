<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:1fee7be5-c2df-4976-a10d-a6a38b4ee1a1(com.geno1024.chatbotlang.generator.templates@generator)">
  <persistence version="9" />
  <languages>
    <use id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator" version="4" />
    <use id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext" version="2" />
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
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
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
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
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
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
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
      <property role="TrG5h" value="IM" />
      <node concept="3clFbW" id="4zqelTg5Ava" role="jymVt">
        <node concept="3cqZAl" id="4zqelTg5Avb" role="3clF45" />
        <node concept="3clFbS" id="4zqelTg5Avd" role="3clF47" />
        <node concept="3Tm1VV" id="4zqelTg5Apc" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="49WvUPtZemz" role="jymVt" />
      <node concept="312cEg" id="49WvUPtZV9W" role="jymVt">
        <property role="TrG5h" value="state" />
        <node concept="3Tm6S6" id="49WvUPtZ$h0" role="1B3o_S" />
        <node concept="3uibUv" id="49WvUPtZTS3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="49WvUPu1ars" role="lGtFl">
            <node concept="3NFfHV" id="49WvUPu1av6" role="3NFExx">
              <node concept="3clFbS" id="49WvUPu1av7" role="2VODD2">
                <node concept="3cpWs8" id="49WvUPu1av8" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1av9" role="3cpWs9">
                    <property role="TrG5h" value="subLanguage" />
                    <node concept="3uibUv" id="49WvUPu1ava" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1avb" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu1avc" role="2Oq$k0">
                        <node concept="30H73N" id="49WvUPu1avd" role="2Oq$k0" />
                        <node concept="2yIwOk" id="49WvUPu1ave" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1avf" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1avg" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1avh" role="3cpWs9">
                    <property role="TrG5h" value="subModule" />
                    <node concept="3uibUv" id="49WvUPu1avi" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1avj" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu1avk" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu1av9" resolve="subLanguage" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1avl" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="49WvUPu1avm" role="3cqZAp">
                  <node concept="3clFbS" id="49WvUPu1avn" role="3clFbx">
                    <node concept="3cpWs6" id="49WvUPu1avo" role="3cqZAp">
                      <node concept="10Nm6u" id="49WvUPu1avp" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="49WvUPu1avq" role="3clFbw">
                    <node concept="10Nm6u" id="49WvUPu1avr" role="3uHU7w" />
                    <node concept="37vLTw" id="49WvUPu1avs" role="3uHU7B">
                      <ref role="3cqZAo" node="49WvUPu1avh" resolve="subModule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu1avt" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu1avu" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1avv" role="3cpWs9">
                    <property role="TrG5h" value="structureAspects" />
                    <node concept="3uibUv" id="49WvUPu1avw" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu1avx" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1avy" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu1avz" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu1avh" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1av$" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="49WvUPu1av_" role="37wK5m">
                          <node concept="3clFbS" id="49WvUPu1avA" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu1avB" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu1avC" role="3clFbG">
                                <node concept="2OqwBi" id="49WvUPu1avD" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPu1avE" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPu1avF" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPu1avK" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPu1avG" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPu1avH" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPu1avI" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="49WvUPu1avJ" role="37wK5m">
                                    <property role="Xl_RC" value="structure" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="49WvUPu1avK" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="49WvUPu1avL" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1avM" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1avN" role="3cpWs9">
                    <property role="TrG5h" value="structureAspect" />
                    <node concept="3uibUv" id="49WvUPu1avO" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1avP" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu1avQ" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu1avR" role="2Oq$k0">
                          <node concept="37vLTw" id="49WvUPu1avS" role="2Oq$k0">
                            <ref role="3cqZAo" node="49WvUPu1avv" resolve="structureAspects" />
                          </node>
                          <node concept="liA8E" id="49WvUPu1avT" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu1avU" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu1avV" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1avW" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1avX" role="3cpWs9">
                    <property role="TrG5h" value="structures" />
                    <node concept="3uibUv" id="49WvUPu1avY" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu1avZ" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1aw0" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu1aw1" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPu1aw2" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu1aw3" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu1aw4" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu1avN" resolve="structureAspect" />
                            </node>
                            <node concept="liA8E" id="49WvUPu1aw5" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu1aw6" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu1aw7" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1aw8" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu1aw9" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPu1awa" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1awb" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1awc" role="3cpWs9">
                    <property role="TrG5h" value="manifestNode" />
                    <node concept="3uibUv" id="49WvUPu1awd" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1awe" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu1awf" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu1awg" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPu1awh" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu1awi" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu1avX" resolve="structures" />
                            </node>
                            <node concept="liA8E" id="49WvUPu1awj" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu1awk" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPu1awl" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPu1awm" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPu1awn" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPu1awo" role="3clFbG">
                                    <node concept="1PxgMI" id="49WvUPu1awp" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="49WvUPu1awq" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPu1awr" role="1m5AlR">
                                        <ref role="3cqZAo" node="49WvUPu1awu" resolve="node" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="49WvUPu1aws" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                      <node concept="35c_gC" id="49WvUPu1awt" role="37wK5m">
                                        <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPu1awu" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPu1awv" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu1aww" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPu1awx" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="49WvUPu1awy" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu1awz" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPu1aw$" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu1aw_" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu1awA" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1awB" role="3cpWs9">
                    <property role="TrG5h" value="languageName" />
                    <node concept="17QB3L" id="49WvUPu1awC" role="1tU5fm" />
                    <node concept="2OqwBi" id="49WvUPu1awD" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu1awE" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu1awc" resolve="manifestNode" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1awF" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu1awG" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu1awH" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1awI" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspects" />
                    <node concept="3uibUv" id="49WvUPu1awJ" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu1awK" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1awL" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu1awM" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu1avh" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1awN" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="49WvUPu1awO" role="37wK5m">
                          <node concept="3clFbS" id="49WvUPu1awP" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu1awQ" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu1awR" role="3clFbG">
                                <node concept="2OqwBi" id="49WvUPu1awS" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPu1awT" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPu1awU" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPu1awZ" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPu1awV" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPu1awW" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPu1awX" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="49WvUPu1awY" role="37wK5m">
                                    <property role="Xl_RC" value="behavior" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="49WvUPu1awZ" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="49WvUPu1ax0" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1ax1" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1ax2" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspect" />
                    <node concept="3uibUv" id="49WvUPu1ax3" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1ax4" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu1ax5" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu1ax6" role="2Oq$k0">
                          <node concept="37vLTw" id="49WvUPu1ax7" role="2Oq$k0">
                            <ref role="3cqZAo" node="49WvUPu1awI" resolve="behaviorAspects" />
                          </node>
                          <node concept="liA8E" id="49WvUPu1ax8" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu1ax9" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu1axa" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1axb" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1axc" role="3cpWs9">
                    <property role="TrG5h" value="behaviors" />
                    <node concept="3uibUv" id="49WvUPu1axd" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu1axe" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1axf" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu1axg" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPu1axh" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu1axi" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu1axj" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu1ax2" resolve="behaviorAspect" />
                            </node>
                            <node concept="liA8E" id="49WvUPu1axk" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu1axl" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu1axm" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1axn" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu1axo" role="37wK5m">
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <node concept="3uibUv" id="49WvUPu1axp" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1axq" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1axr" role="3cpWs9">
                    <property role="TrG5h" value="manifestBehavior" />
                    <node concept="3uibUv" id="49WvUPu1axs" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1axt" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu1axu" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu1axv" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPu1axw" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu1axx" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu1axc" resolve="behaviors" />
                            </node>
                            <node concept="liA8E" id="49WvUPu1axy" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu1axz" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPu1ax$" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPu1ax_" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPu1axA" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPu1axB" role="3clFbG">
                                    <node concept="2OqwBi" id="49WvUPu1axC" role="2Oq$k0">
                                      <node concept="37vLTw" id="49WvUPu1axD" role="2Oq$k0">
                                        <ref role="3cqZAo" node="49WvUPu1axJ" resolve="node" />
                                      </node>
                                      <node concept="liA8E" id="49WvUPu1axE" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPu1axF" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                      <node concept="3cpWs3" id="49WvUPu1axG" role="37wK5m">
                                        <node concept="Xl_RD" id="49WvUPu1axH" role="3uHU7w">
                                          <property role="Xl_RC" value="_Behavior" />
                                        </node>
                                        <node concept="37vLTw" id="49WvUPu1axI" role="3uHU7B">
                                          <ref role="3cqZAo" node="49WvUPu1awB" resolve="languageName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPu1axJ" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPu1axK" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu1axL" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPu1axM" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="49WvUPu1axN" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu1axO" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPu1axP" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu1axQ" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu1axR" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1axS" role="3cpWs9">
                    <property role="TrG5h" value="manifestFunctions" />
                    <node concept="3uibUv" id="49WvUPu1axT" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu1axU" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1axV" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu1axW" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPu1axX" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu1axY" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu1axZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu1axr" resolve="manifestBehavior" />
                            </node>
                            <node concept="liA8E" id="49WvUPu1ay0" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu1ay1" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu1ay2" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu1ay3" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu1ay4" role="37wK5m">
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <node concept="3uibUv" id="49WvUPu1ay5" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu1ay6" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu1ay7" role="3cpWs9">
                    <property role="TrG5h" value="typeFunction" />
                    <node concept="3uibUv" id="49WvUPu1ay8" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu1ay9" role="33vP2m">
                      <node concept="2ShNRf" id="49WvUPu1aya" role="2Oq$k0">
                        <node concept="2Jqq0_" id="49WvUPu1ayb" role="2ShVmc">
                          <node concept="3uibUv" id="49WvUPu1ayc" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTw" id="49WvUPu1ayd" role="I$8f6">
                            <ref role="3cqZAo" node="49WvUPu1axS" resolve="manifestFunctions" />
                          </node>
                        </node>
                      </node>
                      <node concept="1z4cxt" id="49WvUPu1aye" role="2OqNvi">
                        <node concept="1bVj0M" id="49WvUPu1ayf" role="23t8la">
                          <node concept="3clFbS" id="49WvUPu1ayg" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu1ayh" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu1ayi" role="3clFbG">
                                <node concept="Xl_RD" id="49WvUPu1ayj" role="2Oq$k0">
                                  <property role="Xl_RC" value="type" />
                                </node>
                                <node concept="liA8E" id="49WvUPu1ayk" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="49WvUPu1ayl" role="37wK5m">
                                    <node concept="0kSF2" id="49WvUPu1aym" role="2Oq$k0">
                                      <node concept="3uibUv" id="49WvUPu1ayn" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPu1ayo" role="0kSFX">
                                        <ref role="3cqZAo" node="49WvUPu1ayq" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPu1ayp" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="49WvUPu1ayq" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="49WvUPu1ayr" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu1ays" role="3cqZAp" />
                <node concept="3cpWs6" id="49WvUPu1ayt" role="3cqZAp">
                  <node concept="2OqwBi" id="49WvUPu1ayu" role="3cqZAk">
                    <node concept="1PxgMI" id="49WvUPu1ayv" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="49WvUPu1ayw" role="3oSUPX">
                        <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      </node>
                      <node concept="37vLTw" id="49WvUPu1ayx" role="1m5AlR">
                        <ref role="3cqZAo" node="49WvUPu1ay7" resolve="typeFunction" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="49WvUPu1ayy" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="49WvUPu3dDV" role="jymVt" />
      <node concept="3clFb_" id="49WvUPu49st" role="jymVt">
        <property role="TrG5h" value="login" />
        <node concept="3clFbS" id="49WvUPu49sw" role="3clF47">
          <node concept="3clFbF" id="49WvUPu5z0b" role="3cqZAp">
            <node concept="37vLTI" id="49WvUPu5XeU" role="3clFbG">
              <node concept="1rXfSq" id="49WvUPu6q7S" role="37vLTx">
                <ref role="37wK5l" node="4zqelTg6l7D" resolve="loginImpl" />
                <node concept="37vLTw" id="49WvUPu6Y9E" role="37wK5m">
                  <ref role="3cqZAo" node="49WvUPu4y0v" resolve="username" />
                </node>
                <node concept="37vLTw" id="49WvUPu82ah" role="37wK5m">
                  <ref role="3cqZAo" node="49WvUPu4RAY" resolve="password" />
                </node>
              </node>
              <node concept="37vLTw" id="49WvUPu5z0a" role="37vLTJ">
                <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="49WvUPu98d$" role="3cqZAp">
            <node concept="37vLTw" id="49WvUPua3U6" role="3cqZAk">
              <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="49WvUPu3ECs" role="1B3o_S" />
        <node concept="37vLTG" id="49WvUPu4y0v" role="3clF46">
          <property role="TrG5h" value="username" />
          <node concept="17QB3L" id="49WvUPu4y0u" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="49WvUPu4RAY" role="3clF46">
          <property role="TrG5h" value="password" />
          <node concept="17QB3L" id="49WvUPu59E6" role="1tU5fm" />
        </node>
        <node concept="3uibUv" id="49WvUPu5av8" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="49WvUPu5av9" role="lGtFl">
            <node concept="3NFfHV" id="49WvUPu5ava" role="3NFExx">
              <node concept="3clFbS" id="49WvUPu5avb" role="2VODD2">
                <node concept="3cpWs8" id="49WvUPu5avc" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5avd" role="3cpWs9">
                    <property role="TrG5h" value="subLanguage" />
                    <node concept="3uibUv" id="49WvUPu5ave" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5avf" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu5avg" role="2Oq$k0">
                        <node concept="30H73N" id="49WvUPu5avh" role="2Oq$k0" />
                        <node concept="2yIwOk" id="49WvUPu5avi" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5avj" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5avk" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5avl" role="3cpWs9">
                    <property role="TrG5h" value="subModule" />
                    <node concept="3uibUv" id="49WvUPu5avm" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5avn" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu5avo" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu5avd" resolve="subLanguage" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5avp" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="49WvUPu5avq" role="3cqZAp">
                  <node concept="3clFbS" id="49WvUPu5avr" role="3clFbx">
                    <node concept="3cpWs6" id="49WvUPu5avs" role="3cqZAp">
                      <node concept="10Nm6u" id="49WvUPu5avt" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="49WvUPu5avu" role="3clFbw">
                    <node concept="10Nm6u" id="49WvUPu5avv" role="3uHU7w" />
                    <node concept="37vLTw" id="49WvUPu5avw" role="3uHU7B">
                      <ref role="3cqZAo" node="49WvUPu5avl" resolve="subModule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu5avx" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu5avy" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5avz" role="3cpWs9">
                    <property role="TrG5h" value="structureAspects" />
                    <node concept="3uibUv" id="49WvUPu5av$" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu5av_" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5avA" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu5avB" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu5avl" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5avC" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="49WvUPu5avD" role="37wK5m">
                          <node concept="3clFbS" id="49WvUPu5avE" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu5avF" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu5avG" role="3clFbG">
                                <node concept="2OqwBi" id="49WvUPu5avH" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPu5avI" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPu5avJ" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPu5avO" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPu5avK" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPu5avL" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPu5avM" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="49WvUPu5avN" role="37wK5m">
                                    <property role="Xl_RC" value="structure" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="49WvUPu5avO" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="49WvUPu5avP" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5avQ" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5avR" role="3cpWs9">
                    <property role="TrG5h" value="structureAspect" />
                    <node concept="3uibUv" id="49WvUPu5avS" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5avT" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu5avU" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu5avV" role="2Oq$k0">
                          <node concept="37vLTw" id="49WvUPu5avW" role="2Oq$k0">
                            <ref role="3cqZAo" node="49WvUPu5avz" resolve="structureAspects" />
                          </node>
                          <node concept="liA8E" id="49WvUPu5avX" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu5avY" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu5avZ" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5aw0" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5aw1" role="3cpWs9">
                    <property role="TrG5h" value="structures" />
                    <node concept="3uibUv" id="49WvUPu5aw2" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu5aw3" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5aw4" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu5aw5" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPu5aw6" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu5aw7" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu5aw8" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu5avR" resolve="structureAspect" />
                            </node>
                            <node concept="liA8E" id="49WvUPu5aw9" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu5awa" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu5awb" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5awc" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu5awd" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPu5awe" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5awf" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5awg" role="3cpWs9">
                    <property role="TrG5h" value="manifestNode" />
                    <node concept="3uibUv" id="49WvUPu5awh" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5awi" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu5awj" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu5awk" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPu5awl" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu5awm" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu5aw1" resolve="structures" />
                            </node>
                            <node concept="liA8E" id="49WvUPu5awn" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu5awo" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPu5awp" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPu5awq" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPu5awr" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPu5aws" role="3clFbG">
                                    <node concept="1PxgMI" id="49WvUPu5awt" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="49WvUPu5awu" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPu5awv" role="1m5AlR">
                                        <ref role="3cqZAo" node="49WvUPu5awy" resolve="node" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="49WvUPu5aww" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                      <node concept="35c_gC" id="49WvUPu5awx" role="37wK5m">
                                        <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPu5awy" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPu5awz" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu5aw$" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPu5aw_" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="49WvUPu5awA" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu5awB" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPu5awC" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu5awD" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu5awE" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5awF" role="3cpWs9">
                    <property role="TrG5h" value="languageName" />
                    <node concept="17QB3L" id="49WvUPu5awG" role="1tU5fm" />
                    <node concept="2OqwBi" id="49WvUPu5awH" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu5awI" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu5awg" resolve="manifestNode" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5awJ" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu5awK" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu5awL" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5awM" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspects" />
                    <node concept="3uibUv" id="49WvUPu5awN" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu5awO" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5awP" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPu5awQ" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPu5avl" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5awR" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="49WvUPu5awS" role="37wK5m">
                          <node concept="3clFbS" id="49WvUPu5awT" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu5awU" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu5awV" role="3clFbG">
                                <node concept="2OqwBi" id="49WvUPu5awW" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPu5awX" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPu5awY" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPu5ax3" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPu5awZ" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPu5ax0" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPu5ax1" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="49WvUPu5ax2" role="37wK5m">
                                    <property role="Xl_RC" value="behavior" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="49WvUPu5ax3" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="49WvUPu5ax4" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5ax5" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5ax6" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspect" />
                    <node concept="3uibUv" id="49WvUPu5ax7" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5ax8" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu5ax9" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu5axa" role="2Oq$k0">
                          <node concept="37vLTw" id="49WvUPu5axb" role="2Oq$k0">
                            <ref role="3cqZAo" node="49WvUPu5awM" resolve="behaviorAspects" />
                          </node>
                          <node concept="liA8E" id="49WvUPu5axc" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu5axd" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu5axe" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5axf" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5axg" role="3cpWs9">
                    <property role="TrG5h" value="behaviors" />
                    <node concept="3uibUv" id="49WvUPu5axh" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu5axi" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5axj" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu5axk" role="2Oq$k0">
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <node concept="2OqwBi" id="49WvUPu5axl" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu5axm" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu5axn" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu5ax6" resolve="behaviorAspect" />
                            </node>
                            <node concept="liA8E" id="49WvUPu5axo" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu5axp" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu5axq" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5axr" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu5axs" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPu5axt" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5axu" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5axv" role="3cpWs9">
                    <property role="TrG5h" value="manifestBehavior" />
                    <node concept="3uibUv" id="49WvUPu5axw" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5axx" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPu5axy" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPu5axz" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPu5ax$" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu5ax_" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu5axg" resolve="behaviors" />
                            </node>
                            <node concept="liA8E" id="49WvUPu5axA" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu5axB" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPu5axC" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPu5axD" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPu5axE" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPu5axF" role="3clFbG">
                                    <node concept="2OqwBi" id="49WvUPu5axG" role="2Oq$k0">
                                      <node concept="37vLTw" id="49WvUPu5axH" role="2Oq$k0">
                                        <ref role="3cqZAo" node="49WvUPu5axN" resolve="node" />
                                      </node>
                                      <node concept="liA8E" id="49WvUPu5axI" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPu5axJ" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                      <node concept="3cpWs3" id="49WvUPu5axK" role="37wK5m">
                                        <node concept="Xl_RD" id="49WvUPu5axL" role="3uHU7w">
                                          <property role="Xl_RC" value="_Behavior" />
                                        </node>
                                        <node concept="37vLTw" id="49WvUPu5axM" role="3uHU7B">
                                          <ref role="3cqZAo" node="49WvUPu5awF" resolve="languageName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPu5axN" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPu5axO" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPu5axP" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPu5axQ" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="49WvUPu5axR" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPu5axS" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPu5axT" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu5axU" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPu5axV" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5axW" role="3cpWs9">
                    <property role="TrG5h" value="manifestFunctions" />
                    <node concept="3uibUv" id="49WvUPu5axX" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPu5axY" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5axZ" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPu5ay0" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPu5ay1" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPu5ay2" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPu5ay3" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPu5axv" resolve="manifestBehavior" />
                            </node>
                            <node concept="liA8E" id="49WvUPu5ay4" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPu5ay5" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPu5ay6" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPu5ay7" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPu5ay8" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPu5ay9" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPu5aya" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPu5ayb" role="3cpWs9">
                    <property role="TrG5h" value="typeFunction" />
                    <node concept="3uibUv" id="49WvUPu5ayc" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPu5ayd" role="33vP2m">
                      <node concept="2ShNRf" id="49WvUPu5aye" role="2Oq$k0">
                        <node concept="2Jqq0_" id="49WvUPu5ayf" role="2ShVmc">
                          <node concept="3uibUv" id="49WvUPu5ayg" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTw" id="49WvUPu5ayh" role="I$8f6">
                            <ref role="3cqZAo" node="49WvUPu5axW" resolve="manifestFunctions" />
                          </node>
                        </node>
                      </node>
                      <node concept="1z4cxt" id="49WvUPu5ayi" role="2OqNvi">
                        <node concept="1bVj0M" id="49WvUPu5ayj" role="23t8la">
                          <node concept="3clFbS" id="49WvUPu5ayk" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPu5ayl" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPu5aym" role="3clFbG">
                                <node concept="Xl_RD" id="49WvUPu5ayn" role="2Oq$k0">
                                  <property role="Xl_RC" value="type" />
                                </node>
                                <node concept="liA8E" id="49WvUPu5ayo" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="49WvUPu5ayp" role="37wK5m">
                                    <node concept="0kSF2" id="49WvUPu5ayq" role="2Oq$k0">
                                      <node concept="3uibUv" id="49WvUPu5ayr" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPu5ays" role="0kSFX">
                                        <ref role="3cqZAo" node="49WvUPu5ayu" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPu5ayt" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="49WvUPu5ayu" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="49WvUPu5ayv" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPu5ayw" role="3cqZAp" />
                <node concept="3cpWs6" id="49WvUPu5ayx" role="3cqZAp">
                  <node concept="2OqwBi" id="49WvUPu5ayy" role="3cqZAk">
                    <node concept="1PxgMI" id="49WvUPu5ayz" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="49WvUPu5ay$" role="3oSUPX">
                        <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      </node>
                      <node concept="37vLTw" id="49WvUPu5ay_" role="1m5AlR">
                        <ref role="3cqZAo" node="49WvUPu5ayb" resolve="typeFunction" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="49WvUPu5ayA" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="49WvUPtoW7a" role="jymVt" />
      <node concept="3clFb_" id="4zqelTg6l7D" role="jymVt">
        <property role="TrG5h" value="loginImpl" />
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
        <node concept="3Tm6S6" id="49WvUPu2SgR" role="1B3o_S" />
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
                <node concept="3clFbH" id="49WvUPsSzUb" role="3cqZAp" />
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
                <node concept="3cpWs8" id="49WvUPsOhAC" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsOhAD" role="3cpWs9">
                    <property role="TrG5h" value="manifestNode" />
                    <node concept="3uibUv" id="49WvUPsOhAE" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPsOQBv" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPsOANu" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPsMWTH" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPsMPV_" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPsMN_m" role="2Oq$k0">
                              <ref role="3cqZAo" node="4zqelTgz7WA" resolve="structures" />
                            </node>
                            <node concept="liA8E" id="49WvUPsMUCH" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPsN2Ci" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPsN5Hk" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPsN5Hl" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPsQoSF" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPsQFuU" role="3clFbG">
                                    <node concept="1PxgMI" id="49WvUPsQy7$" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="49WvUPsQCjj" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPsQoSE" role="1m5AlR">
                                        <ref role="3cqZAo" node="49WvUPsN8xA" resolve="node" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="49WvUPsQYm5" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                      <node concept="35c_gC" id="49WvUPsR0Ly" role="37wK5m">
                                        <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPsN8xA" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPsN8x_" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPsOGHb" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPsON2p" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="49WvUPsP9VR" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPsOZWX" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPsP3JA" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPsT90E" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPsRKbG" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsRKbJ" role="3cpWs9">
                    <property role="TrG5h" value="languageName" />
                    <node concept="17QB3L" id="49WvUPsRKbE" role="1tU5fm" />
                    <node concept="2OqwBi" id="49WvUPsS4bz" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPsS0Tt" role="2Oq$k0">
                        <ref role="3cqZAo" node="49WvUPsOhAD" resolve="manifestNode" />
                      </node>
                      <node concept="liA8E" id="49WvUPsS73l" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPsTdCA" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPsTiWq" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsTiWw" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspects" />
                    <node concept="3uibUv" id="49WvUPsTiWy" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPsTnAJ" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPsTA6e" role="33vP2m">
                      <node concept="37vLTw" id="49WvUPsTzHo" role="2Oq$k0">
                        <ref role="3cqZAo" node="4zqelTgmaZg" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="49WvUPsTDAF" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="49WvUPsTJy_" role="37wK5m">
                          <node concept="3clFbS" id="49WvUPsTJyA" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPsTW2z" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPsU9jG" role="3clFbG">
                                <node concept="2OqwBi" id="49WvUPsU40t" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPsTY_n" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPsTW2y" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPsTOVK" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPsU1t5" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPsU77o" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPsUcUh" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="49WvUPsUfI7" role="37wK5m">
                                    <property role="Xl_RC" value="behavior" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="49WvUPsTOVK" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="49WvUPsTOVJ" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPsUuYd" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsUuYe" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspect" />
                    <node concept="3uibUv" id="49WvUPsUuYf" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPsV09g" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPsUQVg" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPsUKb7" role="2Oq$k0">
                          <node concept="37vLTw" id="49WvUPsUEdK" role="2Oq$k0">
                            <ref role="3cqZAo" node="49WvUPsTiWw" resolve="behaviorAspects" />
                          </node>
                          <node concept="liA8E" id="49WvUPsUNLh" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPsUWuS" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPsV6MM" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPsVjV3" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsVjV4" role="3cpWs9">
                    <property role="TrG5h" value="behaviors" />
                    <node concept="3uibUv" id="49WvUPsVjV1" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPsVo_v" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPsVVzo" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPsVy6h" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPsVHK5" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPsVBCH" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPsV$X7" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPsUuYe" resolve="behaviorAspect" />
                            </node>
                            <node concept="liA8E" id="49WvUPsVER2" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPsVMlo" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPsVSAT" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPsW4Dy" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPsWeBE" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPsWuFo" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPsWTd1" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPsWTd2" role="3cpWs9">
                    <property role="TrG5h" value="manifestBehavior" />
                    <node concept="3uibUv" id="49WvUPsWTd3" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPsYIL_" role="33vP2m">
                      <node concept="2OqwBi" id="49WvUPsYfJ1" role="2Oq$k0">
                        <node concept="2OqwBi" id="49WvUPsXfs$" role="2Oq$k0">
                          <node concept="2OqwBi" id="49WvUPsX7V4" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPsX4N5" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPsVjV4" resolve="behaviors" />
                            </node>
                            <node concept="liA8E" id="49WvUPsXbwx" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPsXoBP" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="49WvUPsXsHl" role="37wK5m">
                              <node concept="3clFbS" id="49WvUPsXsHm" role="1bW5cS">
                                <node concept="3clFbF" id="49WvUPsXFAx" role="3cqZAp">
                                  <node concept="2OqwBi" id="49WvUPsXPgC" role="3clFbG">
                                    <node concept="2OqwBi" id="49WvUPsXIFK" role="2Oq$k0">
                                      <node concept="37vLTw" id="49WvUPsXFAw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="49WvUPsXwuB" resolve="node" />
                                      </node>
                                      <node concept="liA8E" id="49WvUPsXMAi" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPsXTFA" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                      <node concept="3cpWs3" id="49WvUPsY0QI" role="37wK5m">
                                        <node concept="Xl_RD" id="49WvUPsY0R2" role="3uHU7w">
                                          <property role="Xl_RC" value="_Behavior" />
                                        </node>
                                        <node concept="37vLTw" id="49WvUPsXWCO" role="3uHU7B">
                                          <ref role="3cqZAo" node="49WvUPsRKbJ" resolve="languageName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="49WvUPsXwuB" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="49WvUPsXwuA" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="49WvUPsYqwP" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="49WvUPsYzPe" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="49WvUPsYEZW" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="49WvUPsYVBq" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="49WvUPsZ13O" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPsZWyV" role="3cqZAp" />
                <node concept="3cpWs8" id="49WvUPt04aG" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPt04aM" role="3cpWs9">
                    <property role="TrG5h" value="manifestFunctions" />
                    <node concept="3uibUv" id="49WvUPt04aO" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="49WvUPt0bNc" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="49WvUPt1cr3" role="33vP2m">
                      <node concept="2YIFZM" id="49WvUPt0Qvk" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="49WvUPt0XSS" role="37wK5m">
                          <node concept="2OqwBi" id="49WvUPt0qu3" role="2Oq$k0">
                            <node concept="37vLTw" id="49WvUPt0n8U" role="2Oq$k0">
                              <ref role="3cqZAo" node="49WvUPsWTd2" resolve="manifestBehavior" />
                            </node>
                            <node concept="liA8E" id="49WvUPt0uf3" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="liA8E" id="49WvUPt14kR" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="49WvUPt18hz" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="49WvUPt1$E7" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="49WvUPt1Itk" role="37wK5m">
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <node concept="3uibUv" id="49WvUPt1Rr0" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49WvUPt25iA" role="3cqZAp">
                  <node concept="3cpWsn" id="49WvUPt25iB" role="3cpWs9">
                    <property role="TrG5h" value="typeFunction" />
                    <node concept="3uibUv" id="49WvUPt25iC" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="49WvUPt3l6c" role="33vP2m">
                      <node concept="2ShNRf" id="49WvUPt2ZuS" role="2Oq$k0">
                        <node concept="2Jqq0_" id="49WvUPt35wT" role="2ShVmc">
                          <node concept="3uibUv" id="49WvUPt3aN8" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTw" id="49WvUPt3fkU" role="I$8f6">
                            <ref role="3cqZAo" node="49WvUPt04aM" resolve="manifestFunctions" />
                          </node>
                        </node>
                      </node>
                      <node concept="1z4cxt" id="49WvUPt3r5f" role="2OqNvi">
                        <node concept="1bVj0M" id="49WvUPt3r5h" role="23t8la">
                          <node concept="3clFbS" id="49WvUPt3r5i" role="1bW5cS">
                            <node concept="3clFbF" id="49WvUPt3vc3" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPt4i6h" role="3clFbG">
                                <node concept="Xl_RD" id="49WvUPt4d9j" role="2Oq$k0">
                                  <property role="Xl_RC" value="type" />
                                </node>
                                <node concept="liA8E" id="49WvUPt4niy" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="49WvUPt5Q5W" role="37wK5m">
                                    <node concept="0kSF2" id="49WvUPt5A1x" role="2Oq$k0">
                                      <node concept="3uibUv" id="49WvUPt5A1$" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="49WvUPt5IJR" role="0kSFX">
                                        <ref role="3cqZAo" node="49WvUPt3r5j" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="49WvUPt5U68" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="49WvUPt3r5j" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="49WvUPt3r5k" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="49WvUPtdiSw" role="3cqZAp" />
                <node concept="3cpWs6" id="4zqelTgveLW" role="3cqZAp">
                  <node concept="2OqwBi" id="49WvUPt6uaK" role="3cqZAk">
                    <node concept="1PxgMI" id="49WvUPt6lMu" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="49WvUPt6qur" role="3oSUPX">
                        <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      </node>
                      <node concept="37vLTw" id="49WvUPt6gWB" role="1m5AlR">
                        <ref role="3cqZAo" node="49WvUPt25iB" resolve="typeFunction" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="49WvUPtdxlQ" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4zqelTg6lbz" role="3clF46">
          <property role="TrG5h" value="username" />
          <node concept="17QB3L" id="49WvUPtRcFw" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4zqelTg6lq1" role="3clF46">
          <property role="TrG5h" value="password" />
          <node concept="17QB3L" id="4zqelTg6lun" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="49WvUPuekXF" role="jymVt" />
      <node concept="3clFb_" id="49WvUPufLwa" role="jymVt">
        <property role="TrG5h" value="sendGroupMessage" />
        <node concept="3clFbS" id="49WvUPufLwd" role="3clF47" />
        <node concept="3Tm1VV" id="49WvUPueTI9" role="1B3o_S" />
        <node concept="3uibUv" id="49WvUPufJ7G" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
        <node concept="37vLTG" id="49WvUPugBxG" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="17QB3L" id="49WvUPugBxF" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="49WvUPuhem0" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="17QB3L" id="49WvUPuhMk0" role="1tU5fm" />
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
      <node concept="3clFbS" id="4zqelTg5$Dn" role="3clF47">
        <node concept="9aQIb" id="49WvUPtxUpl" role="3cqZAp">
          <node concept="3clFbS" id="49WvUPtxUpm" role="9aQI4">
            <node concept="3cpWs8" id="49WvUPtxVFb" role="3cqZAp">
              <node concept="3cpWsn" id="49WvUPtxVFc" role="3cpWs9">
                <property role="TrG5h" value="im" />
                <node concept="3uibUv" id="49WvUPtxVFd" role="1tU5fm">
                  <ref role="3uigEE" node="4zqelTg5_WR" resolve="IM" />
                </node>
                <node concept="2ShNRf" id="49WvUPtxWEN" role="33vP2m">
                  <node concept="1pGfFk" id="49WvUPtxWC5" role="2ShVmc">
                    <ref role="37wK5l" node="4zqelTg5Ava" resolve="IM" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="49WvUPtxY0P" role="3cqZAp">
              <node concept="3cpWsn" id="49WvUPtxY0Q" role="3cpWs9">
                <property role="TrG5h" value="login" />
                <node concept="2OqwBi" id="49WvUPtxZoN" role="33vP2m">
                  <node concept="37vLTw" id="49WvUPtxZ8N" role="2Oq$k0">
                    <ref role="3cqZAo" node="49WvUPtxVFc" resolve="im" />
                  </node>
                  <node concept="liA8E" id="49WvUPtxZA8" role="2OqNvi">
                    <ref role="37wK5l" node="49WvUPu49st" resolve="login" />
                    <node concept="Xl_RD" id="49WvUPtSfkm" role="37wK5m">
                      <property role="Xl_RC" value="username" />
                      <node concept="17Uvod" id="49WvUPtSUXO" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="49WvUPtSUXR" role="3zH0cK">
                          <node concept="3clFbS" id="49WvUPtSUXS" role="2VODD2">
                            <node concept="3clFbF" id="49WvUPtSUXY" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPtSUXT" role="3clFbG">
                                <node concept="3TrcHB" id="49WvUPtSUXW" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:4zqelTg5KnU" resolve="username" />
                                </node>
                                <node concept="30H73N" id="49WvUPtSUXX" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="49WvUPtyvhi" role="37wK5m">
                      <property role="Xl_RC" value="password" />
                      <node concept="17Uvod" id="49WvUPtzeId" role="lGtFl">
                        <property role="2qtEX9" value="value" />
                        <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                        <node concept="3zFVjK" id="49WvUPtzeIg" role="3zH0cK">
                          <node concept="3clFbS" id="49WvUPtzeIh" role="2VODD2">
                            <node concept="3clFbF" id="49WvUPtzeIn" role="3cqZAp">
                              <node concept="2OqwBi" id="49WvUPtzeIi" role="3clFbG">
                                <node concept="3TrcHB" id="49WvUPtzeIl" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:4zqelTg5Kpd" resolve="password" />
                                </node>
                                <node concept="30H73N" id="49WvUPtzeIm" role="2Oq$k0" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="49WvUPtA6zt" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  <node concept="29HgVG" id="49WvUPtA6zu" role="lGtFl">
                    <node concept="3NFfHV" id="49WvUPtA6zv" role="3NFExx">
                      <node concept="3clFbS" id="49WvUPtA6zw" role="2VODD2">
                        <node concept="3cpWs8" id="49WvUPtA6zx" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6zy" role="3cpWs9">
                            <property role="TrG5h" value="subLanguage" />
                            <node concept="3uibUv" id="49WvUPtA6zz" role="1tU5fm">
                              <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6z$" role="33vP2m">
                              <node concept="2OqwBi" id="49WvUPtA6z_" role="2Oq$k0">
                                <node concept="30H73N" id="49WvUPtA6zA" role="2Oq$k0" />
                                <node concept="2yIwOk" id="49WvUPtA6zB" role="2OqNvi" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6zC" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6zD" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6zE" role="3cpWs9">
                            <property role="TrG5h" value="subModule" />
                            <node concept="3uibUv" id="49WvUPtA6zF" role="1tU5fm">
                              <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6zG" role="33vP2m">
                              <node concept="37vLTw" id="49WvUPtA6zH" role="2Oq$k0">
                                <ref role="3cqZAo" node="49WvUPtA6zy" resolve="subLanguage" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6zI" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="49WvUPtA6zJ" role="3cqZAp">
                          <node concept="3clFbS" id="49WvUPtA6zK" role="3clFbx">
                            <node concept="3cpWs6" id="49WvUPtA6zL" role="3cqZAp">
                              <node concept="10Nm6u" id="49WvUPtA6zM" role="3cqZAk" />
                            </node>
                          </node>
                          <node concept="3clFbC" id="49WvUPtA6zN" role="3clFbw">
                            <node concept="10Nm6u" id="49WvUPtA6zO" role="3uHU7w" />
                            <node concept="37vLTw" id="49WvUPtA6zP" role="3uHU7B">
                              <ref role="3cqZAo" node="49WvUPtA6zE" resolve="subModule" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="49WvUPtA6zQ" role="3cqZAp" />
                        <node concept="3cpWs8" id="49WvUPtA6zR" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6zS" role="3cpWs9">
                            <property role="TrG5h" value="structureAspects" />
                            <node concept="3uibUv" id="49WvUPtA6zT" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="49WvUPtA6zU" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6zV" role="33vP2m">
                              <node concept="37vLTw" id="49WvUPtA6zW" role="2Oq$k0">
                                <ref role="3cqZAo" node="49WvUPtA6zE" resolve="subModule" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6zX" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                <node concept="1bVj0M" id="49WvUPtA6zY" role="37wK5m">
                                  <node concept="3clFbS" id="49WvUPtA6zZ" role="1bW5cS">
                                    <node concept="3clFbF" id="49WvUPtA6$0" role="3cqZAp">
                                      <node concept="2OqwBi" id="49WvUPtA6$1" role="3clFbG">
                                        <node concept="2OqwBi" id="49WvUPtA6$2" role="2Oq$k0">
                                          <node concept="2OqwBi" id="49WvUPtA6$3" role="2Oq$k0">
                                            <node concept="37vLTw" id="49WvUPtA6$4" role="2Oq$k0">
                                              <ref role="3cqZAo" node="49WvUPtA6$9" resolve="model" />
                                            </node>
                                            <node concept="liA8E" id="49WvUPtA6$5" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="49WvUPtA6$6" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="49WvUPtA6$7" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                          <node concept="Xl_RD" id="49WvUPtA6$8" role="37wK5m">
                                            <property role="Xl_RC" value="structure" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="49WvUPtA6$9" role="1bW2Oz">
                                    <property role="TrG5h" value="model" />
                                    <node concept="3uibUv" id="49WvUPtA6$a" role="1tU5fm">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6$b" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6$c" role="3cpWs9">
                            <property role="TrG5h" value="structureAspect" />
                            <node concept="3uibUv" id="49WvUPtA6$d" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6$e" role="33vP2m">
                              <node concept="2OqwBi" id="49WvUPtA6$f" role="2Oq$k0">
                                <node concept="2OqwBi" id="49WvUPtA6$g" role="2Oq$k0">
                                  <node concept="37vLTw" id="49WvUPtA6$h" role="2Oq$k0">
                                    <ref role="3cqZAo" node="49WvUPtA6zS" resolve="structureAspects" />
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6$i" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPtA6$j" role="2OqNvi">
                                  <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                                </node>
                              </node>
                              <node concept="liA8E" id="49WvUPtA6$k" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6$l" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6$m" role="3cpWs9">
                            <property role="TrG5h" value="structures" />
                            <node concept="3uibUv" id="49WvUPtA6$n" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="49WvUPtA6$o" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6$p" role="33vP2m">
                              <node concept="2YIFZM" id="49WvUPtA6$q" role="2Oq$k0">
                                <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                <node concept="2OqwBi" id="49WvUPtA6$r" role="37wK5m">
                                  <node concept="2OqwBi" id="49WvUPtA6$s" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPtA6$t" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPtA6$c" resolve="structureAspect" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPtA6$u" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6$v" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                  </node>
                                </node>
                                <node concept="3clFbT" id="49WvUPtA6$w" role="37wK5m" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6$x" role="2OqNvi">
                                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                <node concept="2YIFZM" id="49WvUPtA6$y" role="37wK5m">
                                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                  <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                  <node concept="3uibUv" id="49WvUPtA6$z" role="3PaCim">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6$$" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6$_" role="3cpWs9">
                            <property role="TrG5h" value="manifestNode" />
                            <node concept="3uibUv" id="49WvUPtA6$A" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6$B" role="33vP2m">
                              <node concept="2OqwBi" id="49WvUPtA6$C" role="2Oq$k0">
                                <node concept="2OqwBi" id="49WvUPtA6$D" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPtA6$E" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPtA6$F" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPtA6$m" resolve="structures" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPtA6$G" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6$H" role="2OqNvi">
                                    <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                                    <node concept="1bVj0M" id="49WvUPtA6$I" role="37wK5m">
                                      <node concept="3clFbS" id="49WvUPtA6$J" role="1bW5cS">
                                        <node concept="3clFbF" id="49WvUPtA6$K" role="3cqZAp">
                                          <node concept="2OqwBi" id="49WvUPtA6$L" role="3clFbG">
                                            <node concept="1PxgMI" id="49WvUPtA6$M" role="2Oq$k0">
                                              <property role="1BlNFB" value="true" />
                                              <node concept="chp4Y" id="49WvUPtA6$N" role="3oSUPX">
                                                <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                              </node>
                                              <node concept="37vLTw" id="49WvUPtA6$O" role="1m5AlR">
                                                <ref role="3cqZAo" node="49WvUPtA6$R" resolve="node" />
                                              </node>
                                            </node>
                                            <node concept="2qgKlT" id="49WvUPtA6$P" role="2OqNvi">
                                              <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                              <node concept="35c_gC" id="49WvUPtA6$Q" role="37wK5m">
                                                <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="49WvUPtA6$R" role="1bW2Oz">
                                        <property role="TrG5h" value="node" />
                                        <node concept="3uibUv" id="49WvUPtA6$S" role="1tU5fm">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPtA6$T" role="2OqNvi">
                                  <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                  <node concept="2YIFZM" id="49WvUPtA6$U" role="37wK5m">
                                    <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                    <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                    <node concept="3uibUv" id="49WvUPtA6$V" role="3PaCim">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="49WvUPtA6$W" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="49WvUPtA6$X" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="49WvUPtA6$Y" role="3cqZAp" />
                        <node concept="3cpWs8" id="49WvUPtA6$Z" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6_0" role="3cpWs9">
                            <property role="TrG5h" value="languageName" />
                            <node concept="17QB3L" id="49WvUPtA6_1" role="1tU5fm" />
                            <node concept="2OqwBi" id="49WvUPtA6_2" role="33vP2m">
                              <node concept="37vLTw" id="49WvUPtA6_3" role="2Oq$k0">
                                <ref role="3cqZAo" node="49WvUPtA6$_" resolve="manifestNode" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6_4" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="49WvUPtA6_5" role="3cqZAp" />
                        <node concept="3cpWs8" id="49WvUPtA6_6" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6_7" role="3cpWs9">
                            <property role="TrG5h" value="behaviorAspects" />
                            <node concept="3uibUv" id="49WvUPtA6_8" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="49WvUPtA6_9" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6_a" role="33vP2m">
                              <node concept="37vLTw" id="49WvUPtA6_b" role="2Oq$k0">
                                <ref role="3cqZAo" node="49WvUPtA6zE" resolve="subModule" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6_c" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                <node concept="1bVj0M" id="49WvUPtA6_d" role="37wK5m">
                                  <node concept="3clFbS" id="49WvUPtA6_e" role="1bW5cS">
                                    <node concept="3clFbF" id="49WvUPtA6_f" role="3cqZAp">
                                      <node concept="2OqwBi" id="49WvUPtA6_g" role="3clFbG">
                                        <node concept="2OqwBi" id="49WvUPtA6_h" role="2Oq$k0">
                                          <node concept="2OqwBi" id="49WvUPtA6_i" role="2Oq$k0">
                                            <node concept="37vLTw" id="49WvUPtA6_j" role="2Oq$k0">
                                              <ref role="3cqZAo" node="49WvUPtA6_o" resolve="model" />
                                            </node>
                                            <node concept="liA8E" id="49WvUPtA6_k" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="49WvUPtA6_l" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="49WvUPtA6_m" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                          <node concept="Xl_RD" id="49WvUPtA6_n" role="37wK5m">
                                            <property role="Xl_RC" value="behavior" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="37vLTG" id="49WvUPtA6_o" role="1bW2Oz">
                                    <property role="TrG5h" value="model" />
                                    <node concept="3uibUv" id="49WvUPtA6_p" role="1tU5fm">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6_q" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6_r" role="3cpWs9">
                            <property role="TrG5h" value="behaviorAspect" />
                            <node concept="3uibUv" id="49WvUPtA6_s" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6_t" role="33vP2m">
                              <node concept="2OqwBi" id="49WvUPtA6_u" role="2Oq$k0">
                                <node concept="2OqwBi" id="49WvUPtA6_v" role="2Oq$k0">
                                  <node concept="37vLTw" id="49WvUPtA6_w" role="2Oq$k0">
                                    <ref role="3cqZAo" node="49WvUPtA6_7" resolve="behaviorAspects" />
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6_x" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPtA6_y" role="2OqNvi">
                                  <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                                </node>
                              </node>
                              <node concept="liA8E" id="49WvUPtA6_z" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6_$" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6__" role="3cpWs9">
                            <property role="TrG5h" value="behaviors" />
                            <node concept="3uibUv" id="49WvUPtA6_A" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="49WvUPtA6_B" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6_C" role="33vP2m">
                              <node concept="2YIFZM" id="49WvUPtA6_D" role="2Oq$k0">
                                <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                <node concept="2OqwBi" id="49WvUPtA6_E" role="37wK5m">
                                  <node concept="2OqwBi" id="49WvUPtA6_F" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPtA6_G" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPtA6_r" resolve="behaviorAspect" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPtA6_H" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6_I" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                  </node>
                                </node>
                                <node concept="3clFbT" id="49WvUPtA6_J" role="37wK5m" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6_K" role="2OqNvi">
                                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                <node concept="2YIFZM" id="49WvUPtA6_L" role="37wK5m">
                                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                  <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                  <node concept="3uibUv" id="49WvUPtA6_M" role="3PaCim">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6_N" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6_O" role="3cpWs9">
                            <property role="TrG5h" value="manifestBehavior" />
                            <node concept="3uibUv" id="49WvUPtA6_P" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6_Q" role="33vP2m">
                              <node concept="2OqwBi" id="49WvUPtA6_R" role="2Oq$k0">
                                <node concept="2OqwBi" id="49WvUPtA6_S" role="2Oq$k0">
                                  <node concept="2OqwBi" id="49WvUPtA6_T" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPtA6_U" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPtA6__" resolve="behaviors" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPtA6_V" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6_W" role="2OqNvi">
                                    <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                                    <node concept="1bVj0M" id="49WvUPtA6_X" role="37wK5m">
                                      <node concept="3clFbS" id="49WvUPtA6_Y" role="1bW5cS">
                                        <node concept="3clFbF" id="49WvUPtA6_Z" role="3cqZAp">
                                          <node concept="2OqwBi" id="49WvUPtA6A0" role="3clFbG">
                                            <node concept="2OqwBi" id="49WvUPtA6A1" role="2Oq$k0">
                                              <node concept="37vLTw" id="49WvUPtA6A2" role="2Oq$k0">
                                                <ref role="3cqZAo" node="49WvUPtA6A8" resolve="node" />
                                              </node>
                                              <node concept="liA8E" id="49WvUPtA6A3" role="2OqNvi">
                                                <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="49WvUPtA6A4" role="2OqNvi">
                                              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                              <node concept="3cpWs3" id="49WvUPtA6A5" role="37wK5m">
                                                <node concept="Xl_RD" id="49WvUPtA6A6" role="3uHU7w">
                                                  <property role="Xl_RC" value="_Behavior" />
                                                </node>
                                                <node concept="37vLTw" id="49WvUPtA6A7" role="3uHU7B">
                                                  <ref role="3cqZAo" node="49WvUPtA6_0" resolve="languageName" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTG" id="49WvUPtA6A8" role="1bW2Oz">
                                        <property role="TrG5h" value="node" />
                                        <node concept="3uibUv" id="49WvUPtA6A9" role="1tU5fm">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="49WvUPtA6Aa" role="2OqNvi">
                                  <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                  <node concept="2YIFZM" id="49WvUPtA6Ab" role="37wK5m">
                                    <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                    <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                    <node concept="3uibUv" id="49WvUPtA6Ac" role="3PaCim">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="liA8E" id="49WvUPtA6Ad" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="49WvUPtA6Ae" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="49WvUPtA6Af" role="3cqZAp" />
                        <node concept="3cpWs8" id="49WvUPtA6Ag" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6Ah" role="3cpWs9">
                            <property role="TrG5h" value="manifestFunctions" />
                            <node concept="3uibUv" id="49WvUPtA6Ai" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                              <node concept="3uibUv" id="49WvUPtA6Aj" role="11_B2D">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6Ak" role="33vP2m">
                              <node concept="2YIFZM" id="49WvUPtA6Al" role="2Oq$k0">
                                <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                <node concept="2OqwBi" id="49WvUPtA6Am" role="37wK5m">
                                  <node concept="2OqwBi" id="49WvUPtA6An" role="2Oq$k0">
                                    <node concept="37vLTw" id="49WvUPtA6Ao" role="2Oq$k0">
                                      <ref role="3cqZAo" node="49WvUPtA6_O" resolve="manifestBehavior" />
                                    </node>
                                    <node concept="liA8E" id="49WvUPtA6Ap" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="49WvUPtA6Aq" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                  </node>
                                </node>
                                <node concept="3clFbT" id="49WvUPtA6Ar" role="37wK5m" />
                              </node>
                              <node concept="liA8E" id="49WvUPtA6As" role="2OqNvi">
                                <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                <node concept="2YIFZM" id="49WvUPtA6At" role="37wK5m">
                                  <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                  <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                  <node concept="3uibUv" id="49WvUPtA6Au" role="3PaCim">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="49WvUPtA6Av" role="3cqZAp">
                          <node concept="3cpWsn" id="49WvUPtA6Aw" role="3cpWs9">
                            <property role="TrG5h" value="typeFunction" />
                            <node concept="3uibUv" id="49WvUPtA6Ax" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="2OqwBi" id="49WvUPtA6Ay" role="33vP2m">
                              <node concept="2ShNRf" id="49WvUPtA6Az" role="2Oq$k0">
                                <node concept="2Jqq0_" id="49WvUPtA6A$" role="2ShVmc">
                                  <node concept="3uibUv" id="49WvUPtA6A_" role="HW$YZ">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="37vLTw" id="49WvUPtA6AA" role="I$8f6">
                                    <ref role="3cqZAo" node="49WvUPtA6Ah" resolve="manifestFunctions" />
                                  </node>
                                </node>
                              </node>
                              <node concept="1z4cxt" id="49WvUPtA6AB" role="2OqNvi">
                                <node concept="1bVj0M" id="49WvUPtA6AC" role="23t8la">
                                  <node concept="3clFbS" id="49WvUPtA6AD" role="1bW5cS">
                                    <node concept="3clFbF" id="49WvUPtA6AE" role="3cqZAp">
                                      <node concept="2OqwBi" id="49WvUPtA6AF" role="3clFbG">
                                        <node concept="Xl_RD" id="49WvUPtA6AG" role="2Oq$k0">
                                          <property role="Xl_RC" value="type" />
                                        </node>
                                        <node concept="liA8E" id="49WvUPtA6AH" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                          <node concept="2OqwBi" id="49WvUPtA6AI" role="37wK5m">
                                            <node concept="0kSF2" id="49WvUPtA6AJ" role="2Oq$k0">
                                              <node concept="3uibUv" id="49WvUPtA6AK" role="0kSFW">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                              <node concept="37vLTw" id="49WvUPtA6AL" role="0kSFX">
                                                <ref role="3cqZAo" node="49WvUPtA6AN" resolve="it" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="49WvUPtA6AM" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="49WvUPtA6AN" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="49WvUPtA6AO" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="49WvUPtA6AP" role="3cqZAp" />
                        <node concept="3cpWs6" id="49WvUPtA6AQ" role="3cqZAp">
                          <node concept="2OqwBi" id="49WvUPtA6AR" role="3cqZAk">
                            <node concept="1PxgMI" id="49WvUPtA6AS" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="49WvUPtA6AT" role="3oSUPX">
                                <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                              </node>
                              <node concept="37vLTw" id="49WvUPtA6AU" role="1m5AlR">
                                <ref role="3cqZAo" node="49WvUPtA6Aw" resolve="typeFunction" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="49WvUPtA6AV" role="2OqNvi">
                              <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1WS0z7" id="49WvUPtxUv1" role="lGtFl">
            <node concept="3JmXsc" id="49WvUPtxUv4" role="3Jn$fo">
              <node concept="3clFbS" id="49WvUPtxUv5" role="2VODD2">
                <node concept="3clFbF" id="49WvUPtxUvb" role="3cqZAp">
                  <node concept="2OqwBi" id="49WvUPtxUv6" role="3clFbG">
                    <node concept="3Tsc0h" id="49WvUPtxUv9" role="2OqNvi">
                      <ref role="3TtcxE" to="7xvd:49WvUPtuAYY" resolve="login" />
                    </node>
                    <node concept="30H73N" id="49WvUPtxUva" role="2Oq$k0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4zqelTg5$CU" role="1B3o_S" />
    <node concept="n94m4" id="4zqelTg5$CV" role="lGtFl">
      <ref role="n9lRv" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
    </node>
  </node>
</model>

