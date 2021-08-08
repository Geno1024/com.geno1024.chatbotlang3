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
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
      <concept id="4705942098322609812" name="jetbrains.mps.lang.smodel.structure.EnumMember_IsOperation" flags="ng" index="21noJN">
        <child id="4705942098322609813" name="member" index="21noJM" />
      </concept>
      <concept id="4705942098322467729" name="jetbrains.mps.lang.smodel.structure.EnumMemberReference" flags="ng" index="21nZrQ">
        <reference id="4705942098322467736" name="decl" index="21nZrZ" />
      </concept>
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
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
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
        <node concept="3cqZAl" id="70opIpkcGME" role="3clF45" />
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
      <node concept="3clFb_" id="70opIpkF1lI" role="jymVt">
        <property role="TrG5h" value="registerTrigger" />
        <node concept="3clFbS" id="70opIpkF1lL" role="3clF47">
          <node concept="3clFbF" id="70opIpnJkPs" role="3cqZAp">
            <node concept="2OqwBi" id="70opIpnMlg1" role="3clFbG">
              <node concept="2OqwBi" id="70opIpnKNaB" role="2Oq$k0">
                <node concept="37vLTw" id="70opIpnJkPq" role="2Oq$k0">
                  <ref role="3cqZAo" node="70opIpkYEUS" resolve="triggerEntries" />
                </node>
                <node concept="39bAoz" id="70opIpnL$aT" role="2OqNvi" />
              </node>
              <node concept="2es0OD" id="70opIpnN6q5" role="2OqNvi">
                <node concept="1bVj0M" id="70opIpnN6q7" role="23t8la">
                  <node concept="3clFbS" id="70opIpnN6q8" role="1bW5cS">
                    <node concept="9aQIb" id="70opIpo92qP" role="3cqZAp">
                      <node concept="3clFbS" id="70opIpo92qQ" role="9aQI4">
                        <node concept="3clFbF" id="70opIpolNdA" role="3cqZAp">
                          <node concept="2OqwBi" id="70opIpolNdz" role="3clFbG">
                            <node concept="10M0yZ" id="70opIpolNd$" role="2Oq$k0">
                              <ref role="1PxDUh" to="wyt6:~System" />
                              <ref role="3cqZAo" to="wyt6:~System.out" />
                            </node>
                            <node concept="liA8E" id="70opIpolNd_" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.Object)" resolve="println" />
                              <node concept="37vLTw" id="70opIpomwQs" role="37wK5m">
                                <ref role="3cqZAo" node="70opIpnN6q9" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="70opIpog93v" role="3cqZAp">
                          <node concept="3X5UdL" id="70opIpkIk30" role="3clFbG">
                            <node concept="2OqwBi" id="70opIpkZVBw" role="3X5Ude">
                              <node concept="3TrcHB" id="70opIpl0_mM" role="2OqNvi">
                                <ref role="3TsBF5" to="7xvd:49WvUPuomFd" resolve="type" />
                              </node>
                              <node concept="37vLTw" id="70opIpnPlrW" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpnN6q9" resolve="it" />
                              </node>
                            </node>
                            <node concept="3X5Udd" id="70opIpkMcxy" role="3X5gkp">
                              <node concept="21nZrQ" id="70opIpkMcxx" role="3X5Uda">
                                <ref role="21nZrZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                              </node>
                              <node concept="3X5gDB" id="70opIpkMQ3e" role="3X5gFO">
                                <node concept="3clFbS" id="70opIpkMQ3g" role="3X5gD$">
                                  <node concept="3clFbF" id="70opIpmm8Qx" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpmnEuY" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIpmmSoe" role="2Oq$k0">
                                        <node concept="3Tsc0h" id="70opIpmnD4X" role="2OqNvi">
                                          <ref role="3TtcxE" to="7xvd:70opIpleqvZ" resolve="target" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpnQNX5" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpnN6q9" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="2es0OD" id="70opIpmosC1" role="2OqNvi">
                                        <node concept="1bVj0M" id="70opIpmosC3" role="23t8la">
                                          <node concept="3clFbS" id="70opIpmosC4" role="1bW5cS">
                                            <node concept="3clFbF" id="70opIpl6UUb" role="3cqZAp">
                                              <node concept="1rXfSq" id="70opIpl6UUa" role="3clFbG">
                                                <ref role="37wK5l" node="70opIpkUzvJ" resolve="registerOnBootTrigger" />
                                                <node concept="37vLTw" id="70opIpla89h" role="37wK5m">
                                                  <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
                                                </node>
                                                <node concept="37vLTw" id="70opIpmufzI" role="37wK5m">
                                                  <ref role="3cqZAo" node="70opIpmosC5" resolve="it2" />
                                                </node>
                                                <node concept="2OqwBi" id="70opIplQaT_" role="37wK5m">
                                                  <node concept="3TrEf2" id="70opIplQW2E" role="2OqNvi">
                                                    <ref role="3Tt5mk" to="7xvd:49WvUPuonlT" resolve="reply" />
                                                  </node>
                                                  <node concept="37vLTw" id="70opIpnSi3Y" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="70opIpnN6q9" resolve="it" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="Rh6nW" id="70opIpmosC5" role="1bW2Oz">
                                            <property role="TrG5h" value="it2" />
                                            <node concept="2jxLKc" id="70opIpmosC6" role="1tU5fm" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3X5Udd" id="70opIpkNvHa" role="3X5gkp">
                              <node concept="21nZrQ" id="70opIpkNvHb" role="3X5Uda">
                                <ref role="21nZrZ" to="7xvd:49WvUPuomwm" resolve="OnKeyword" />
                              </node>
                              <node concept="3X5gDB" id="70opIpkOJIf" role="3X5gFO">
                                <node concept="3clFbS" id="70opIpkOJIh" role="3X5gD$" />
                              </node>
                            </node>
                            <node concept="3X5Udd" id="70opIpkPpfe" role="3X5gkp">
                              <node concept="21nZrQ" id="70opIpkPpff" role="3X5Uda">
                                <ref role="21nZrZ" to="7xvd:49WvUPuomwp" resolve="OnSchedule" />
                              </node>
                              <node concept="3X5gDB" id="70opIpkQGrU" role="3X5gFO">
                                <node concept="3clFbS" id="70opIpkQGrW" role="3X5gD$" />
                              </node>
                            </node>
                            <node concept="3X5gDB" id="70opIpkSC2L" role="3XxORw">
                              <node concept="3clFbS" id="70opIpkSC2N" role="3X5gD$" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="70opIpnN6q9" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="70opIpnN6qa" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="70opIpkEmS4" role="1B3o_S" />
        <node concept="3cqZAl" id="70opIpkF0La" role="3clF45" />
        <node concept="37vLTG" id="70opIpkYEUS" role="3clF46">
          <property role="TrG5h" value="triggerEntries" />
          <node concept="8X2XB" id="70opIpnGnIB" role="1tU5fm">
            <node concept="3Tqbb2" id="70opIpkYEUR" role="8Xvag">
              <ref role="ehGHo" to="7xvd:49WvUPuolTq" resolve="Trigger" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="70opIpkThNw" role="jymVt" />
      <node concept="3clFb_" id="70opIpkUzvJ" role="jymVt">
        <property role="TrG5h" value="registerOnBootTrigger" />
        <node concept="3clFbS" id="70opIpkUzvM" role="3clF47">
          <node concept="3cpWs6" id="70opIplkC96" role="3cqZAp">
            <node concept="10Nm6u" id="70opIpllhAM" role="3cqZAk" />
            <node concept="2b32R4" id="70opIplrQ54" role="lGtFl">
              <node concept="3JmXsc" id="70opIplrQ55" role="2P8S$">
                <node concept="3clFbS" id="70opIplrQ56" role="2VODD2">
                  <node concept="3cpWs8" id="70opIpltouh" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltoui" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpltouj" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpltouk" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpltoul" role="2Oq$k0">
                          <node concept="30H73N" id="70opIpltoum" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIpltoun" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpltouo" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltoup" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltouq" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpltour" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpltous" role="33vP2m">
                        <node concept="37vLTw" id="70opIpltout" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpltoui" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpltouu" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpltouv" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpltouw" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpltoux" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpltouy" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpltouz" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpltou$" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpltou_" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpltouq" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltouA" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltouB" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="2OqwBi" id="70opIpltouC" role="33vP2m">
                        <node concept="37vLTw" id="70opIpltouD" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpltouq" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpltouE" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpltouF" role="37wK5m">
                            <node concept="3clFbS" id="70opIpltouG" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpltouH" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpltouI" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpltouJ" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpltouK" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpltouL" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpltouQ" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpltouM" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpltouN" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpltouO" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpltouP" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpltouQ" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpltouR" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="70opIpltouS" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpltouT" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltouU" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltouV" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpltouW" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpltouX" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpltouY" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpltouZ" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpltov0" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpltouB" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpltov1" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpltov2" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpltov3" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltov4" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltov5" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpltov6" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpltov7" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpltov8" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpltov9" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpltova" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpltovb" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpltovc" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpltouV" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpltovd" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpltove" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpltovf" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpltovg" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpltovh" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpltovi" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltovj" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltovk" role="3cpWs9">
                      <property role="TrG5h" value="bootBehavior" />
                      <node concept="3uibUv" id="70opIpltovl" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpltovm" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpltovn" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpltovo" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpltovp" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpltovq" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpltov5" resolve="behaviors" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpltovr" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpltovs" role="23t8la">
                            <node concept="3clFbS" id="70opIpltovt" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpltovu" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpltovv" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpltovw" role="2Oq$k0">
                                    <node concept="0kSF2" id="70opIpltovx" role="2Oq$k0">
                                      <node concept="3uibUv" id="70opIpltovy" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpltovz" role="0kSFX">
                                        <ref role="3cqZAo" node="70opIpltovB" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpltov$" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpltov_" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                                    <node concept="Xl_RD" id="70opIpltovA" role="37wK5m">
                                      <property role="Xl_RC" value="OnBoot" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpltovB" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpltovC" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltovD" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltovE" role="3cpWs9">
                      <property role="TrG5h" value="bootFunctions" />
                      <node concept="3uibUv" id="70opIpltovF" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpltovG" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpltovH" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpltovI" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpltovJ" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpltovK" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpltovL" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpltovk" resolve="accountBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpltovM" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpltovN" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpltovO" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpltovP" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpltovQ" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpltovR" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpltovS" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpltovT" role="3cpWs9">
                      <property role="TrG5h" value="triggerFunction" />
                      <node concept="3uibUv" id="70opIpltovU" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpltovV" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpltovW" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpltovX" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpltovY" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpltovZ" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpltovE" resolve="accountFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpltow0" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpltow1" role="23t8la">
                            <node concept="3clFbS" id="70opIpltow2" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpltow3" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpltow4" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIpltow5" role="2Oq$k0">
                                    <property role="Xl_RC" value="onTrigger" />
                                  </node>
                                  <node concept="liA8E" id="70opIpltow6" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIpltow7" role="37wK5m">
                                      <node concept="0kSF2" id="70opIpltow8" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIpltow9" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpltowa" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIpltowc" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpltowb" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpltowc" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpltowd" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="70opIpltowe" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIpltowf" role="3cqZAk">
                      <node concept="2OqwBi" id="70opIpltowg" role="2Oq$k0">
                        <node concept="1PxgMI" id="70opIpltowh" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="70opIpltowi" role="3oSUPX">
                            <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          </node>
                          <node concept="37vLTw" id="70opIpltowj" role="1m5AlR">
                            <ref role="3cqZAo" node="70opIpltovT" resolve="runFunction" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="70opIpltowk" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                        </node>
                      </node>
                      <node concept="32TBzR" id="70opIpltowl" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="70opIpkTT1T" role="1B3o_S" />
        <node concept="3cqZAl" id="70opIpkUwwC" role="3clF45" />
        <node concept="37vLTG" id="70opIpl7$Ja" role="3clF46">
          <property role="TrG5h" value="state" />
          <node concept="3uibUv" id="70opIplsz4v" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <node concept="29HgVG" id="70opIplsz4w" role="lGtFl">
              <node concept="3NFfHV" id="70opIplsz4x" role="3NFExx">
                <node concept="3clFbS" id="70opIplsz4y" role="2VODD2">
                  <node concept="3cpWs8" id="70opIplsz4z" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz4$" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIplsz4_" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz4A" role="33vP2m">
                        <node concept="2OqwBi" id="70opIplsz4B" role="2Oq$k0">
                          <node concept="30H73N" id="70opIplsz4C" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIplsz4D" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIplsz4E" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz4F" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz4G" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIplsz4H" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz4I" role="33vP2m">
                        <node concept="37vLTw" id="70opIplsz4J" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplsz4$" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIplsz4K" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIplsz4L" role="3cqZAp">
                    <node concept="3clFbS" id="70opIplsz4M" role="3clFbx">
                      <node concept="3cpWs6" id="70opIplsz4N" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIplsz4O" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIplsz4P" role="3clFbw">
                      <node concept="10Nm6u" id="70opIplsz4Q" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIplsz4R" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIplsz4G" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIplsz4S" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIplsz4T" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz4U" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIplsz4V" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIplsz4W" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIplsz4X" role="33vP2m">
                        <node concept="37vLTw" id="70opIplsz4Y" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplsz4G" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIplsz4Z" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIplsz50" role="37wK5m">
                            <node concept="3clFbS" id="70opIplsz51" role="1bW5cS">
                              <node concept="3clFbF" id="70opIplsz52" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIplsz53" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIplsz54" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIplsz55" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIplsz56" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIplsz5b" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIplsz57" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIplsz58" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIplsz59" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIplsz5a" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIplsz5b" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIplsz5c" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz5d" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz5e" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIplsz5f" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz5g" role="33vP2m">
                        <node concept="2OqwBi" id="70opIplsz5h" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIplsz5i" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIplsz5j" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIplsz4U" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIplsz5k" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIplsz5l" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIplsz5m" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz5n" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz5o" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIplsz5p" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIplsz5q" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIplsz5r" role="33vP2m">
                        <node concept="2YIFZM" id="70opIplsz5s" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIplsz5t" role="37wK5m">
                            <node concept="2OqwBi" id="70opIplsz5u" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIplsz5v" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIplsz5e" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIplsz5w" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIplsz5x" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIplsz5y" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIplsz5z" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIplsz5$" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIplsz5_" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz5A" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz5B" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIplsz5C" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz5D" role="33vP2m">
                        <node concept="2OqwBi" id="70opIplsz5E" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIplsz5F" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIplsz5G" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIplsz5H" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIplsz5o" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIplsz5I" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIplsz5J" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIplsz5K" role="37wK5m">
                                <node concept="3clFbS" id="70opIplsz5L" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIplsz5M" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIplsz5N" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIplsz5O" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIplsz5P" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIplsz5Q" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIplsz5T" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIplsz5R" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIplsz5S" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIplsz5T" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIplsz5U" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIplsz5V" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIplsz5W" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIplsz5X" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIplsz5Y" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIplsz5Z" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIplsz60" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIplsz61" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz62" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIplsz63" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIplsz64" role="33vP2m">
                        <node concept="37vLTw" id="70opIplsz65" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplsz5B" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIplsz66" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIplsz67" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIplsz68" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz69" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIplsz6a" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIplsz6b" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIplsz6c" role="33vP2m">
                        <node concept="37vLTw" id="70opIplsz6d" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIplsz4G" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIplsz6e" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIplsz6f" role="37wK5m">
                            <node concept="3clFbS" id="70opIplsz6g" role="1bW5cS">
                              <node concept="3clFbF" id="70opIplsz6h" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIplsz6i" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIplsz6j" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIplsz6k" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIplsz6l" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIplsz6q" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIplsz6m" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIplsz6n" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIplsz6o" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIplsz6p" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIplsz6q" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIplsz6r" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz6s" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz6t" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIplsz6u" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz6v" role="33vP2m">
                        <node concept="2OqwBi" id="70opIplsz6w" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIplsz6x" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIplsz6y" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIplsz69" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIplsz6z" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIplsz6$" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIplsz6_" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz6A" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz6B" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIplsz6C" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIplsz6D" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIplsz6E" role="33vP2m">
                        <node concept="2YIFZM" id="70opIplsz6F" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIplsz6G" role="37wK5m">
                            <node concept="2OqwBi" id="70opIplsz6H" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIplsz6I" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIplsz6t" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIplsz6J" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIplsz6K" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIplsz6L" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIplsz6M" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIplsz6N" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIplsz6O" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz6P" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz6Q" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIplsz6R" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz6S" role="33vP2m">
                        <node concept="2OqwBi" id="70opIplsz6T" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIplsz6U" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIplsz6V" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIplsz6W" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIplsz6B" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIplsz6X" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIplsz6Y" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIplsz6Z" role="37wK5m">
                                <node concept="3clFbS" id="70opIplsz70" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIplsz71" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIplsz72" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIplsz73" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIplsz74" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIplsz7a" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIplsz75" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIplsz76" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIplsz77" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIplsz78" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIplsz79" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIplsz62" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIplsz7a" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIplsz7b" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIplsz7c" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIplsz7d" role="37wK5m">
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <node concept="3uibUv" id="70opIplsz7e" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIplsz7f" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIplsz7g" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIplsz7h" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIplsz7i" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz7j" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIplsz7k" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIplsz7l" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIplsz7m" role="33vP2m">
                        <node concept="2YIFZM" id="70opIplsz7n" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIplsz7o" role="37wK5m">
                            <node concept="2OqwBi" id="70opIplsz7p" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIplsz7q" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIplsz6Q" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIplsz7r" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIplsz7s" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIplsz7t" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIplsz7u" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIplsz7v" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIplsz7w" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIplsz7x" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIplsz7y" role="3cpWs9">
                      <property role="TrG5h" value="typeFunction" />
                      <node concept="3uibUv" id="70opIplsz7z" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIplsz7$" role="33vP2m">
                        <node concept="2ShNRf" id="70opIplsz7_" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIplsz7A" role="2ShVmc">
                            <node concept="3uibUv" id="70opIplsz7B" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIplsz7C" role="I$8f6">
                              <ref role="3cqZAo" node="70opIplsz7j" resolve="manifestFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIplsz7D" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIplsz7E" role="23t8la">
                            <node concept="3clFbS" id="70opIplsz7F" role="1bW5cS">
                              <node concept="3clFbF" id="70opIplsz7G" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIplsz7H" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIplsz7I" role="2Oq$k0">
                                    <property role="Xl_RC" value="type" />
                                  </node>
                                  <node concept="liA8E" id="70opIplsz7J" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIplsz7K" role="37wK5m">
                                      <node concept="0kSF2" id="70opIplsz7L" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIplsz7M" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIplsz7N" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIplsz7P" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIplsz7O" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIplsz7P" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIplsz7Q" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIplsz7R" role="3cqZAp" />
                  <node concept="3cpWs6" id="70opIplsz7S" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIplsz7T" role="3cqZAk">
                      <node concept="1PxgMI" id="70opIplsz7U" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="70opIplsz7V" role="3oSUPX">
                          <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                        </node>
                        <node concept="37vLTw" id="70opIplsz7W" role="1m5AlR">
                          <ref role="3cqZAo" node="70opIplsz7y" resolve="typeFunction" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="70opIplsz7X" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="70opIpl6gIS" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3Tqbb2" id="70opIpl6gIR" role="1tU5fm">
            <ref role="ehGHo" to="7xvd:70opIplegRm" resolve="Target" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIplT9Z$" role="3clF46">
          <property role="TrG5h" value="reply" />
          <node concept="3Tqbb2" id="70opIplTSiM" role="1tU5fm">
            <ref role="ehGHo" to="7xvd:2c2jK0UnUSj" resolve="Reply" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="49WvUPuwy4j" role="jymVt" />
      <node concept="3clFb_" id="49WvUPu$fwR" role="jymVt">
        <property role="TrG5h" value="run" />
        <node concept="3clFbS" id="49WvUPu$fwU" role="3clF47">
          <node concept="3clFbF" id="70opIpjDNv6" role="3cqZAp">
            <node concept="37vLTI" id="70opIpjEArP" role="3clFbG">
              <node concept="1rXfSq" id="70opIpjI3e_" role="37vLTx">
                <ref role="37wK5l" node="70opIpjAxvy" resolve="runImpl" />
                <node concept="37vLTw" id="70opIpjIZbI" role="37wK5m">
                  <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
                </node>
              </node>
              <node concept="37vLTw" id="70opIpjDNv5" role="37vLTJ">
                <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="49WvUPuzn65" role="1B3o_S" />
        <node concept="3cqZAl" id="70opIpkfRX2" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="70opIpj_kxQ" role="jymVt" />
      <node concept="3clFb_" id="70opIpjAxvy" role="jymVt">
        <property role="TrG5h" value="runImpl" />
        <node concept="3clFbS" id="70opIpjAxv_" role="3clF47">
          <node concept="3cpWs6" id="70opIpjBSCs" role="3cqZAp">
            <node concept="2ShNRf" id="70opIpjD7g3" role="3cqZAk">
              <node concept="1pGfFk" id="70opIpjD79C" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              </node>
            </node>
            <node concept="2b32R4" id="70opIpjNVKW" role="lGtFl">
              <node concept="3JmXsc" id="70opIpjNVKZ" role="2P8S$">
                <node concept="3clFbS" id="70opIpjNVL0" role="2VODD2">
                  <node concept="3cpWs8" id="70opIpjP1mw" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1mx" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpjP1my" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1mz" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjP1m$" role="2Oq$k0">
                          <node concept="30H73N" id="70opIpjP1m_" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIpjP1mA" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpjP1mB" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1mC" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1mD" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpjP1mE" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1mF" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjP1mG" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjP1mx" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpjP1mH" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpjP1mI" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpjP1mJ" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpjP1mK" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpjP1mL" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpjP1mM" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpjP1mN" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpjP1mO" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpjP1mD" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1mP" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1mQ" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="2OqwBi" id="70opIpjP1mR" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjP1mS" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjP1mD" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpjP1mT" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpjP1mU" role="37wK5m">
                            <node concept="3clFbS" id="70opIpjP1mV" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjP1mW" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjP1mX" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpjP1mY" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpjP1mZ" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpjP1n0" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpjP1n5" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpjP1n1" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjP1n2" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjP1n3" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpjP1n4" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpjP1n5" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpjP1n6" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="70opIpjP1n7" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjP1n8" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1n9" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1na" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpjP1nb" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1nc" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjP1nd" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjP1ne" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjP1nf" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjP1mQ" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpjP1ng" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjP1nh" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjP1ni" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1nj" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1nk" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpjP1nl" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjP1nm" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1nn" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpjP1no" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpjP1np" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpjP1nq" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjP1nr" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjP1na" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpjP1ns" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjP1nt" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpjP1nu" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpjP1nv" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjP1nw" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpjP1nx" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1ny" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1nz" role="3cpWs9">
                      <property role="TrG5h" value="accountBehavior" />
                      <node concept="3uibUv" id="70opIpjP1n$" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1n_" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpjP1nA" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpjP1nB" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpjP1nC" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpjP1nD" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpjP1nk" resolve="behaviors" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpjP1nE" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpjP1nF" role="23t8la">
                            <node concept="3clFbS" id="70opIpjP1nG" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjP1nH" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjP1nI" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpjP1nJ" role="2Oq$k0">
                                    <node concept="0kSF2" id="70opIpjP1nK" role="2Oq$k0">
                                      <node concept="3uibUv" id="70opIpjP1nL" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpjP1nM" role="0kSFX">
                                        <ref role="3cqZAo" node="70opIpjP1nQ" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjP1nN" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjP1nO" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
                                    <node concept="Xl_RD" id="70opIpjP1nP" role="37wK5m">
                                      <property role="Xl_RC" value="Account" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpjP1nQ" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpjP1nR" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1nS" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1nT" role="3cpWs9">
                      <property role="TrG5h" value="accountFunctions" />
                      <node concept="3uibUv" id="70opIpjP1nU" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjP1nV" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1nW" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpjP1nX" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpjP1nY" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpjP1nZ" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjP1o0" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjP1nz" resolve="accountBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpjP1o1" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjP1o2" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpjP1o3" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpjP1o4" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjP1o5" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpjP1o6" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjP1o7" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjP1o8" role="3cpWs9">
                      <property role="TrG5h" value="runFunction" />
                      <node concept="3uibUv" id="70opIpjP1o9" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjP1oa" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpjP1ob" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpjP1oc" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpjP1od" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpjP1oe" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpjP1nT" resolve="accountFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpjP1of" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpjP1og" role="23t8la">
                            <node concept="3clFbS" id="70opIpjP1oh" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjP1oi" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjP1oj" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIpjP1ok" role="2Oq$k0">
                                    <property role="Xl_RC" value="run" />
                                  </node>
                                  <node concept="liA8E" id="70opIpjP1ol" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIpjP1om" role="37wK5m">
                                      <node concept="0kSF2" id="70opIpjP1on" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIpjP1oo" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpjP1op" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIpjP1or" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpjP1oq" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpjP1or" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpjP1os" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="70opIpjP1ot" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIpjP1ou" role="3cqZAk">
                      <node concept="2OqwBi" id="70opIpjP1ov" role="2Oq$k0">
                        <node concept="1PxgMI" id="70opIpjP1ow" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="70opIpjP1ox" role="3oSUPX">
                            <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          </node>
                          <node concept="37vLTw" id="70opIpjP1oy" role="1m5AlR">
                            <ref role="3cqZAo" node="70opIpjP1o8" resolve="loginFunction" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="70opIpjP1oz" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                        </node>
                      </node>
                      <node concept="32TBzR" id="70opIpjP1o$" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="70opIpjGc_f" role="1B3o_S" />
        <node concept="3uibUv" id="70opIpjB7Hm" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          <node concept="29HgVG" id="70opIpjB7Hn" role="lGtFl">
            <node concept="3NFfHV" id="70opIpjB7Ho" role="3NFExx">
              <node concept="3clFbS" id="70opIpjB7Hp" role="2VODD2">
                <node concept="3cpWs8" id="70opIpjB7Hq" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Hr" role="3cpWs9">
                    <property role="TrG5h" value="subLanguage" />
                    <node concept="3uibUv" id="70opIpjB7Hs" role="1tU5fm">
                      <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Ht" role="33vP2m">
                      <node concept="2OqwBi" id="70opIpjB7Hu" role="2Oq$k0">
                        <node concept="30H73N" id="70opIpjB7Hv" role="2Oq$k0" />
                        <node concept="2yIwOk" id="70opIpjB7Hw" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7Hx" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7Hy" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Hz" role="3cpWs9">
                    <property role="TrG5h" value="subModule" />
                    <node concept="3uibUv" id="70opIpjB7H$" role="1tU5fm">
                      <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7H_" role="33vP2m">
                      <node concept="37vLTw" id="70opIpjB7HA" role="2Oq$k0">
                        <ref role="3cqZAo" node="70opIpjB7Hr" resolve="subLanguage" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7HB" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="70opIpjB7HC" role="3cqZAp">
                  <node concept="3clFbS" id="70opIpjB7HD" role="3clFbx">
                    <node concept="3cpWs6" id="70opIpjB7HE" role="3cqZAp">
                      <node concept="10Nm6u" id="70opIpjB7HF" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="3clFbC" id="70opIpjB7HG" role="3clFbw">
                    <node concept="10Nm6u" id="70opIpjB7HH" role="3uHU7w" />
                    <node concept="37vLTw" id="70opIpjB7HI" role="3uHU7B">
                      <ref role="3cqZAo" node="70opIpjB7Hz" resolve="subModule" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="70opIpjB7HJ" role="3cqZAp" />
                <node concept="3cpWs8" id="70opIpjB7HK" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7HL" role="3cpWs9">
                    <property role="TrG5h" value="structureAspects" />
                    <node concept="3uibUv" id="70opIpjB7HM" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="70opIpjB7HN" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7HO" role="33vP2m">
                      <node concept="37vLTw" id="70opIpjB7HP" role="2Oq$k0">
                        <ref role="3cqZAo" node="70opIpjB7Hz" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7HQ" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="70opIpjB7HR" role="37wK5m">
                          <node concept="3clFbS" id="70opIpjB7HS" role="1bW5cS">
                            <node concept="3clFbF" id="70opIpjB7HT" role="3cqZAp">
                              <node concept="2OqwBi" id="70opIpjB7HU" role="3clFbG">
                                <node concept="2OqwBi" id="70opIpjB7HV" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpjB7HW" role="2Oq$k0">
                                    <node concept="37vLTw" id="70opIpjB7HX" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpjB7I2" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="70opIpjB7HY" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjB7HZ" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpjB7I0" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="70opIpjB7I1" role="37wK5m">
                                    <property role="Xl_RC" value="structure" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="70opIpjB7I2" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="70opIpjB7I3" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7I4" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7I5" role="3cpWs9">
                    <property role="TrG5h" value="structureAspect" />
                    <node concept="3uibUv" id="70opIpjB7I6" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7I7" role="33vP2m">
                      <node concept="2OqwBi" id="70opIpjB7I8" role="2Oq$k0">
                        <node concept="2OqwBi" id="70opIpjB7I9" role="2Oq$k0">
                          <node concept="37vLTw" id="70opIpjB7Ia" role="2Oq$k0">
                            <ref role="3cqZAo" node="70opIpjB7HL" resolve="structureAspects" />
                          </node>
                          <node concept="liA8E" id="70opIpjB7Ib" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjB7Ic" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="70opIpjB7Id" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7Ie" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7If" role="3cpWs9">
                    <property role="TrG5h" value="structures" />
                    <node concept="3uibUv" id="70opIpjB7Ig" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="70opIpjB7Ih" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Ii" role="33vP2m">
                      <node concept="2YIFZM" id="70opIpjB7Ij" role="2Oq$k0">
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <node concept="2OqwBi" id="70opIpjB7Ik" role="37wK5m">
                          <node concept="2OqwBi" id="70opIpjB7Il" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjB7Im" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjB7I5" resolve="structureAspect" />
                            </node>
                            <node concept="liA8E" id="70opIpjB7In" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjB7Io" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="70opIpjB7Ip" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7Iq" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="70opIpjB7Ir" role="37wK5m">
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <node concept="3uibUv" id="70opIpjB7Is" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7It" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Iu" role="3cpWs9">
                    <property role="TrG5h" value="manifestNode" />
                    <node concept="3uibUv" id="70opIpjB7Iv" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Iw" role="33vP2m">
                      <node concept="2OqwBi" id="70opIpjB7Ix" role="2Oq$k0">
                        <node concept="2OqwBi" id="70opIpjB7Iy" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjB7Iz" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjB7I$" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjB7If" resolve="structures" />
                            </node>
                            <node concept="liA8E" id="70opIpjB7I_" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjB7IA" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="70opIpjB7IB" role="37wK5m">
                              <node concept="3clFbS" id="70opIpjB7IC" role="1bW5cS">
                                <node concept="3clFbF" id="70opIpjB7ID" role="3cqZAp">
                                  <node concept="2OqwBi" id="70opIpjB7IE" role="3clFbG">
                                    <node concept="1PxgMI" id="70opIpjB7IF" role="2Oq$k0">
                                      <property role="1BlNFB" value="true" />
                                      <node concept="chp4Y" id="70opIpjB7IG" role="3oSUPX">
                                        <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpjB7IH" role="1m5AlR">
                                        <ref role="3cqZAo" node="70opIpjB7IK" resolve="node" />
                                      </node>
                                    </node>
                                    <node concept="2qgKlT" id="70opIpjB7II" role="2OqNvi">
                                      <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                      <node concept="35c_gC" id="70opIpjB7IJ" role="37wK5m">
                                        <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="70opIpjB7IK" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="70opIpjB7IL" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjB7IM" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjB7IN" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpjB7IO" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="70opIpjB7IP" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="70opIpjB7IQ" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="70opIpjB7IR" role="3cqZAp" />
                <node concept="3cpWs8" id="70opIpjB7IS" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7IT" role="3cpWs9">
                    <property role="TrG5h" value="languageName" />
                    <node concept="17QB3L" id="70opIpjB7IU" role="1tU5fm" />
                    <node concept="2OqwBi" id="70opIpjB7IV" role="33vP2m">
                      <node concept="37vLTw" id="70opIpjB7IW" role="2Oq$k0">
                        <ref role="3cqZAo" node="70opIpjB7Iu" resolve="manifestNode" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7IX" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="70opIpjB7IY" role="3cqZAp" />
                <node concept="3cpWs8" id="70opIpjB7IZ" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7J0" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspects" />
                    <node concept="3uibUv" id="70opIpjB7J1" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="70opIpjB7J2" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7J3" role="33vP2m">
                      <node concept="37vLTw" id="70opIpjB7J4" role="2Oq$k0">
                        <ref role="3cqZAo" node="70opIpjB7Hz" resolve="subModule" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7J5" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                        <node concept="1bVj0M" id="70opIpjB7J6" role="37wK5m">
                          <node concept="3clFbS" id="70opIpjB7J7" role="1bW5cS">
                            <node concept="3clFbF" id="70opIpjB7J8" role="3cqZAp">
                              <node concept="2OqwBi" id="70opIpjB7J9" role="3clFbG">
                                <node concept="2OqwBi" id="70opIpjB7Ja" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpjB7Jb" role="2Oq$k0">
                                    <node concept="37vLTw" id="70opIpjB7Jc" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpjB7Jh" resolve="model" />
                                    </node>
                                    <node concept="liA8E" id="70opIpjB7Jd" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjB7Je" role="2OqNvi">
                                    <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpjB7Jf" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                  <node concept="Xl_RD" id="70opIpjB7Jg" role="37wK5m">
                                    <property role="Xl_RC" value="behavior" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="70opIpjB7Jh" role="1bW2Oz">
                            <property role="TrG5h" value="model" />
                            <node concept="3uibUv" id="70opIpjB7Ji" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7Jj" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Jk" role="3cpWs9">
                    <property role="TrG5h" value="behaviorAspect" />
                    <node concept="3uibUv" id="70opIpjB7Jl" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Jm" role="33vP2m">
                      <node concept="2OqwBi" id="70opIpjB7Jn" role="2Oq$k0">
                        <node concept="2OqwBi" id="70opIpjB7Jo" role="2Oq$k0">
                          <node concept="37vLTw" id="70opIpjB7Jp" role="2Oq$k0">
                            <ref role="3cqZAo" node="70opIpjB7J0" resolve="behaviorAspects" />
                          </node>
                          <node concept="liA8E" id="70opIpjB7Jq" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjB7Jr" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                        </node>
                      </node>
                      <node concept="liA8E" id="70opIpjB7Js" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7Jt" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Ju" role="3cpWs9">
                    <property role="TrG5h" value="behaviors" />
                    <node concept="3uibUv" id="70opIpjB7Jv" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="70opIpjB7Jw" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Jx" role="33vP2m">
                      <node concept="2YIFZM" id="70opIpjB7Jy" role="2Oq$k0">
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <node concept="2OqwBi" id="70opIpjB7Jz" role="37wK5m">
                          <node concept="2OqwBi" id="70opIpjB7J$" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjB7J_" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjB7Jk" resolve="behaviorAspect" />
                            </node>
                            <node concept="liA8E" id="70opIpjB7JA" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjB7JB" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="70opIpjB7JC" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7JD" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="70opIpjB7JE" role="37wK5m">
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <node concept="3uibUv" id="70opIpjB7JF" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7JG" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7JH" role="3cpWs9">
                    <property role="TrG5h" value="manifestBehavior" />
                    <node concept="3uibUv" id="70opIpjB7JI" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7JJ" role="33vP2m">
                      <node concept="2OqwBi" id="70opIpjB7JK" role="2Oq$k0">
                        <node concept="2OqwBi" id="70opIpjB7JL" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjB7JM" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjB7JN" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjB7Ju" resolve="behaviors" />
                            </node>
                            <node concept="liA8E" id="70opIpjB7JO" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjB7JP" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                            <node concept="1bVj0M" id="70opIpjB7JQ" role="37wK5m">
                              <node concept="3clFbS" id="70opIpjB7JR" role="1bW5cS">
                                <node concept="3clFbF" id="70opIpjB7JS" role="3cqZAp">
                                  <node concept="2OqwBi" id="70opIpjB7JT" role="3clFbG">
                                    <node concept="2OqwBi" id="70opIpjB7JU" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpjB7JV" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpjB7K1" resolve="node" />
                                      </node>
                                      <node concept="liA8E" id="70opIpjB7JW" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjB7JX" role="2OqNvi">
                                      <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                      <node concept="3cpWs3" id="70opIpjB7JY" role="37wK5m">
                                        <node concept="Xl_RD" id="70opIpjB7JZ" role="3uHU7w">
                                          <property role="Xl_RC" value="_Behavior" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpjB7K0" role="3uHU7B">
                                          <ref role="3cqZAo" node="70opIpjB7IT" resolve="languageName" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="37vLTG" id="70opIpjB7K1" role="1bW2Oz">
                                <property role="TrG5h" value="node" />
                                <node concept="3uibUv" id="70opIpjB7K2" role="1tU5fm">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjB7K3" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjB7K4" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpjB7K5" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="70opIpjB7K6" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                        <node concept="3cmrfG" id="70opIpjB7K7" role="37wK5m">
                          <property role="3cmrfH" value="0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="70opIpjB7K8" role="3cqZAp" />
                <node concept="3cpWs8" id="70opIpjB7K9" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Ka" role="3cpWs9">
                    <property role="TrG5h" value="manifestFunctions" />
                    <node concept="3uibUv" id="70opIpjB7Kb" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                      <node concept="3uibUv" id="70opIpjB7Kc" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Kd" role="33vP2m">
                      <node concept="2YIFZM" id="70opIpjB7Ke" role="2Oq$k0">
                        <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                        <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                        <node concept="2OqwBi" id="70opIpjB7Kf" role="37wK5m">
                          <node concept="2OqwBi" id="70opIpjB7Kg" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjB7Kh" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjB7JH" resolve="manifestBehavior" />
                            </node>
                            <node concept="liA8E" id="70opIpjB7Ki" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjB7Kj" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                          </node>
                        </node>
                        <node concept="3clFbT" id="70opIpjB7Kk" role="37wK5m" />
                      </node>
                      <node concept="liA8E" id="70opIpjB7Kl" role="2OqNvi">
                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                        <node concept="2YIFZM" id="70opIpjB7Km" role="37wK5m">
                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                          <node concept="3uibUv" id="70opIpjB7Kn" role="3PaCim">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="70opIpjB7Ko" role="3cqZAp">
                  <node concept="3cpWsn" id="70opIpjB7Kp" role="3cpWs9">
                    <property role="TrG5h" value="typeFunction" />
                    <node concept="3uibUv" id="70opIpjB7Kq" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                    </node>
                    <node concept="2OqwBi" id="70opIpjB7Kr" role="33vP2m">
                      <node concept="2ShNRf" id="70opIpjB7Ks" role="2Oq$k0">
                        <node concept="2Jqq0_" id="70opIpjB7Kt" role="2ShVmc">
                          <node concept="3uibUv" id="70opIpjB7Ku" role="HW$YZ">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="37vLTw" id="70opIpjB7Kv" role="I$8f6">
                            <ref role="3cqZAo" node="70opIpjB7Ka" resolve="manifestFunctions" />
                          </node>
                        </node>
                      </node>
                      <node concept="1z4cxt" id="70opIpjB7Kw" role="2OqNvi">
                        <node concept="1bVj0M" id="70opIpjB7Kx" role="23t8la">
                          <node concept="3clFbS" id="70opIpjB7Ky" role="1bW5cS">
                            <node concept="3clFbF" id="70opIpjB7Kz" role="3cqZAp">
                              <node concept="2OqwBi" id="70opIpjB7K$" role="3clFbG">
                                <node concept="Xl_RD" id="70opIpjB7K_" role="2Oq$k0">
                                  <property role="Xl_RC" value="type" />
                                </node>
                                <node concept="liA8E" id="70opIpjB7KA" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                  <node concept="2OqwBi" id="70opIpjB7KB" role="37wK5m">
                                    <node concept="0kSF2" id="70opIpjB7KC" role="2Oq$k0">
                                      <node concept="3uibUv" id="70opIpjB7KD" role="0kSFW">
                                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                      </node>
                                      <node concept="37vLTw" id="70opIpjB7KE" role="0kSFX">
                                        <ref role="3cqZAo" node="70opIpjB7KG" resolve="it" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjB7KF" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="70opIpjB7KG" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="70opIpjB7KH" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="70opIpjB7KI" role="3cqZAp" />
                <node concept="3cpWs6" id="70opIpjB7KJ" role="3cqZAp">
                  <node concept="2OqwBi" id="70opIpjB7KK" role="3cqZAk">
                    <node concept="1PxgMI" id="70opIpjB7KL" role="2Oq$k0">
                      <property role="1BlNFB" value="true" />
                      <node concept="chp4Y" id="70opIpjB7KM" role="3oSUPX">
                        <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                      </node>
                      <node concept="37vLTw" id="70opIpjB7KN" role="1m5AlR">
                        <ref role="3cqZAo" node="70opIpjB7Kp" resolve="typeFunction" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="70opIpjB7KO" role="2OqNvi">
                      <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="70opIpjH1Ir" role="3clF46">
          <property role="TrG5h" value="state" />
          <node concept="3uibUv" id="70opIpjHUH9" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <node concept="29HgVG" id="70opIpjHUHa" role="lGtFl">
              <node concept="3NFfHV" id="70opIpjHUHb" role="3NFExx">
                <node concept="3clFbS" id="70opIpjHUHc" role="2VODD2">
                  <node concept="3cpWs8" id="70opIpjHUHd" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUHe" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpjHUHf" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUHg" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjHUHh" role="2Oq$k0">
                          <node concept="30H73N" id="70opIpjHUHi" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIpjHUHj" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUHk" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUHl" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUHm" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpjHUHn" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUHo" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjHUHp" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjHUHe" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUHq" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpjHUHr" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpjHUHs" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpjHUHt" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpjHUHu" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpjHUHv" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpjHUHw" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpjHUHx" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpjHUHm" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpjHUHy" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpjHUHz" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUH$" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIpjHUH_" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjHUHA" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUHB" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjHUHC" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjHUHm" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUHD" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpjHUHE" role="37wK5m">
                            <node concept="3clFbS" id="70opIpjHUHF" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjHUHG" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjHUHH" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpjHUHI" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpjHUHJ" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpjHUHK" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpjHUHP" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpjHUHL" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjHUHM" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjHUHN" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpjHUHO" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpjHUHP" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpjHUHQ" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUHR" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUHS" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIpjHUHT" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUHU" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjHUHV" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjHUHW" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjHUHX" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjHUH$" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpjHUHY" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjHUHZ" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjHUI0" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUI1" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUI2" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIpjHUI3" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjHUI4" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUI5" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpjHUI6" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpjHUI7" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpjHUI8" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjHUI9" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjHUHS" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpjHUIa" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjHUIb" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpjHUIc" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUId" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjHUIe" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpjHUIf" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUIg" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUIh" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIpjHUIi" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUIj" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjHUIk" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjHUIl" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpjHUIm" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjHUIn" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjHUI2" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIpjHUIo" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjHUIp" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpjHUIq" role="37wK5m">
                                <node concept="3clFbS" id="70opIpjHUIr" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpjHUIs" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpjHUIt" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIpjHUIu" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIpjHUIv" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpjHUIw" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIpjHUIz" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIpjHUIx" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIpjHUIy" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpjHUIz" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpjHUI$" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjHUI_" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpjHUIA" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIpjHUIB" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjHUIC" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpjHUID" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpjHUIE" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpjHUIF" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUIG" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIpjHUIH" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIpjHUII" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjHUIJ" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjHUIh" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUIK" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpjHUIL" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpjHUIM" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUIN" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIpjHUIO" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjHUIP" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUIQ" role="33vP2m">
                        <node concept="37vLTw" id="70opIpjHUIR" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpjHUHm" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUIS" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpjHUIT" role="37wK5m">
                            <node concept="3clFbS" id="70opIpjHUIU" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjHUIV" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjHUIW" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpjHUIX" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpjHUIY" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpjHUIZ" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpjHUJ4" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpjHUJ0" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpjHUJ1" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpjHUJ2" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpjHUJ3" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpjHUJ4" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpjHUJ5" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUJ6" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUJ7" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpjHUJ8" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUJ9" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjHUJa" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjHUJb" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpjHUJc" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpjHUIN" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpjHUJd" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjHUJe" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjHUJf" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUJg" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUJh" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpjHUJi" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjHUJj" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUJk" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpjHUJl" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpjHUJm" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpjHUJn" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjHUJo" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjHUJ7" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpjHUJp" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjHUJq" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpjHUJr" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUJs" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjHUJt" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpjHUJu" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUJv" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUJw" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIpjHUJx" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUJy" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpjHUJz" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpjHUJ$" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpjHUJ_" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjHUJA" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjHUJh" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIpjHUJB" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjHUJC" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpjHUJD" role="37wK5m">
                                <node concept="3clFbS" id="70opIpjHUJE" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpjHUJF" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpjHUJG" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIpjHUJH" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpjHUJI" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpjHUJO" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIpjHUJJ" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpjHUJK" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIpjHUJL" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIpjHUJM" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpjHUJN" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIpjHUIG" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpjHUJO" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpjHUJP" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpjHUJQ" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpjHUJR" role="37wK5m">
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <node concept="3uibUv" id="70opIpjHUJS" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpjHUJT" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpjHUJU" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpjHUJV" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpjHUJW" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUJX" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIpjHUJY" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpjHUJZ" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUK0" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpjHUK1" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpjHUK2" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpjHUK3" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpjHUK4" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpjHUJw" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpjHUK5" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpjHUK6" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpjHUK7" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpjHUK8" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpjHUK9" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpjHUKa" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpjHUKb" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpjHUKc" role="3cpWs9">
                      <property role="TrG5h" value="typeFunction" />
                      <node concept="3uibUv" id="70opIpjHUKd" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpjHUKe" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpjHUKf" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpjHUKg" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpjHUKh" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpjHUKi" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpjHUJX" resolve="manifestFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpjHUKj" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpjHUKk" role="23t8la">
                            <node concept="3clFbS" id="70opIpjHUKl" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpjHUKm" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpjHUKn" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIpjHUKo" role="2Oq$k0">
                                    <property role="Xl_RC" value="type" />
                                  </node>
                                  <node concept="liA8E" id="70opIpjHUKp" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIpjHUKq" role="37wK5m">
                                      <node concept="0kSF2" id="70opIpjHUKr" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIpjHUKs" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpjHUKt" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIpjHUKv" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpjHUKu" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpjHUKv" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpjHUKw" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpjHUKx" role="3cqZAp" />
                  <node concept="3cpWs6" id="70opIpjHUKy" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIpjHUKz" role="3cqZAk">
                      <node concept="1PxgMI" id="70opIpjHUK$" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="70opIpjHUK_" role="3oSUPX">
                          <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                        </node>
                        <node concept="37vLTw" id="70opIpjHUKA" role="1m5AlR">
                          <ref role="3cqZAo" node="70opIpjHUKc" resolve="typeFunction" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="70opIpjHUKB" role="2OqNvi">
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
            <node concept="3clFbF" id="70opIpkboQf" role="3cqZAp">
              <node concept="2OqwBi" id="49WvUPtxZoN" role="3clFbG">
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
            </node>
            <node concept="3clFbF" id="70opIpnBFXX" role="3cqZAp">
              <node concept="2OqwBi" id="70opIpnBGmX" role="3clFbG">
                <node concept="37vLTw" id="70opIpnBFXV" role="2Oq$k0">
                  <ref role="3cqZAo" node="49WvUPtxVFc" resolve="im" />
                </node>
                <node concept="liA8E" id="70opIpnBHjM" role="2OqNvi">
                  <ref role="37wK5l" node="70opIpkF1lI" resolve="registerTrigger" />
                  <node concept="2ShNRf" id="70opIpnBKsw" role="37wK5m">
                    <node concept="3zrR0B" id="70opIpnBLZp" role="2ShVmc">
                      <node concept="3Tqbb2" id="70opIpnBLZr" role="3zrR0E">
                        <ref role="ehGHo" to="7xvd:49WvUPuolTq" resolve="Trigger" />
                      </node>
                    </node>
                    <node concept="1WS0z7" id="70opIpnUAa9" role="lGtFl">
                      <node concept="3JmXsc" id="70opIpnUAaa" role="3Jn$fo">
                        <node concept="3clFbS" id="70opIpnUAab" role="2VODD2">
                          <node concept="3clFbF" id="70opIpnUArE" role="3cqZAp">
                            <node concept="2OqwBi" id="70opIpnBIm2" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpnBIm3" role="2Oq$k0">
                                <node concept="1PxgMI" id="70opIpnBIm4" role="2Oq$k0">
                                  <property role="1BlNFB" value="true" />
                                  <node concept="chp4Y" id="70opIpnBIm5" role="3oSUPX">
                                    <ref role="cht4Q" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpnBIm6" role="1m5AlR">
                                    <node concept="30H73N" id="70opIpnBIm7" role="2Oq$k0" />
                                    <node concept="1mfA1w" id="70opIpnBIm8" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="3Tsc0h" id="70opIpnBIm9" role="2OqNvi">
                                  <ref role="3TtcxE" to="7xvd:49WvUPuorfS" resolve="triggerPool" />
                                </node>
                              </node>
                              <node concept="3zZkjj" id="70opIpnBIma" role="2OqNvi">
                                <node concept="1bVj0M" id="70opIpnBImb" role="23t8la">
                                  <node concept="3clFbS" id="70opIpnBImc" role="1bW5cS">
                                    <node concept="3clFbF" id="70opIpnBImd" role="3cqZAp">
                                      <node concept="2OqwBi" id="70opIpnBIme" role="3clFbG">
                                        <node concept="2OqwBi" id="70opIpnBImf" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpnBImg" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpnBImk" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="70opIpnBImh" role="2OqNvi">
                                            <ref role="3TsBF5" to="7xvd:49WvUPuomFd" resolve="type" />
                                          </node>
                                        </node>
                                        <node concept="21noJN" id="70opIpnBImi" role="2OqNvi">
                                          <node concept="21nZrQ" id="70opIpnBImj" role="21noJM">
                                            <ref role="21nZrZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="70opIpnBImk" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="70opIpnBIml" role="1tU5fm" />
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
              </node>
            </node>
            <node concept="3clFbF" id="70opIpjQhhO" role="3cqZAp">
              <node concept="2OqwBi" id="70opIpjQrXX" role="3clFbG">
                <node concept="37vLTw" id="70opIpjQhhM" role="2Oq$k0">
                  <ref role="3cqZAo" node="49WvUPtxVFc" resolve="im" />
                </node>
                <node concept="liA8E" id="70opIpjQFu$" role="2OqNvi">
                  <ref role="37wK5l" node="49WvUPu$fwR" resolve="run" />
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

