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
    <import index="tp25" ref="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" />
    <import index="jqqh" ref="07274949-c3ce-4e56-ba72-75c07c0ec361/java:org.slf4j(com.geno1024.chatbotlang.impl.qq.runtime/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
      <concept id="5015072279636592410" name="jetbrains.mps.lang.generator.structure.VarMacro_ValueQuery" flags="in" index="2jfdEK" />
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
      <concept id="1048903277984099206" name="jetbrains.mps.lang.generator.structure.VarDeclaration" flags="ng" index="1ps_xZ">
        <child id="1048903277984099210" name="value" index="1ps_xN" />
      </concept>
      <concept id="1048903277984099198" name="jetbrains.mps.lang.generator.structure.VarMacro2" flags="lg" index="1ps_y7">
        <child id="1048903277984099213" name="variables" index="1ps_xO" />
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
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
      <concept id="1048903277984174662" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_VarRef2" flags="nn" index="1psM6Z">
        <reference id="1048903277984174663" name="vardecl" index="1psM6Y" />
      </concept>
    </language>
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="1196350785113" name="jetbrains.mps.lang.quotation.structure.Quotation" flags="nn" index="2c44tf">
        <child id="1196350785114" name="quotedNode" index="2c44tc" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
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
      <concept id="1966870290088668520" name="jetbrains.mps.lang.smodel.structure.Enum_MembersOperation" flags="ng" index="2ViDtN" />
      <concept id="1966870290088668512" name="jetbrains.mps.lang.smodel.structure.Enum_MemberLiteral" flags="ng" index="2ViDtV">
        <reference id="1966870290088668516" name="memberDeclaration" index="2ViDtZ" />
      </concept>
      <concept id="1240170042401" name="jetbrains.mps.lang.smodel.structure.SEnumerationMemberType" flags="in" index="2ZThk1">
        <reference id="1240170836027" name="enum" index="2ZWj4r" />
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
      <concept id="2453008993612717253" name="jetbrains.mps.lang.smodel.structure.EnumSwitchCaseBody_Expression" flags="ng" index="3X5gDF">
        <child id="2453008993612717254" name="expression" index="3X5gDC" />
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
      <concept id="5779574625830813396" name="jetbrains.mps.lang.smodel.structure.EnumerationIdRefExpression" flags="ng" index="1XH99k">
        <reference id="5779574625830813397" name="enumDeclaration" index="1XH99l" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
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
                  <node concept="3cpWs8" id="70opIpoVCui" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCuj" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpoVCuk" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCul" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpoVCum" role="2Oq$k0">
                          <node concept="30H73N" id="70opIpoVCun" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIpoVCuo" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCup" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCuq" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCur" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpoVCus" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCut" role="33vP2m">
                        <node concept="37vLTw" id="70opIpoVCuu" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpoVCuj" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCuv" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpoVCuw" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpoVCux" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpoVCuy" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpoVCuz" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpoVCu$" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpoVCu_" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpoVCuA" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpoVCur" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVCuB" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpoVCuC" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCuD" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIpoVCuE" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpoVCuF" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCuG" role="33vP2m">
                        <node concept="37vLTw" id="70opIpoVCuH" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpoVCur" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCuI" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpoVCuJ" role="37wK5m">
                            <node concept="3clFbS" id="70opIpoVCuK" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpoVCuL" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpoVCuM" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpoVCuN" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpoVCuO" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpoVCuP" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpoVCuU" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpoVCuQ" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpoVCuR" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpoVCuS" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpoVCuT" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpoVCuU" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpoVCuV" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCuW" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCuX" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIpoVCuY" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCuZ" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpoVCv0" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpoVCv1" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpoVCv2" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpoVCuD" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpoVCv3" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpoVCv4" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpoVCv5" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCv6" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCv7" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIpoVCv8" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpoVCv9" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCva" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpoVCvb" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpoVCvc" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpoVCvd" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpoVCve" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoVCuX" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpoVCvf" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpoVCvg" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpoVCvh" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCvi" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpoVCvj" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpoVCvk" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCvl" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCvm" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIpoVCvn" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCvo" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpoVCvp" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpoVCvq" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpoVCvr" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpoVCvs" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoVCv7" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIpoVCvt" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpoVCvu" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpoVCvv" role="37wK5m">
                                <node concept="3clFbS" id="70opIpoVCvw" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpoVCvx" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpoVCvy" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIpoVCvz" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIpoVCv$" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpoVCv_" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIpoVCvC" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIpoVCvA" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIpoVCvB" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpoVCvC" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpoVCvD" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpoVCvE" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpoVCvF" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIpoVCvG" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpoVCvH" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpoVCvI" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVCvJ" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpoVCvK" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCvL" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIpoVCvM" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIpoVCvN" role="33vP2m">
                        <node concept="37vLTw" id="70opIpoVCvO" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpoVCvm" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCvP" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVCvQ" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpoVCvR" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCvS" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIpoVCvT" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpoVCvU" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCvV" role="33vP2m">
                        <node concept="37vLTw" id="70opIpoVCvW" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpoVCur" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCvX" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpoVCvY" role="37wK5m">
                            <node concept="3clFbS" id="70opIpoVCvZ" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpoVCw0" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpoVCw1" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpoVCw2" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpoVCw3" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpoVCw4" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpoVCw9" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpoVCw5" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpoVCw6" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpoVCw7" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpoVCw8" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpoVCw9" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpoVCwa" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCwb" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCwc" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpoVCwd" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCwe" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpoVCwf" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpoVCwg" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpoVCwh" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpoVCvS" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpoVCwi" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpoVCwj" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpoVCwk" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCwl" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCwm" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpoVCwn" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpoVCwo" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCwp" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpoVCwq" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpoVCwr" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpoVCws" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpoVCwt" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoVCwc" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpoVCwu" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpoVCwv" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpoVCww" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCwx" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpoVCwy" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpoVCwz" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCw$" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCw_" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIpoVCwA" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCwB" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpoVCwC" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpoVCwD" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpoVCwE" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpoVCwF" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoVCwm" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIpoVCwG" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpoVCwH" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpoVCwI" role="37wK5m">
                                <node concept="3clFbS" id="70opIpoVCwJ" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpoVCwK" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpoVCwL" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIpoVCwM" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpoVCwN" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpoVCwT" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIpoVCwO" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpoVCwP" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIpoVCwQ" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIpoVCwR" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpoVCwS" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIpoVCvL" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpoVCwT" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpoVCwU" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpoVCwV" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpoVCwW" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIpoVCwX" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpoVCwY" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpoVCwZ" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVCx0" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpoVCx1" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCx2" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIpoVCx3" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpoVCx4" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCx5" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpoVCx6" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpoVCx7" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpoVCx8" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpoVCx9" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoVCw_" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpoVCxa" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpoVCxb" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpoVCxc" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpoVCxd" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpoVCxe" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpoVCxf" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpoVCxg" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpoVCxh" role="3cpWs9">
                      <property role="TrG5h" value="typeFunction" />
                      <node concept="3uibUv" id="70opIpoVCxi" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpoVCxj" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpoVCxk" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpoVCxl" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpoVCxm" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpoVCxn" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpoVCx2" resolve="manifestFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpoVCxo" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpoVCxp" role="23t8la">
                            <node concept="3clFbS" id="70opIpoVCxq" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpoVCxr" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpoVCxs" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIpoVCxt" role="2Oq$k0">
                                    <property role="Xl_RC" value="login" />
                                  </node>
                                  <node concept="liA8E" id="70opIpoVCxu" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIpoVCxv" role="37wK5m">
                                      <node concept="0kSF2" id="70opIpoVCxw" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIpoVCxx" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpoVCxy" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIpoVCx$" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpoVCxz" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpoVCx$" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpoVCx_" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVCxA" role="3cqZAp" />
                  <node concept="3cpWs6" id="70opIpoVCxB" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIpoWchk" role="3cqZAk">
                      <node concept="2OqwBi" id="70opIpoVCxC" role="2Oq$k0">
                        <node concept="1PxgMI" id="70opIpoVCxD" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="70opIpoVCxE" role="3oSUPX">
                            <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          </node>
                          <node concept="37vLTw" id="70opIpoVCxF" role="1m5AlR">
                            <ref role="3cqZAo" node="70opIpoVCxh" resolve="typeFunction" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="70opIpoW8cf" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                        </node>
                      </node>
                      <node concept="32TBzR" id="70opIpoWokt" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpoVB7d" role="3cqZAp" />
                  <node concept="3clFbH" id="70opIpoVBaY" role="3cqZAp" />
                  <node concept="1X3_iC" id="70opIpoVzrH" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTg8X$F" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrI" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgaGDr" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrJ" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3clFbJ" id="4zqelTgaUZO" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrK" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTg9ddG" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrL" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgaqee" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrM" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgba92" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrN" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgdM4Z" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrO" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgfxfE" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrP" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs8" id="4zqelTgj56z" role="8Wnug">
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
                  </node>
                  <node concept="1X3_iC" id="70opIpoVzrQ" role="lGtFl">
                    <property role="3V$3am" value="statement" />
                    <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                    <node concept="3cpWs6" id="4zqelTg74au" role="8Wnug">
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
      <node concept="2tJIrI" id="70opIpozgyN" role="jymVt" />
      <node concept="3clFb_" id="70opIpo$yz6" role="jymVt">
        <property role="TrG5h" value="registerTrigger" />
        <node concept="3clFbS" id="70opIpo$yz9" role="3clF47">
          <node concept="3J1_TO" id="70opIpxrjxD" role="3cqZAp">
            <node concept="3uVAMA" id="70opIpxtNEJ" role="1zxBo5">
              <node concept="XOnhg" id="70opIpxtNEK" role="1zc67B">
                <property role="TrG5h" value="e1" />
                <node concept="nSUau" id="70opIpxtNEL" role="1tU5fm">
                  <node concept="3uibUv" id="70opIpxuDwT" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~NoSuchMethodException" resolve="NoSuchMethodException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="70opIpxtNEM" role="1zc67A">
                <node concept="3clFbF" id="70opIpxwewc" role="3cqZAp">
                  <node concept="2OqwBi" id="70opIpxx1fX" role="3clFbG">
                    <node concept="37vLTw" id="70opIpxwewb" role="2Oq$k0">
                      <ref role="3cqZAo" node="70opIpxtNEK" resolve="e" />
                    </node>
                    <node concept="liA8E" id="70opIpxxTA5" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="70opIpxA4vO" role="1zxBo5">
              <node concept="XOnhg" id="70opIpxA4vP" role="1zc67B">
                <property role="TrG5h" value="e2" />
                <node concept="nSUau" id="70opIpxA4vQ" role="1tU5fm">
                  <node concept="3uibUv" id="70opIpxAZhh" role="nSUat">
                    <ref role="3uigEE" to="wyt6:~IllegalAccessException" resolve="IllegalAccessException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="70opIpxA4vR" role="1zc67A">
                <node concept="3clFbF" id="70opIpxDmTu" role="3cqZAp">
                  <node concept="2OqwBi" id="70opIpxE9IY" role="3clFbG">
                    <node concept="37vLTw" id="70opIpxDmTt" role="2Oq$k0">
                      <ref role="3cqZAo" node="70opIpxA4vP" resolve="e" />
                    </node>
                    <node concept="liA8E" id="70opIpxF2ft" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="70opIpxKeyy" role="1zxBo5">
              <node concept="XOnhg" id="70opIpxKeyz" role="1zc67B">
                <property role="TrG5h" value="e3" />
                <node concept="nSUau" id="70opIpxKey$" role="1tU5fm">
                  <node concept="3uibUv" id="70opIpxLb$f" role="nSUat">
                    <ref role="3uigEE" to="t6h5:~InvocationTargetException" resolve="InvocationTargetException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="70opIpxKey_" role="1zc67A">
                <node concept="3clFbF" id="70opIpxMKAg" role="3cqZAp">
                  <node concept="2OqwBi" id="70opIpxNziR" role="3clFbG">
                    <node concept="37vLTw" id="70opIpxMKAf" role="2Oq$k0">
                      <ref role="3cqZAo" node="70opIpxKeyz" resolve="e3" />
                    </node>
                    <node concept="liA8E" id="70opIpxOq6R" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="70opIpxrjxF" role="1zxBo7">
              <node concept="3cpWs8" id="70opIpwMz8w" role="3cqZAp">
                <node concept="3cpWsn" id="70opIpwMz8x" role="3cpWs9">
                  <property role="TrG5h" value="callee" />
                  <node concept="3uibUv" id="70opIpwMz8y" role="1tU5fm">
                    <ref role="3uigEE" to="t6h5:~Method" resolve="Method" />
                  </node>
                  <node concept="2OqwBi" id="70opIpvX2tz" role="33vP2m">
                    <node concept="1rXfSq" id="70opIpvWm8T" role="2Oq$k0">
                      <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                    </node>
                    <node concept="liA8E" id="70opIpvXOEj" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Class.getDeclaredMethod(java.lang.String,java.lang.Class...)" resolve="getDeclaredMethod" />
                      <node concept="3cpWs3" id="70opIpw8C$U" role="37wK5m">
                        <node concept="3cpWs3" id="70opIpw7gsL" role="3uHU7B">
                          <node concept="3cpWs3" id="70opIpw5Sjg" role="3uHU7B">
                            <node concept="3cpWs3" id="70opIpw4wlf" role="3uHU7B">
                              <node concept="3cpWs3" id="70opIpw3361" role="3uHU7B">
                                <node concept="Xl_RD" id="70opIpvYA6P" role="3uHU7B">
                                  <property role="Xl_RC" value="triggered_" />
                                </node>
                                <node concept="2OqwBi" id="70opIpxVOTk" role="3uHU7w">
                                  <node concept="37vLTw" id="70opIpw3Osx" role="2Oq$k0">
                                    <ref role="3cqZAo" node="70opIpo_Ntz" resolve="triggerType" />
                                  </node>
                                  <node concept="liA8E" id="70opIpychHO" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                              <node concept="Xl_RD" id="70opIpw4wml" role="3uHU7w">
                                <property role="Xl_RC" value="_" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="70opIpxX_s5" role="3uHU7w">
                              <node concept="37vLTw" id="70opIpw6$nd" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpoAth0" resolve="targetType" />
                              </node>
                              <node concept="liA8E" id="70opIpyawv9" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="70opIpw7gtR" role="3uHU7w">
                            <property role="Xl_RC" value="_" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="70opIpy0dIj" role="3uHU7w">
                          <node concept="37vLTw" id="70opIpwaLKD" role="2Oq$k0">
                            <ref role="3cqZAo" node="70opIpoBshE" resolve="replyType" />
                          </node>
                          <node concept="liA8E" id="70opIpy15Qe" role="2OqNvi">
                            <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                      <node concept="3VsKOn" id="70opIpwzCFu" role="37wK5m">
                        <ref role="3VsUkX" to="wyt6:~Object" resolve="Object" />
                        <node concept="29HgVG" id="70opIpw_bga" role="lGtFl">
                          <node concept="3NFfHV" id="70opIpw_T1E" role="3NFExx">
                            <node concept="3clFbS" id="70opIpw_T1F" role="2VODD2">
                              <node concept="3cpWs8" id="70opIpw_T1G" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T1H" role="3cpWs9">
                                  <property role="TrG5h" value="subLanguage" />
                                  <node concept="3uibUv" id="70opIpw_T1I" role="1tU5fm">
                                    <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T1J" role="33vP2m">
                                    <node concept="2OqwBi" id="70opIpw_T1K" role="2Oq$k0">
                                      <node concept="2yIwOk" id="70opIpw_T1L" role="2OqNvi" />
                                      <node concept="2OqwBi" id="70opIpw_T1M" role="2Oq$k0">
                                        <node concept="1iwH7S" id="70opIpw_T1N" role="2Oq$k0" />
                                        <node concept="1psM6Z" id="70opIpw_T1O" role="2OqNvi">
                                          <ref role="1psM6Y" node="70opIprJ8Si" resolve="Language" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T1P" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T1Q" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T1R" role="3cpWs9">
                                  <property role="TrG5h" value="subModule" />
                                  <node concept="3uibUv" id="70opIpw_T1S" role="1tU5fm">
                                    <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T1T" role="33vP2m">
                                    <node concept="37vLTw" id="70opIpw_T1U" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpw_T1H" resolve="subLanguage" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T1V" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="70opIpw_T1W" role="3cqZAp">
                                <node concept="3clFbS" id="70opIpw_T1X" role="3clFbx">
                                  <node concept="3cpWs6" id="70opIpw_T1Y" role="3cqZAp">
                                    <node concept="10Nm6u" id="70opIpw_T1Z" role="3cqZAk" />
                                  </node>
                                </node>
                                <node concept="3clFbC" id="70opIpw_T20" role="3clFbw">
                                  <node concept="10Nm6u" id="70opIpw_T21" role="3uHU7w" />
                                  <node concept="37vLTw" id="70opIpw_T22" role="3uHU7B">
                                    <ref role="3cqZAo" node="70opIpw_T1R" resolve="subModule" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="70opIpw_T23" role="3cqZAp" />
                              <node concept="3cpWs8" id="70opIpw_T24" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T25" role="3cpWs9">
                                  <property role="TrG5h" value="structureAspects" />
                                  <node concept="3uibUv" id="70opIpw_T26" role="1tU5fm">
                                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                    <node concept="3uibUv" id="70opIpw_T27" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T28" role="33vP2m">
                                    <node concept="37vLTw" id="70opIpw_T29" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpw_T1R" resolve="subModule" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T2a" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                      <node concept="1bVj0M" id="70opIpw_T2b" role="37wK5m">
                                        <node concept="3clFbS" id="70opIpw_T2c" role="1bW5cS">
                                          <node concept="3clFbF" id="70opIpw_T2d" role="3cqZAp">
                                            <node concept="2OqwBi" id="70opIpw_T2e" role="3clFbG">
                                              <node concept="2OqwBi" id="70opIpw_T2f" role="2Oq$k0">
                                                <node concept="2OqwBi" id="70opIpw_T2g" role="2Oq$k0">
                                                  <node concept="37vLTw" id="70opIpw_T2h" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="70opIpw_T2m" resolve="model" />
                                                  </node>
                                                  <node concept="liA8E" id="70opIpw_T2i" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="70opIpw_T2j" role="2OqNvi">
                                                  <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="70opIpw_T2k" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                                <node concept="Xl_RD" id="70opIpw_T2l" role="37wK5m">
                                                  <property role="Xl_RC" value="structure" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTG" id="70opIpw_T2m" role="1bW2Oz">
                                          <property role="TrG5h" value="model" />
                                          <node concept="3uibUv" id="70opIpw_T2n" role="1tU5fm">
                                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T2o" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T2p" role="3cpWs9">
                                  <property role="TrG5h" value="structureAspect" />
                                  <node concept="3uibUv" id="70opIpw_T2q" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T2r" role="33vP2m">
                                    <node concept="2OqwBi" id="70opIpw_T2s" role="2Oq$k0">
                                      <node concept="2OqwBi" id="70opIpw_T2t" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpw_T2u" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpw_T25" resolve="structureAspects" />
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T2v" role="2OqNvi">
                                          <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpw_T2w" role="2OqNvi">
                                        <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T2x" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T2y" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T2z" role="3cpWs9">
                                  <property role="TrG5h" value="structures" />
                                  <node concept="3uibUv" id="70opIpw_T2$" role="1tU5fm">
                                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                    <node concept="3uibUv" id="70opIpw_T2_" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T2A" role="33vP2m">
                                    <node concept="2YIFZM" id="70opIpw_T2B" role="2Oq$k0">
                                      <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                      <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                      <node concept="2OqwBi" id="70opIpw_T2C" role="37wK5m">
                                        <node concept="2OqwBi" id="70opIpw_T2D" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpw_T2E" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpw_T2p" resolve="structureAspect" />
                                          </node>
                                          <node concept="liA8E" id="70opIpw_T2F" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T2G" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                        </node>
                                      </node>
                                      <node concept="3clFbT" id="70opIpw_T2H" role="37wK5m" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T2I" role="2OqNvi">
                                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                      <node concept="2YIFZM" id="70opIpw_T2J" role="37wK5m">
                                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                        <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                        <node concept="3uibUv" id="70opIpw_T2K" role="3PaCim">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T2L" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T2M" role="3cpWs9">
                                  <property role="TrG5h" value="manifestNode" />
                                  <node concept="3uibUv" id="70opIpw_T2N" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T2O" role="33vP2m">
                                    <node concept="2OqwBi" id="70opIpw_T2P" role="2Oq$k0">
                                      <node concept="2OqwBi" id="70opIpw_T2Q" role="2Oq$k0">
                                        <node concept="2OqwBi" id="70opIpw_T2R" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpw_T2S" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpw_T2z" resolve="structures" />
                                          </node>
                                          <node concept="liA8E" id="70opIpw_T2T" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T2U" role="2OqNvi">
                                          <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                                          <node concept="1bVj0M" id="70opIpw_T2V" role="37wK5m">
                                            <node concept="3clFbS" id="70opIpw_T2W" role="1bW5cS">
                                              <node concept="3clFbF" id="70opIpw_T2X" role="3cqZAp">
                                                <node concept="2OqwBi" id="70opIpw_T2Y" role="3clFbG">
                                                  <node concept="1PxgMI" id="70opIpw_T2Z" role="2Oq$k0">
                                                    <property role="1BlNFB" value="true" />
                                                    <node concept="chp4Y" id="70opIpw_T30" role="3oSUPX">
                                                      <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                                    </node>
                                                    <node concept="37vLTw" id="70opIpw_T31" role="1m5AlR">
                                                      <ref role="3cqZAo" node="70opIpw_T34" resolve="node" />
                                                    </node>
                                                  </node>
                                                  <node concept="2qgKlT" id="70opIpw_T32" role="2OqNvi">
                                                    <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                                    <node concept="35c_gC" id="70opIpw_T33" role="37wK5m">
                                                      <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTG" id="70opIpw_T34" role="1bW2Oz">
                                              <property role="TrG5h" value="node" />
                                              <node concept="3uibUv" id="70opIpw_T35" role="1tU5fm">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpw_T36" role="2OqNvi">
                                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                        <node concept="2YIFZM" id="70opIpw_T37" role="37wK5m">
                                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                          <node concept="3uibUv" id="70opIpw_T38" role="3PaCim">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T39" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="70opIpw_T3a" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="70opIpw_T3b" role="3cqZAp" />
                              <node concept="3cpWs8" id="70opIpw_T3c" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T3d" role="3cpWs9">
                                  <property role="TrG5h" value="languageName" />
                                  <node concept="17QB3L" id="70opIpw_T3e" role="1tU5fm" />
                                  <node concept="2OqwBi" id="70opIpw_T3f" role="33vP2m">
                                    <node concept="37vLTw" id="70opIpw_T3g" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpw_T2M" resolve="manifestNode" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T3h" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="70opIpw_T3i" role="3cqZAp" />
                              <node concept="3cpWs8" id="70opIpw_T3j" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T3k" role="3cpWs9">
                                  <property role="TrG5h" value="behaviorAspects" />
                                  <node concept="3uibUv" id="70opIpw_T3l" role="1tU5fm">
                                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                    <node concept="3uibUv" id="70opIpw_T3m" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T3n" role="33vP2m">
                                    <node concept="37vLTw" id="70opIpw_T3o" role="2Oq$k0">
                                      <ref role="3cqZAo" node="70opIpw_T1R" resolve="subModule" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T3p" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                                      <node concept="1bVj0M" id="70opIpw_T3q" role="37wK5m">
                                        <node concept="3clFbS" id="70opIpw_T3r" role="1bW5cS">
                                          <node concept="3clFbF" id="70opIpw_T3s" role="3cqZAp">
                                            <node concept="2OqwBi" id="70opIpw_T3t" role="3clFbG">
                                              <node concept="2OqwBi" id="70opIpw_T3u" role="2Oq$k0">
                                                <node concept="2OqwBi" id="70opIpw_T3v" role="2Oq$k0">
                                                  <node concept="37vLTw" id="70opIpw_T3w" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="70opIpw_T3_" resolve="model" />
                                                  </node>
                                                  <node concept="liA8E" id="70opIpw_T3x" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="70opIpw_T3y" role="2OqNvi">
                                                  <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                                </node>
                                              </node>
                                              <node concept="liA8E" id="70opIpw_T3z" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                                <node concept="Xl_RD" id="70opIpw_T3$" role="37wK5m">
                                                  <property role="Xl_RC" value="behavior" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTG" id="70opIpw_T3_" role="1bW2Oz">
                                          <property role="TrG5h" value="model" />
                                          <node concept="3uibUv" id="70opIpw_T3A" role="1tU5fm">
                                            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T3B" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T3C" role="3cpWs9">
                                  <property role="TrG5h" value="behaviorAspect" />
                                  <node concept="3uibUv" id="70opIpw_T3D" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T3E" role="33vP2m">
                                    <node concept="2OqwBi" id="70opIpw_T3F" role="2Oq$k0">
                                      <node concept="2OqwBi" id="70opIpw_T3G" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpw_T3H" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpw_T3k" resolve="behaviorAspects" />
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T3I" role="2OqNvi">
                                          <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpw_T3J" role="2OqNvi">
                                        <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T3K" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T3L" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T3M" role="3cpWs9">
                                  <property role="TrG5h" value="behaviors" />
                                  <node concept="3uibUv" id="70opIpw_T3N" role="1tU5fm">
                                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                    <node concept="3uibUv" id="70opIpw_T3O" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T3P" role="33vP2m">
                                    <node concept="2YIFZM" id="70opIpw_T3Q" role="2Oq$k0">
                                      <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                      <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                      <node concept="2OqwBi" id="70opIpw_T3R" role="37wK5m">
                                        <node concept="2OqwBi" id="70opIpw_T3S" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpw_T3T" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpw_T3C" resolve="behaviorAspect" />
                                          </node>
                                          <node concept="liA8E" id="70opIpw_T3U" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T3V" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                        </node>
                                      </node>
                                      <node concept="3clFbT" id="70opIpw_T3W" role="37wK5m" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T3X" role="2OqNvi">
                                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                      <node concept="2YIFZM" id="70opIpw_T3Y" role="37wK5m">
                                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                        <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                        <node concept="3uibUv" id="70opIpw_T3Z" role="3PaCim">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T40" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T41" role="3cpWs9">
                                  <property role="TrG5h" value="manifestBehavior" />
                                  <node concept="3uibUv" id="70opIpw_T42" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T43" role="33vP2m">
                                    <node concept="2OqwBi" id="70opIpw_T44" role="2Oq$k0">
                                      <node concept="2OqwBi" id="70opIpw_T45" role="2Oq$k0">
                                        <node concept="2OqwBi" id="70opIpw_T46" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpw_T47" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpw_T3M" resolve="behaviors" />
                                          </node>
                                          <node concept="liA8E" id="70opIpw_T48" role="2OqNvi">
                                            <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T49" role="2OqNvi">
                                          <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                                          <node concept="1bVj0M" id="70opIpw_T4a" role="37wK5m">
                                            <node concept="3clFbS" id="70opIpw_T4b" role="1bW5cS">
                                              <node concept="3clFbF" id="70opIpw_T4c" role="3cqZAp">
                                                <node concept="2OqwBi" id="70opIpw_T4d" role="3clFbG">
                                                  <node concept="2OqwBi" id="70opIpw_T4e" role="2Oq$k0">
                                                    <node concept="37vLTw" id="70opIpw_T4f" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="70opIpw_T4l" resolve="node" />
                                                    </node>
                                                    <node concept="liA8E" id="70opIpw_T4g" role="2OqNvi">
                                                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="70opIpw_T4h" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                                    <node concept="3cpWs3" id="70opIpw_T4i" role="37wK5m">
                                                      <node concept="Xl_RD" id="70opIpw_T4j" role="3uHU7w">
                                                        <property role="Xl_RC" value="_Behavior" />
                                                      </node>
                                                      <node concept="37vLTw" id="70opIpw_T4k" role="3uHU7B">
                                                        <ref role="3cqZAo" node="70opIpw_T3d" resolve="languageName" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="37vLTG" id="70opIpw_T4l" role="1bW2Oz">
                                              <property role="TrG5h" value="node" />
                                              <node concept="3uibUv" id="70opIpw_T4m" role="1tU5fm">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpw_T4n" role="2OqNvi">
                                        <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                        <node concept="2YIFZM" id="70opIpw_T4o" role="37wK5m">
                                          <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                          <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                          <node concept="3uibUv" id="70opIpw_T4p" role="3PaCim">
                                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T4q" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                      <node concept="3cmrfG" id="70opIpw_T4r" role="37wK5m">
                                        <property role="3cmrfH" value="0" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="70opIpw_T4s" role="3cqZAp" />
                              <node concept="3cpWs8" id="70opIpw_T4t" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T4u" role="3cpWs9">
                                  <property role="TrG5h" value="manifestFunctions" />
                                  <node concept="3uibUv" id="70opIpw_T4v" role="1tU5fm">
                                    <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                                    <node concept="3uibUv" id="70opIpw_T4w" role="11_B2D">
                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T4x" role="33vP2m">
                                    <node concept="2YIFZM" id="70opIpw_T4y" role="2Oq$k0">
                                      <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                                      <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                                      <node concept="2OqwBi" id="70opIpw_T4z" role="37wK5m">
                                        <node concept="2OqwBi" id="70opIpw_T4$" role="2Oq$k0">
                                          <node concept="37vLTw" id="70opIpw_T4_" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpw_T41" resolve="manifestBehavior" />
                                          </node>
                                          <node concept="liA8E" id="70opIpw_T4A" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="70opIpw_T4B" role="2OqNvi">
                                          <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                                        </node>
                                      </node>
                                      <node concept="3clFbT" id="70opIpw_T4C" role="37wK5m" />
                                    </node>
                                    <node concept="liA8E" id="70opIpw_T4D" role="2OqNvi">
                                      <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                                      <node concept="2YIFZM" id="70opIpw_T4E" role="37wK5m">
                                        <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                                        <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                                        <node concept="3uibUv" id="70opIpw_T4F" role="3PaCim">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3cpWs8" id="70opIpw_T4G" role="3cqZAp">
                                <node concept="3cpWsn" id="70opIpw_T4H" role="3cpWs9">
                                  <property role="TrG5h" value="typeFunction" />
                                  <node concept="3uibUv" id="70opIpw_T4I" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                  <node concept="2OqwBi" id="70opIpw_T4J" role="33vP2m">
                                    <node concept="2ShNRf" id="70opIpw_T4K" role="2Oq$k0">
                                      <node concept="2Jqq0_" id="70opIpw_T4L" role="2ShVmc">
                                        <node concept="3uibUv" id="70opIpw_T4M" role="HW$YZ">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpw_T4N" role="I$8f6">
                                          <ref role="3cqZAo" node="70opIpw_T4u" resolve="manifestFunctions" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="1z4cxt" id="70opIpw_T4O" role="2OqNvi">
                                      <node concept="1bVj0M" id="70opIpw_T4P" role="23t8la">
                                        <node concept="3clFbS" id="70opIpw_T4Q" role="1bW5cS">
                                          <node concept="3clFbF" id="70opIpw_T4R" role="3cqZAp">
                                            <node concept="2OqwBi" id="70opIpw_T4S" role="3clFbG">
                                              <node concept="Xl_RD" id="70opIpw_T4T" role="2Oq$k0">
                                                <property role="Xl_RC" value="classType" />
                                              </node>
                                              <node concept="liA8E" id="70opIpw_T4U" role="2OqNvi">
                                                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                                <node concept="2OqwBi" id="70opIpw_T4V" role="37wK5m">
                                                  <node concept="0kSF2" id="70opIpw_T4W" role="2Oq$k0">
                                                    <node concept="3uibUv" id="70opIpw_T4X" role="0kSFW">
                                                      <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                    </node>
                                                    <node concept="37vLTw" id="70opIpw_T4Y" role="0kSFX">
                                                      <ref role="3cqZAo" node="70opIpw_T50" resolve="it" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="70opIpw_T4Z" role="2OqNvi">
                                                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="Rh6nW" id="70opIpw_T50" role="1bW2Oz">
                                          <property role="TrG5h" value="it" />
                                          <node concept="2jxLKc" id="70opIpw_T51" role="1tU5fm" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbH" id="70opIpw_T52" role="3cqZAp" />
                              <node concept="3cpWs6" id="70opIpw_T53" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpxkljM" role="3cqZAk">
                                  <node concept="1PxgMI" id="70opIpxiJ2k" role="2Oq$k0">
                                    <property role="1BlNFB" value="true" />
                                    <node concept="chp4Y" id="70opIpxjyNN" role="3oSUPX">
                                      <ref role="cht4Q" to="tpee:fzclF8j" resolve="ExpressionStatement" />
                                    </node>
                                    <node concept="2OqwBi" id="70opIpxfcM6" role="1m5AlR">
                                      <node concept="1PxgMI" id="70opIpxdBQt" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIpxeqnF" role="3oSUPX">
                                          <ref role="cht4Q" to="tpee:fzclF80" resolve="StatementList" />
                                        </node>
                                        <node concept="2OqwBi" id="70opIpw_T54" role="1m5AlR">
                                          <node concept="1PxgMI" id="70opIpw_T55" role="2Oq$k0">
                                            <property role="1BlNFB" value="true" />
                                            <node concept="chp4Y" id="70opIpw_T56" role="3oSUPX">
                                              <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                                            </node>
                                            <node concept="37vLTw" id="70opIpw_T57" role="1m5AlR">
                                              <ref role="3cqZAo" node="70opIpw_T4H" resolve="typeFunction" />
                                            </node>
                                          </node>
                                          <node concept="2qgKlT" id="70opIpw_T58" role="2OqNvi">
                                            <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIpxg8lT" role="2OqNvi">
                                        <ref role="37wK5l" to="tpek:28aPEVv8l7T" resolve="getLastStatement" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="70opIpxlheL" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpee:fzclF8k" resolve="expression" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3VsKOn" id="70opIpwsBPN" role="37wK5m">
                        <ref role="3VsUkX" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="3VsKOn" id="70opIpwtv7o" role="37wK5m">
                        <ref role="3VsUkX" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="3VsKOn" id="70opIpwF2qS" role="37wK5m">
                        <ref role="3VsUkX" to="wyt6:~Object" resolve="Object" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="70opIpwPuFg" role="3cqZAp">
                <node concept="2OqwBi" id="70opIpwQbHh" role="3clFbG">
                  <node concept="37vLTw" id="70opIpwPuFe" role="2Oq$k0">
                    <ref role="3cqZAo" node="70opIpwMz8x" resolve="callee" />
                  </node>
                  <node concept="liA8E" id="70opIpwR32q" role="2OqNvi">
                    <ref role="37wK5l" to="t6h5:~Method.invoke(java.lang.Object,java.lang.Object...)" resolve="invoke" />
                    <node concept="Xjq3P" id="70opIpyk3$O" role="37wK5m" />
                    <node concept="37vLTw" id="70opIpwRPSG" role="37wK5m">
                      <ref role="3cqZAo" node="49WvUPtZV9W" resolve="state" />
                    </node>
                    <node concept="37vLTw" id="70opIpwUj0N" role="37wK5m">
                      <ref role="3cqZAo" node="70opIpoM9ft" resolve="target" />
                    </node>
                    <node concept="37vLTw" id="70opIpwV5IM" role="37wK5m">
                      <ref role="3cqZAo" node="70opIppbPQk" resolve="message" />
                    </node>
                    <node concept="37vLTw" id="70opIpwVYal" role="37wK5m">
                      <ref role="3cqZAo" node="70opIpoCbg_" resolve="reply" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="70opIpozRRD" role="1B3o_S" />
        <node concept="3cqZAl" id="70opIpo$uE2" role="3clF45" />
        <node concept="37vLTG" id="70opIpo_Ntz" role="3clF46">
          <property role="TrG5h" value="triggerType" />
          <node concept="2ZThk1" id="70opIpo_Nty" role="1tU5fm">
            <ref role="2ZWj4r" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpoAth0" role="3clF46">
          <property role="TrG5h" value="targetType" />
          <node concept="2ZThk1" id="70opIpoB6E7" role="1tU5fm">
            <ref role="2ZWj4r" to="7xvd:70opIpldL4f" resolve="TargetType" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpoM9ft" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="70opIpoMMDf" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIppbPQk" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="3uibUv" id="70opIppczOm" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpoBshE" role="3clF46">
          <property role="TrG5h" value="replyType" />
          <node concept="2ZThk1" id="70opIpoC8$g" role="1tU5fm">
            <ref role="2ZWj4r" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpoCbg_" role="3clF46">
          <property role="TrG5h" value="reply" />
          <node concept="3uibUv" id="70opIpoCOYD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="70opIpqvoKu" role="jymVt" />
      <node concept="3clFb_" id="70opIpqxuc8" role="jymVt">
        <property role="TrG5h" value="triggered_" />
        <node concept="3clFbS" id="70opIpqxucb" role="3clF47">
          <node concept="3cpWs6" id="70opIpqW1LI" role="3cqZAp">
            <node concept="10Nm6u" id="70opIpqXtVI" role="3cqZAk" />
            <node concept="2b32R4" id="70opIpqYZz8" role="lGtFl">
              <node concept="3JmXsc" id="70opIpqYZz9" role="2P8S$">
                <node concept="3clFbS" id="70opIpqYZza" role="2VODD2">
                  <node concept="3cpWs8" id="70opIpqZFQF" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFQG" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpqZFQH" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFQI" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpqZFQJ" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIprKrIn" role="2Oq$k0">
                            <node concept="1iwH7S" id="70opIprKp0w" role="2Oq$k0" />
                            <node concept="1psM6Z" id="70opIprKurR" role="2OqNvi">
                              <ref role="1psM6Y" node="70opIprJ8Si" resolve="Language" />
                            </node>
                          </node>
                          <node concept="2yIwOk" id="70opIpqZFQL" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFQM" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFQN" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFQO" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpqZFQP" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFQQ" role="33vP2m">
                        <node concept="37vLTw" id="70opIpqZFQR" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpqZFQG" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFQS" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpqZFQT" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpqZFQU" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpqZFQV" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpqZFQW" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpqZFQX" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpqZFQY" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpqZFQZ" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpqZFQO" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpqZFR0" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpqZFR1" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFR2" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIpqZFR3" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpqZFR4" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFR5" role="33vP2m">
                        <node concept="37vLTw" id="70opIpqZFR6" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpqZFQO" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFR7" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpqZFR8" role="37wK5m">
                            <node concept="3clFbS" id="70opIpqZFR9" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpqZFRa" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpqZFRb" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpqZFRc" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpqZFRd" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpqZFRe" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpqZFRj" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpqZFRf" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpqZFRg" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpqZFRh" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpqZFRi" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpqZFRj" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpqZFRk" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFRl" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFRm" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIpqZFRn" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFRo" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpqZFRp" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpqZFRq" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpqZFRr" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpqZFR2" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpqZFRs" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpqZFRt" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpqZFRu" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFRv" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFRw" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIpqZFRx" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpqZFRy" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFRz" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpqZFR$" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpqZFR_" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpqZFRA" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqZFRB" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqZFRm" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpqZFRC" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqZFRD" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpqZFRE" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFRF" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpqZFRG" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpqZFRH" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFRI" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFRJ" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIpqZFRK" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFRL" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpqZFRM" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpqZFRN" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpqZFRO" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqZFRP" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqZFRw" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIpqZFRQ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqZFRR" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpqZFRS" role="37wK5m">
                                <node concept="3clFbS" id="70opIpqZFRT" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpqZFRU" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpqZFRV" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIpqZFRW" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIpqZFRX" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpqZFRY" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIpqZFS1" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIpqZFRZ" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIpqZFS0" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpqZFS1" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpqZFS2" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpqZFS3" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpqZFS4" role="37wK5m">
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <node concept="3uibUv" id="70opIpqZFS5" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpqZFS6" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpqZFS7" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpqZFS8" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpqZFS9" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFSa" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIpqZFSb" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIpqZFSc" role="33vP2m">
                        <node concept="37vLTw" id="70opIpqZFSd" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpqZFRJ" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFSe" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpqZFSf" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpqZFSg" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFSh" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIpqZFSi" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpqZFSj" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFSk" role="33vP2m">
                        <node concept="37vLTw" id="70opIpqZFSl" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpqZFQO" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFSm" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpqZFSn" role="37wK5m">
                            <node concept="3clFbS" id="70opIpqZFSo" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpqZFSp" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpqZFSq" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpqZFSr" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpqZFSs" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpqZFSt" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpqZFSy" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpqZFSu" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpqZFSv" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpqZFSw" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpqZFSx" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpqZFSy" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpqZFSz" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFS$" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFS_" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpqZFSA" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFSB" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpqZFSC" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpqZFSD" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpqZFSE" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpqZFSh" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpqZFSF" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpqZFSG" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpqZFSH" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFSI" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFSJ" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpqZFSK" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpqZFSL" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFSM" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpqZFSN" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpqZFSO" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpqZFSP" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqZFSQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqZFS_" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpqZFSR" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqZFSS" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpqZFST" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFSU" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpqZFSV" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpqZFSW" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpqZFSX" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFSY" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIpqZFSZ" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFT0" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpqZFT1" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpqZFT2" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpqZFT3" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqZFT4" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqZFSJ" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIpqZFT5" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqZFT6" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpqZFT7" role="37wK5m">
                                <node concept="3clFbS" id="70opIpqZFT8" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpqZFT9" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpqZFTa" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIpqZFTb" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpqZFTc" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpqZFTi" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIpqZFTd" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpqZFTe" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIpqZFTf" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIpqZFTg" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpqZFTh" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIpqZFSa" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpqZFTi" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpqZFTj" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpqZFTk" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpqZFTl" role="37wK5m">
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <node concept="3uibUv" id="70opIpqZFTm" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpqZFTn" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpqZFTo" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpqZFTp" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpqZFTq" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpqZFTr" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIpqZFTs" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpqZFTt" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZFTu" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpqZFTv" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpqZFTw" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpqZFTx" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqZFTy" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqZFSY" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpqZFTz" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqZFT$" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpqZFT_" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpqZFTA" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpqZFTB" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIpqZFTC" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="70opIpqZU_g" role="3cqZAp">
                    <node concept="3uVAMA" id="70opIpr06pX" role="1zxBo5">
                      <node concept="XOnhg" id="70opIpr06pY" role="1zc67B">
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="70opIpr06pZ" role="1tU5fm">
                          <node concept="3uibUv" id="70opIpr08s4" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~NullPointerException" resolve="NullPointerException" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="70opIpr06q0" role="1zc67A">
                        <node concept="3clFbF" id="70opIpr0ddn" role="3cqZAp">
                          <node concept="2OqwBi" id="70opIpr0eTL" role="3clFbG">
                            <node concept="37vLTw" id="70opIpr0ddm" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpr06pY" resolve="e" />
                            </node>
                            <node concept="liA8E" id="70opIpr0ggi" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="70opIpr0iIB" role="3cqZAp">
                          <node concept="2ShNRf" id="70opIpr0l8w" role="3cqZAk">
                            <node concept="2Jqq0_" id="70opIpr0UFg" role="2ShVmc">
                              <node concept="3Tqbb2" id="70opIpr12kL" role="HW$YZ" />
                              <node concept="2c44tf" id="70opIpstjuz" role="HW$Y0">
                                <node concept="10Nm6u" id="70opIpstkzH" role="2c44tc" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbS" id="70opIpqZU_i" role="1zxBo7">
                      <node concept="3cpWs8" id="70opIpqZFTD" role="3cqZAp">
                        <node concept="3cpWsn" id="70opIpqZFTE" role="3cpWs9">
                          <property role="TrG5h" value="typeFunction" />
                          <node concept="3uibUv" id="70opIpqZFTF" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="70opIpqZFTG" role="33vP2m">
                            <node concept="2ShNRf" id="70opIpqZFTH" role="2Oq$k0">
                              <node concept="2Jqq0_" id="70opIpqZFTI" role="2ShVmc">
                                <node concept="3uibUv" id="70opIpqZFTJ" role="HW$YZ">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="37vLTw" id="70opIpqZFTK" role="I$8f6">
                                  <ref role="3cqZAo" node="70opIpqZFTr" resolve="manifestFunctions" />
                                </node>
                              </node>
                            </node>
                            <node concept="1z4cxt" id="70opIpqZFTL" role="2OqNvi">
                              <node concept="1bVj0M" id="70opIpqZFTM" role="23t8la">
                                <node concept="3clFbS" id="70opIpqZFTN" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpqZFTO" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpqZFTP" role="3clFbG">
                                      <node concept="1eOMI4" id="70opIpqZFTQ" role="2Oq$k0">
                                        <node concept="3cpWs3" id="70opIpqZFTR" role="1eOMHV">
                                          <node concept="2OqwBi" id="70opIpqZFTS" role="3uHU7w">
                                            <node concept="2OqwBi" id="70opIpqZFTT" role="2Oq$k0">
                                              <node concept="1iwH7S" id="70opIpqZFTU" role="2Oq$k0" />
                                              <node concept="1psM6Z" id="70opIpqZFTV" role="2OqNvi">
                                                <ref role="1psM6Y" node="70opIpqJ1xH" resolve="ReplyType" />
                                              </node>
                                            </node>
                                            <node concept="2qgKlT" id="70opIpqZFTW" role="2OqNvi">
                                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="70opIpqZFTX" role="3uHU7B">
                                            <node concept="3cpWs3" id="70opIpqZFTY" role="3uHU7B">
                                              <node concept="3cpWs3" id="70opIpqZFTZ" role="3uHU7B">
                                                <node concept="3cpWs3" id="70opIpqZFU0" role="3uHU7B">
                                                  <node concept="Xl_RD" id="70opIpqZFU1" role="3uHU7B">
                                                    <property role="Xl_RC" value="triggered_" />
                                                  </node>
                                                  <node concept="2OqwBi" id="70opIpqZFU2" role="3uHU7w">
                                                    <node concept="2OqwBi" id="70opIpqZFU3" role="2Oq$k0">
                                                      <node concept="1iwH7S" id="70opIpqZFU4" role="2Oq$k0" />
                                                      <node concept="1psM6Z" id="70opIpqZFU5" role="2OqNvi">
                                                        <ref role="1psM6Y" node="70opIpqNc54" resolve="TriggerType" />
                                                      </node>
                                                    </node>
                                                    <node concept="2qgKlT" id="70opIpqZFU6" role="2OqNvi">
                                                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="Xl_RD" id="70opIpqZFU7" role="3uHU7w">
                                                  <property role="Xl_RC" value="_" />
                                                </node>
                                              </node>
                                              <node concept="2OqwBi" id="70opIpqZFU8" role="3uHU7w">
                                                <node concept="2OqwBi" id="70opIpqZFU9" role="2Oq$k0">
                                                  <node concept="1iwH7S" id="70opIpqZFUa" role="2Oq$k0" />
                                                  <node concept="1psM6Z" id="70opIpqZFUb" role="2OqNvi">
                                                    <ref role="1psM6Y" node="70opIpqRqql" resolve="TargetType" />
                                                  </node>
                                                </node>
                                                <node concept="2qgKlT" id="70opIpqZFUc" role="2OqNvi">
                                                  <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="70opIpqZFUd" role="3uHU7w">
                                              <property role="Xl_RC" value="_" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpqZFUe" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="2OqwBi" id="70opIpqZFUf" role="37wK5m">
                                          <node concept="0kSF2" id="70opIpqZFUg" role="2Oq$k0">
                                            <node concept="3uibUv" id="70opIpqZFUh" role="0kSFW">
                                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                            </node>
                                            <node concept="37vLTw" id="70opIpqZFUi" role="0kSFX">
                                              <ref role="3cqZAo" node="70opIpqZFUk" resolve="it" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="70opIpqZFUj" role="2OqNvi">
                                            <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="70opIpqZFUk" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="70opIpqZFUl" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs6" id="70opIpqZFUn" role="3cqZAp">
                        <node concept="2OqwBi" id="70opIpqZFUo" role="3cqZAk">
                          <node concept="2OqwBi" id="70opIpqZFUp" role="2Oq$k0">
                            <node concept="1PxgMI" id="70opIpqZFUq" role="2Oq$k0">
                              <property role="1BlNFB" value="true" />
                              <node concept="chp4Y" id="70opIpqZFUr" role="3oSUPX">
                                <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                              </node>
                              <node concept="37vLTw" id="70opIpqZFUs" role="1m5AlR">
                                <ref role="3cqZAo" node="70opIpqZFTE" resolve="typeFunction" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="70opIpqZFUt" role="2OqNvi">
                              <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                            </node>
                          </node>
                          <node concept="32TBzR" id="70opIpqZFUu" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpqZFUm" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="70opIpqwIxS" role="1B3o_S" />
        <node concept="3cqZAl" id="70opIpqxtX5" role="3clF45" />
        <node concept="37vLTG" id="70opIprP_cl" role="3clF46">
          <property role="TrG5h" value="state" />
          <node concept="3uibUv" id="70opIprQxVx" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            <node concept="29HgVG" id="70opIprQxVy" role="lGtFl">
              <node concept="3NFfHV" id="70opIprQxVz" role="3NFExx">
                <node concept="3clFbS" id="70opIprQxV$" role="2VODD2">
                  <node concept="3cpWs8" id="70opIprQxV_" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxVA" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIprQxVB" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxVC" role="33vP2m">
                        <node concept="2OqwBi" id="70opIprQxVD" role="2Oq$k0">
                          <node concept="2yIwOk" id="70opIprQxVF" role="2OqNvi" />
                          <node concept="2OqwBi" id="70opIprQRi2" role="2Oq$k0">
                            <node concept="1iwH7S" id="70opIprQNZr" role="2Oq$k0" />
                            <node concept="1psM6Z" id="70opIprQUsG" role="2OqNvi">
                              <ref role="1psM6Y" node="70opIprJ8Si" resolve="Language" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIprQxVG" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxVH" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxVI" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIprQxVJ" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxVK" role="33vP2m">
                        <node concept="37vLTw" id="70opIprQxVL" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIprQxVA" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIprQxVM" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIprQxVN" role="3cqZAp">
                    <node concept="3clFbS" id="70opIprQxVO" role="3clFbx">
                      <node concept="3cpWs6" id="70opIprQxVP" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIprQxVQ" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIprQxVR" role="3clFbw">
                      <node concept="10Nm6u" id="70opIprQxVS" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIprQxVT" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIprQxVI" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIprQxVU" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIprQxVV" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxVW" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIprQxVX" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIprQxVY" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIprQxVZ" role="33vP2m">
                        <node concept="37vLTw" id="70opIprQxW0" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIprQxVI" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIprQxW1" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIprQxW2" role="37wK5m">
                            <node concept="3clFbS" id="70opIprQxW3" role="1bW5cS">
                              <node concept="3clFbF" id="70opIprQxW4" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIprQxW5" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIprQxW6" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIprQxW7" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIprQxW8" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIprQxWd" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIprQxW9" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIprQxWa" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIprQxWb" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIprQxWc" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIprQxWd" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIprQxWe" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxWf" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxWg" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIprQxWh" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxWi" role="33vP2m">
                        <node concept="2OqwBi" id="70opIprQxWj" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIprQxWk" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIprQxWl" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIprQxVW" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIprQxWm" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIprQxWn" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIprQxWo" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxWp" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxWq" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIprQxWr" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIprQxWs" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIprQxWt" role="33vP2m">
                        <node concept="2YIFZM" id="70opIprQxWu" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIprQxWv" role="37wK5m">
                            <node concept="2OqwBi" id="70opIprQxWw" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIprQxWx" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIprQxWg" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIprQxWy" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIprQxWz" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIprQxW$" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIprQxW_" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIprQxWA" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIprQxWB" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxWC" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxWD" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIprQxWE" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxWF" role="33vP2m">
                        <node concept="2OqwBi" id="70opIprQxWG" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIprQxWH" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIprQxWI" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIprQxWJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIprQxWq" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIprQxWK" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIprQxWL" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIprQxWM" role="37wK5m">
                                <node concept="3clFbS" id="70opIprQxWN" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIprQxWO" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIprQxWP" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIprQxWQ" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIprQxWR" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIprQxWS" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIprQxWV" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIprQxWT" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIprQxWU" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIprQxWV" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIprQxWW" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIprQxWX" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIprQxWY" role="37wK5m">
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <node concept="3uibUv" id="70opIprQxWZ" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIprQxX0" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIprQxX1" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIprQxX2" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIprQxX3" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxX4" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIprQxX5" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIprQxX6" role="33vP2m">
                        <node concept="37vLTw" id="70opIprQxX7" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIprQxWD" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIprQxX8" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIprQxX9" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIprQxXa" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxXb" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIprQxXc" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIprQxXd" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIprQxXe" role="33vP2m">
                        <node concept="37vLTw" id="70opIprQxXf" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIprQxVI" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIprQxXg" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIprQxXh" role="37wK5m">
                            <node concept="3clFbS" id="70opIprQxXi" role="1bW5cS">
                              <node concept="3clFbF" id="70opIprQxXj" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIprQxXk" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIprQxXl" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIprQxXm" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIprQxXn" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIprQxXs" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIprQxXo" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIprQxXp" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIprQxXq" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIprQxXr" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIprQxXs" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIprQxXt" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxXu" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxXv" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIprQxXw" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxXx" role="33vP2m">
                        <node concept="2OqwBi" id="70opIprQxXy" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIprQxXz" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIprQxX$" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIprQxXb" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIprQxX_" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIprQxXA" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIprQxXB" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxXC" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxXD" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIprQxXE" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIprQxXF" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIprQxXG" role="33vP2m">
                        <node concept="2YIFZM" id="70opIprQxXH" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIprQxXI" role="37wK5m">
                            <node concept="2OqwBi" id="70opIprQxXJ" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIprQxXK" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIprQxXv" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIprQxXL" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIprQxXM" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIprQxXN" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIprQxXO" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIprQxXP" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIprQxXQ" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxXR" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxXS" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIprQxXT" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxXU" role="33vP2m">
                        <node concept="2OqwBi" id="70opIprQxXV" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIprQxXW" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIprQxXX" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIprQxXY" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIprQxXD" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIprQxXZ" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIprQxY0" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIprQxY1" role="37wK5m">
                                <node concept="3clFbS" id="70opIprQxY2" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIprQxY3" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIprQxY4" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIprQxY5" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIprQxY6" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIprQxYc" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIprQxY7" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIprQxY8" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIprQxY9" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIprQxYa" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIprQxYb" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIprQxX4" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIprQxYc" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIprQxYd" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIprQxYe" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIprQxYf" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIprQxYg" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIprQxYh" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIprQxYi" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIprQxYj" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIprQxYk" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxYl" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIprQxYm" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIprQxYn" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIprQxYo" role="33vP2m">
                        <node concept="2YIFZM" id="70opIprQxYp" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIprQxYq" role="37wK5m">
                            <node concept="2OqwBi" id="70opIprQxYr" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIprQxYs" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIprQxXS" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIprQxYt" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIprQxYu" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIprQxYv" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIprQxYw" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIprQxYx" role="37wK5m">
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <node concept="3uibUv" id="70opIprQxYy" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIprQxYz" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIprQxY$" role="3cpWs9">
                      <property role="TrG5h" value="typeFunction" />
                      <node concept="3uibUv" id="70opIprQxY_" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIprQxYA" role="33vP2m">
                        <node concept="2ShNRf" id="70opIprQxYB" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIprQxYC" role="2ShVmc">
                            <node concept="3uibUv" id="70opIprQxYD" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIprQxYE" role="I$8f6">
                              <ref role="3cqZAo" node="70opIprQxYl" resolve="manifestFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIprQxYF" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIprQxYG" role="23t8la">
                            <node concept="3clFbS" id="70opIprQxYH" role="1bW5cS">
                              <node concept="3clFbF" id="70opIprQxYI" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIprQxYJ" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIprQxYK" role="2Oq$k0">
                                    <property role="Xl_RC" value="type" />
                                  </node>
                                  <node concept="liA8E" id="70opIprQxYL" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIprQxYM" role="37wK5m">
                                      <node concept="0kSF2" id="70opIprQxYN" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIprQxYO" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIprQxYP" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIprQxYR" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIprQxYQ" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIprQxYR" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIprQxYS" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIprQxYT" role="3cqZAp" />
                  <node concept="3cpWs6" id="70opIprQxYU" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIprQxYV" role="3cqZAk">
                      <node concept="1PxgMI" id="70opIprQxYW" role="2Oq$k0">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="70opIprQxYX" role="3oSUPX">
                          <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                        </node>
                        <node concept="37vLTw" id="70opIprQxYY" role="1m5AlR">
                          <ref role="3cqZAo" node="70opIprQxY$" resolve="typeFunction" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="70opIprQxYZ" role="2OqNvi">
                        <ref role="37wK5l" to="tpek:i2fhBNC" resolve="getExpectedRetType" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="70opIpqydYE" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="3uibUv" id="70opIpqydYD" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpqye5h" role="3clF46">
          <property role="TrG5h" value="message" />
          <node concept="3uibUv" id="70opIpslGEu" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="37vLTG" id="70opIpqySZ3" role="3clF46">
          <property role="TrG5h" value="reply" />
          <node concept="3uibUv" id="70opIpqzBnT" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="1WS0z7" id="70opIpqO$EM" role="lGtFl">
          <node concept="3JmXsc" id="70opIpqO$EN" role="3Jn$fo">
            <node concept="3clFbS" id="70opIpqO$EO" role="2VODD2">
              <node concept="3clFbF" id="70opIpqPimw" role="3cqZAp">
                <node concept="2OqwBi" id="70opIpqPimx" role="3clFbG">
                  <node concept="2OqwBi" id="70opIpqPimy" role="2Oq$k0">
                    <node concept="1XH99k" id="70opIpqPimz" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
                    </node>
                    <node concept="2ViDtN" id="70opIpqPim$" role="2OqNvi" />
                  </node>
                  <node concept="3$u5V9" id="70opIpqPim_" role="2OqNvi">
                    <node concept="1bVj0M" id="70opIpqPimA" role="23t8la">
                      <node concept="3clFbS" id="70opIpqPimB" role="1bW5cS">
                        <node concept="3clFbF" id="70opIpqPimC" role="3cqZAp">
                          <node concept="2OqwBi" id="70opIpqPimD" role="3clFbG">
                            <node concept="2OqwBi" id="70opIpqPimE" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqPimF" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqPimR" resolve="it" />
                              </node>
                              <node concept="liA8E" id="70opIpqPimG" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getSourceNode()" resolve="getSourceNode" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqPimH" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="70opIpqPimI" role="37wK5m">
                                <node concept="2OqwBi" id="70opIpqPimJ" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpqPimK" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpqPimL" role="2Oq$k0">
                                      <node concept="30H73N" id="70opIpqPimM" role="2Oq$k0" />
                                      <node concept="2yIwOk" id="70opIpqPimN" role="2OqNvi" />
                                    </node>
                                    <node concept="liA8E" id="70opIpqPimO" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpqPimP" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpqPimQ" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="70opIpqPimR" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="70opIpqPimS" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ps_y7" id="70opIpqNc53" role="lGtFl">
          <node concept="1ps_xZ" id="70opIpqNc54" role="1ps_xO">
            <property role="TrG5h" value="TriggerType" />
            <node concept="2jfdEK" id="70opIpqNc55" role="1ps_xN">
              <node concept="3clFbS" id="70opIpqNc56" role="2VODD2">
                <node concept="3clFbF" id="70opIpqTC5L" role="3cqZAp">
                  <node concept="30H73N" id="70opIpqTC5N" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="70opIpqKu$H" role="lGtFl">
          <node concept="3JmXsc" id="70opIpqKu$I" role="3Jn$fo">
            <node concept="3clFbS" id="70opIpqKu$J" role="2VODD2">
              <node concept="3clFbF" id="70opIpqPjYr" role="3cqZAp">
                <node concept="2OqwBi" id="70opIpqPjYs" role="3clFbG">
                  <node concept="2OqwBi" id="70opIpqPjYt" role="2Oq$k0">
                    <node concept="1XH99k" id="70opIpqPjYu" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:70opIpldL4f" resolve="TargetType" />
                    </node>
                    <node concept="2ViDtN" id="70opIpqPjYv" role="2OqNvi" />
                  </node>
                  <node concept="3$u5V9" id="70opIpqPjYw" role="2OqNvi">
                    <node concept="1bVj0M" id="70opIpqPjYx" role="23t8la">
                      <node concept="3clFbS" id="70opIpqPjYy" role="1bW5cS">
                        <node concept="3clFbF" id="70opIpqPjYz" role="3cqZAp">
                          <node concept="2OqwBi" id="70opIpqPjY$" role="3clFbG">
                            <node concept="2OqwBi" id="70opIpqPjY_" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqPjYA" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqPjYM" resolve="it" />
                              </node>
                              <node concept="liA8E" id="70opIpqPjYB" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getSourceNode()" resolve="getSourceNode" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqPjYC" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="70opIpqPjYD" role="37wK5m">
                                <node concept="2OqwBi" id="70opIpqPjYE" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpqPjYF" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpqPjYG" role="2Oq$k0">
                                      <node concept="30H73N" id="70opIpqPjYH" role="2Oq$k0" />
                                      <node concept="2yIwOk" id="70opIpqPjYI" role="2OqNvi" />
                                    </node>
                                    <node concept="liA8E" id="70opIpqPjYJ" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpqPjYK" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpqPjYL" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="70opIpqPjYM" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="70opIpqPjYN" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ps_y7" id="70opIpqGmQt" role="lGtFl">
          <node concept="1ps_xZ" id="70opIpqRqql" role="1ps_xO">
            <property role="TrG5h" value="TargetType" />
            <node concept="2jfdEK" id="70opIpqRqqm" role="1ps_xN">
              <node concept="3clFbS" id="70opIpqRqqn" role="2VODD2">
                <node concept="3clFbF" id="70opIpqTCh$" role="3cqZAp">
                  <node concept="30H73N" id="70opIpqTChA" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1WS0z7" id="70opIpqLRgZ" role="lGtFl">
          <node concept="3JmXsc" id="70opIpqLRh0" role="3Jn$fo">
            <node concept="3clFbS" id="70opIpqLRh1" role="2VODD2">
              <node concept="3clFbF" id="70opIpqTAZK" role="3cqZAp">
                <node concept="2OqwBi" id="70opIpqTAZL" role="3clFbG">
                  <node concept="2OqwBi" id="70opIpqTAZM" role="2Oq$k0">
                    <node concept="1XH99k" id="70opIpqTAZN" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                    </node>
                    <node concept="2ViDtN" id="70opIpqTAZO" role="2OqNvi" />
                  </node>
                  <node concept="3$u5V9" id="70opIpqTAZP" role="2OqNvi">
                    <node concept="1bVj0M" id="70opIpqTAZQ" role="23t8la">
                      <node concept="3clFbS" id="70opIpqTAZR" role="1bW5cS">
                        <node concept="3clFbF" id="70opIpqTAZS" role="3cqZAp">
                          <node concept="2OqwBi" id="70opIpqTAZT" role="3clFbG">
                            <node concept="2OqwBi" id="70opIpqTAZU" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpqTAZV" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpqTB07" resolve="it" />
                              </node>
                              <node concept="liA8E" id="70opIpqTAZW" role="2OqNvi">
                                <ref role="37wK5l" to="c17a:~SEnumerationLiteral.getSourceNode()" resolve="getSourceNode" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpqTAZX" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                              <node concept="2OqwBi" id="70opIpqTAZY" role="37wK5m">
                                <node concept="2OqwBi" id="70opIpqTAZZ" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpqTB00" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpqTB01" role="2Oq$k0">
                                      <node concept="30H73N" id="70opIpqTB02" role="2Oq$k0" />
                                      <node concept="2yIwOk" id="70opIpqTB03" role="2OqNvi" />
                                    </node>
                                    <node concept="liA8E" id="70opIpqTB04" role="2OqNvi">
                                      <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpqTB05" role="2OqNvi">
                                    <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="70opIpqTB06" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SModule.getRepository()" resolve="getRepository" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="70opIpqTB07" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="70opIpqTB08" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1ps_y7" id="70opIpqJ1xG" role="lGtFl">
          <node concept="1ps_xZ" id="70opIpqJ1xH" role="1ps_xO">
            <property role="TrG5h" value="ReplyType" />
            <node concept="2jfdEK" id="70opIpqJ1xI" role="1ps_xN">
              <node concept="3clFbS" id="70opIpqJ1xJ" role="2VODD2">
                <node concept="3clFbF" id="70opIpqTC_9" role="3cqZAp">
                  <node concept="30H73N" id="70opIpqTC_b" role="3clFbG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="17Uvod" id="70opIpqEaxx" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="70opIpqEaxy" role="3zH0cK">
            <node concept="3clFbS" id="70opIpqEaxz" role="2VODD2">
              <node concept="3clFbF" id="70opIpqZNh5" role="3cqZAp">
                <node concept="3cpWs3" id="70opIpqZNh7" role="3clFbG">
                  <node concept="2OqwBi" id="70opIpqZNh8" role="3uHU7w">
                    <node concept="2OqwBi" id="70opIpqZNh9" role="2Oq$k0">
                      <node concept="1iwH7S" id="70opIpqZNha" role="2Oq$k0" />
                      <node concept="1psM6Z" id="70opIpqZNhb" role="2OqNvi">
                        <ref role="1psM6Y" node="70opIpqJ1xH" resolve="ReplyType" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="70opIpqZNhc" role="2OqNvi">
                      <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="70opIpqZNhd" role="3uHU7B">
                    <node concept="3cpWs3" id="70opIpqZNhe" role="3uHU7B">
                      <node concept="3cpWs3" id="70opIpqZNhf" role="3uHU7B">
                        <node concept="3cpWs3" id="70opIpqZNhg" role="3uHU7B">
                          <node concept="Xl_RD" id="70opIpqZNhh" role="3uHU7B">
                            <property role="Xl_RC" value="triggered_" />
                          </node>
                          <node concept="2OqwBi" id="70opIpqZNhi" role="3uHU7w">
                            <node concept="2OqwBi" id="70opIpqZNhj" role="2Oq$k0">
                              <node concept="1iwH7S" id="70opIpqZNhk" role="2Oq$k0" />
                              <node concept="1psM6Z" id="70opIpqZNhl" role="2OqNvi">
                                <ref role="1psM6Y" node="70opIpqNc54" resolve="TriggerType" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="70opIpqZNhm" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="70opIpqZNhn" role="3uHU7w">
                          <property role="Xl_RC" value="_" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpqZNho" role="3uHU7w">
                        <node concept="2OqwBi" id="70opIpqZNhp" role="2Oq$k0">
                          <node concept="1iwH7S" id="70opIpqZNhq" role="2Oq$k0" />
                          <node concept="1psM6Z" id="70opIpqZNhr" role="2OqNvi">
                            <ref role="1psM6Y" node="70opIpqRqql" resolve="TargetType" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="70opIpqZNhs" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="70opIpqZNht" role="3uHU7w">
                      <property role="Xl_RC" value="_" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="49WvUPuekXF" role="jymVt" />
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
              <node concept="3JmXsc" id="70opIpp0Q$9" role="2P8S$">
                <node concept="3clFbS" id="70opIpp0Q$a" role="2VODD2">
                  <node concept="3cpWs8" id="70opIpp0Q$b" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q$c" role="3cpWs9">
                      <property role="TrG5h" value="subLanguage" />
                      <node concept="3uibUv" id="70opIpp0Q$d" role="1tU5fm">
                        <ref role="3uigEE" to="c17a:~SLanguage" resolve="SLanguage" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q$e" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpp0Q$f" role="2Oq$k0">
                          <node concept="30H73N" id="70opIpp0Q$g" role="2Oq$k0" />
                          <node concept="2yIwOk" id="70opIpp0Q$h" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q$i" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SAbstractConcept.getLanguage()" resolve="getLanguage" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0Q$j" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q$k" role="3cpWs9">
                      <property role="TrG5h" value="subModule" />
                      <node concept="3uibUv" id="70opIpp0Q$l" role="1tU5fm">
                        <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q$m" role="33vP2m">
                        <node concept="37vLTw" id="70opIpp0Q$n" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpp0Q$c" resolve="subLanguage" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q$o" role="2OqNvi">
                          <ref role="37wK5l" to="c17a:~SLanguage.getSourceModule()" resolve="getSourceModule" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="70opIpp0Q$p" role="3cqZAp">
                    <node concept="3clFbS" id="70opIpp0Q$q" role="3clFbx">
                      <node concept="3cpWs6" id="70opIpp0Q$r" role="3cqZAp">
                        <node concept="10Nm6u" id="70opIpp0Q$s" role="3cqZAk" />
                      </node>
                    </node>
                    <node concept="3clFbC" id="70opIpp0Q$t" role="3clFbw">
                      <node concept="10Nm6u" id="70opIpp0Q$u" role="3uHU7w" />
                      <node concept="37vLTw" id="70opIpp0Q$v" role="3uHU7B">
                        <ref role="3cqZAo" node="70opIpp0Q$k" resolve="subModule" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpp0Q$w" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpp0Q$x" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q$y" role="3cpWs9">
                      <property role="TrG5h" value="structureAspects" />
                      <node concept="3uibUv" id="70opIpp0Q$z" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpp0Q$$" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q$_" role="33vP2m">
                        <node concept="37vLTw" id="70opIpp0Q$A" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpp0Q$k" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q$B" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpp0Q$C" role="37wK5m">
                            <node concept="3clFbS" id="70opIpp0Q$D" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpp0Q$E" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpp0Q$F" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpp0Q$G" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpp0Q$H" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpp0Q$I" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpp0Q$N" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpp0Q$J" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpp0Q$K" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpp0Q$L" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpp0Q$M" role="37wK5m">
                                      <property role="Xl_RC" value="structure" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpp0Q$N" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpp0Q$O" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0Q$P" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q$Q" role="3cpWs9">
                      <property role="TrG5h" value="structureAspect" />
                      <node concept="3uibUv" id="70opIpp0Q$R" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q$S" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpp0Q$T" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpp0Q$U" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpp0Q$V" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpp0Q$y" resolve="structureAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpp0Q$W" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpp0Q$X" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpp0Q$Y" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0Q$Z" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q_0" role="3cpWs9">
                      <property role="TrG5h" value="structures" />
                      <node concept="3uibUv" id="70opIpp0Q_1" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpp0Q_2" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q_3" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpp0Q_4" role="2Oq$k0">
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <node concept="2OqwBi" id="70opIpp0Q_5" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpp0Q_6" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpp0Q_7" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpp0Q$Q" resolve="structureAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpp0Q_8" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpp0Q_9" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpp0Q_a" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q_b" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpp0Q_c" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpp0Q_d" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0Q_e" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q_f" role="3cpWs9">
                      <property role="TrG5h" value="manifestNode" />
                      <node concept="3uibUv" id="70opIpp0Q_g" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q_h" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpp0Q_i" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpp0Q_j" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpp0Q_k" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpp0Q_l" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpp0Q_0" resolve="structures" />
                              </node>
                              <node concept="liA8E" id="70opIpp0Q_m" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpp0Q_n" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpp0Q_o" role="37wK5m">
                                <node concept="3clFbS" id="70opIpp0Q_p" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpp0Q_q" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpp0Q_r" role="3clFbG">
                                      <node concept="1PxgMI" id="70opIpp0Q_s" role="2Oq$k0">
                                        <property role="1BlNFB" value="true" />
                                        <node concept="chp4Y" id="70opIpp0Q_t" role="3oSUPX">
                                          <ref role="cht4Q" to="tpce:f_TIwhg" resolve="ConceptDeclaration" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpp0Q_u" role="1m5AlR">
                                          <ref role="3cqZAo" node="70opIpp0Q_x" resolve="node" />
                                        </node>
                                      </node>
                                      <node concept="2qgKlT" id="70opIpp0Q_v" role="2OqNvi">
                                        <ref role="37wK5l" to="tpcn:4UTtJHK9fEJ" resolve="isSubconceptOf" />
                                        <node concept="35c_gC" id="70opIpp0Q_w" role="37wK5m">
                                          <ref role="35c_gD" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpp0Q_x" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpp0Q_y" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpp0Q_z" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpp0Q_$" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIpp0Q__" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpp0Q_A" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpp0Q_B" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpp0Q_C" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpp0Q_D" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q_E" role="3cpWs9">
                      <property role="TrG5h" value="languageName" />
                      <node concept="17QB3L" id="70opIpp0Q_F" role="1tU5fm" />
                      <node concept="2OqwBi" id="70opIpp0Q_G" role="33vP2m">
                        <node concept="37vLTw" id="70opIpp0Q_H" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpp0Q_f" resolve="manifestNode" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q_I" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpp0Q_J" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpp0Q_K" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0Q_L" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspects" />
                      <node concept="3uibUv" id="70opIpp0Q_M" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpp0Q_N" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpp0Q_O" role="33vP2m">
                        <node concept="37vLTw" id="70opIpp0Q_P" role="2Oq$k0">
                          <ref role="3cqZAo" node="70opIpp0Q$k" resolve="subModule" />
                        </node>
                        <node concept="liA8E" id="70opIpp0Q_Q" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SModule.getModels(java.util.function.Predicate)" resolve="getModels" />
                          <node concept="1bVj0M" id="70opIpp0Q_R" role="37wK5m">
                            <node concept="3clFbS" id="70opIpp0Q_S" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpp0Q_T" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpp0Q_U" role="3clFbG">
                                  <node concept="2OqwBi" id="70opIpp0Q_V" role="2Oq$k0">
                                    <node concept="2OqwBi" id="70opIpp0Q_W" role="2Oq$k0">
                                      <node concept="37vLTw" id="70opIpp0Q_X" role="2Oq$k0">
                                        <ref role="3cqZAo" node="70opIpp0QA2" resolve="model" />
                                      </node>
                                      <node concept="liA8E" id="70opIpp0Q_Y" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="70opIpp0Q_Z" role="2OqNvi">
                                      <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName()" resolve="getSimpleName" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="70opIpp0QA0" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String)" resolve="equalsIgnoreCase" />
                                    <node concept="Xl_RD" id="70opIpp0QA1" role="37wK5m">
                                      <property role="Xl_RC" value="behavior" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTG" id="70opIpp0QA2" role="1bW2Oz">
                              <property role="TrG5h" value="model" />
                              <node concept="3uibUv" id="70opIpp0QA3" role="1tU5fm">
                                <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0QA4" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0QA5" role="3cpWs9">
                      <property role="TrG5h" value="behaviorAspect" />
                      <node concept="3uibUv" id="70opIpp0QA6" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0QA7" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpp0QA8" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpp0QA9" role="2Oq$k0">
                            <node concept="37vLTw" id="70opIpp0QAa" role="2Oq$k0">
                              <ref role="3cqZAo" node="70opIpp0Q_L" resolve="behaviorAspects" />
                            </node>
                            <node concept="liA8E" id="70opIpp0QAb" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpp0QAc" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpp0QAd" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0QAe" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0QAf" role="3cpWs9">
                      <property role="TrG5h" value="behaviors" />
                      <node concept="3uibUv" id="70opIpp0QAg" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpp0QAh" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpp0QAi" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpp0QAj" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpp0QAk" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpp0QAl" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpp0QAm" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpp0QA5" resolve="behaviorAspect" />
                              </node>
                              <node concept="liA8E" id="70opIpp0QAn" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModel.getRootNodes()" resolve="getRootNodes" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpp0QAo" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpp0QAp" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpp0QAq" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpp0QAr" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpp0QAs" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0QAt" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0QAu" role="3cpWs9">
                      <property role="TrG5h" value="manifestBehavior" />
                      <node concept="3uibUv" id="70opIpp0QAv" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0QAw" role="33vP2m">
                        <node concept="2OqwBi" id="70opIpp0QAx" role="2Oq$k0">
                          <node concept="2OqwBi" id="70opIpp0QAy" role="2Oq$k0">
                            <node concept="2OqwBi" id="70opIpp0QAz" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpp0QA$" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpp0QAf" resolve="behaviors" />
                              </node>
                              <node concept="liA8E" id="70opIpp0QA_" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpp0QAA" role="2OqNvi">
                              <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                              <node concept="1bVj0M" id="70opIpp0QAB" role="37wK5m">
                                <node concept="3clFbS" id="70opIpp0QAC" role="1bW5cS">
                                  <node concept="3clFbF" id="70opIpp0QAD" role="3cqZAp">
                                    <node concept="2OqwBi" id="70opIpp0QAE" role="3clFbG">
                                      <node concept="2OqwBi" id="70opIpp0QAF" role="2Oq$k0">
                                        <node concept="37vLTw" id="70opIpp0QAG" role="2Oq$k0">
                                          <ref role="3cqZAo" node="70opIpp0QAM" resolve="node" />
                                        </node>
                                        <node concept="liA8E" id="70opIpp0QAH" role="2OqNvi">
                                          <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpp0QAI" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                        <node concept="3cpWs3" id="70opIpp0QAJ" role="37wK5m">
                                          <node concept="Xl_RD" id="70opIpp0QAK" role="3uHU7w">
                                            <property role="Xl_RC" value="_Behavior" />
                                          </node>
                                          <node concept="37vLTw" id="70opIpp0QAL" role="3uHU7B">
                                            <ref role="3cqZAo" node="70opIpp0Q_E" resolve="languageName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="37vLTG" id="70opIpp0QAM" role="1bW2Oz">
                                  <property role="TrG5h" value="node" />
                                  <node concept="3uibUv" id="70opIpp0QAN" role="1tU5fm">
                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="70opIpp0QAO" role="2OqNvi">
                            <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                            <node concept="2YIFZM" id="70opIpp0QAP" role="37wK5m">
                              <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                              <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                              <node concept="3uibUv" id="70opIpp0QAQ" role="3PaCim">
                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="70opIpp0QAR" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="70opIpp0QAS" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpp0QAT" role="3cqZAp" />
                  <node concept="3cpWs8" id="70opIpp0QAU" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0QAV" role="3cpWs9">
                      <property role="TrG5h" value="manifestFunctions" />
                      <node concept="3uibUv" id="70opIpp0QAW" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
                        <node concept="3uibUv" id="70opIpp0QAX" role="11_B2D">
                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="70opIpp0QAY" role="33vP2m">
                        <node concept="2YIFZM" id="70opIpp0QAZ" role="2Oq$k0">
                          <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
                          <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
                          <node concept="2OqwBi" id="70opIpp0QB0" role="37wK5m">
                            <node concept="2OqwBi" id="70opIpp0QB1" role="2Oq$k0">
                              <node concept="37vLTw" id="70opIpp0QB2" role="2Oq$k0">
                                <ref role="3cqZAo" node="70opIpp0QAu" resolve="manifestBehavior" />
                              </node>
                              <node concept="liA8E" id="70opIpp0QB3" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNode.getChildren()" resolve="getChildren" />
                              </node>
                            </node>
                            <node concept="liA8E" id="70opIpp0QB4" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                            </node>
                          </node>
                          <node concept="3clFbT" id="70opIpp0QB5" role="37wK5m" />
                        </node>
                        <node concept="liA8E" id="70opIpp0QB6" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="70opIpp0QB7" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="70opIpp0QB8" role="3PaCim">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="70opIpp0QB9" role="3cqZAp">
                    <node concept="3cpWsn" id="70opIpp0QBa" role="3cpWs9">
                      <property role="TrG5h" value="typeFunction" />
                      <node concept="3uibUv" id="70opIpp0QBb" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                      </node>
                      <node concept="2OqwBi" id="70opIpp0QBc" role="33vP2m">
                        <node concept="2ShNRf" id="70opIpp0QBd" role="2Oq$k0">
                          <node concept="2Jqq0_" id="70opIpp0QBe" role="2ShVmc">
                            <node concept="3uibUv" id="70opIpp0QBf" role="HW$YZ">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="37vLTw" id="70opIpp0QBg" role="I$8f6">
                              <ref role="3cqZAo" node="70opIpp0QAV" resolve="manifestFunctions" />
                            </node>
                          </node>
                        </node>
                        <node concept="1z4cxt" id="70opIpp0QBh" role="2OqNvi">
                          <node concept="1bVj0M" id="70opIpp0QBi" role="23t8la">
                            <node concept="3clFbS" id="70opIpp0QBj" role="1bW5cS">
                              <node concept="3clFbF" id="70opIpp0QBk" role="3cqZAp">
                                <node concept="2OqwBi" id="70opIpp0QBl" role="3clFbG">
                                  <node concept="Xl_RD" id="70opIpp0QBm" role="2Oq$k0">
                                    <property role="Xl_RC" value="run" />
                                  </node>
                                  <node concept="liA8E" id="70opIpp0QBn" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                                    <node concept="2OqwBi" id="70opIpp0QBo" role="37wK5m">
                                      <node concept="0kSF2" id="70opIpp0QBp" role="2Oq$k0">
                                        <node concept="3uibUv" id="70opIpp0QBq" role="0kSFW">
                                          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                        </node>
                                        <node concept="37vLTw" id="70opIpp0QBr" role="0kSFX">
                                          <ref role="3cqZAo" node="70opIpp0QBt" resolve="it" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="70opIpp0QBs" role="2OqNvi">
                                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="70opIpp0QBt" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="70opIpp0QBu" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbH" id="70opIpp0QBv" role="3cqZAp" />
                  <node concept="3cpWs6" id="70opIpp0QBw" role="3cqZAp">
                    <node concept="2OqwBi" id="70opIpp0QBx" role="3cqZAk">
                      <node concept="2OqwBi" id="70opIpp0QBy" role="2Oq$k0">
                        <node concept="1PxgMI" id="70opIpp0QBz" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="70opIpp0QB$" role="3oSUPX">
                            <ref role="cht4Q" to="1i04:hP3i0lY" resolve="ConceptMethodDeclaration" />
                          </node>
                          <node concept="37vLTw" id="70opIpp0QB_" role="1m5AlR">
                            <ref role="3cqZAo" node="70opIpp0QBa" resolve="typeFunction" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="70opIpp0QBA" role="2OqNvi">
                          <ref role="37wK5l" to="tpek:i2fhZ_m" resolve="getBody" />
                        </node>
                      </node>
                      <node concept="32TBzR" id="70opIpp0QBB" role="2OqNvi" />
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
      <node concept="1ps_y7" id="70opIprJ8Sh" role="lGtFl">
        <node concept="1ps_xZ" id="70opIprJ8Si" role="1ps_xO">
          <property role="TrG5h" value="Language" />
          <node concept="2jfdEK" id="70opIprJ8Sj" role="1ps_xN">
            <node concept="3clFbS" id="70opIprJ8Sk" role="2VODD2">
              <node concept="3clFbF" id="70opIprKoGC" role="3cqZAp">
                <node concept="30H73N" id="70opIprKoGB" role="3clFbG" />
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
                  <ref role="37wK5l" node="70opIpo$yz6" resolve="registerTrigger" />
                  <node concept="2OqwBi" id="70opIpsjoFs" role="37wK5m">
                    <node concept="1XH99k" id="70opIpsjnwC" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
                    </node>
                    <node concept="2ViDtV" id="70opIpsjp76" role="2OqNvi">
                      <ref role="2ViDtZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                    </node>
                    <node concept="29HgVG" id="70opIpt2ZAs" role="lGtFl">
                      <node concept="3NFfHV" id="70opIpt30tC" role="3NFExx">
                        <node concept="3clFbS" id="70opIpt30tD" role="2VODD2">
                          <node concept="3clFbF" id="70opIpv757U" role="3cqZAp">
                            <node concept="3X5UdL" id="70opIpv757Q" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpuSPhP" role="3X5Ude">
                                <node concept="2OqwBi" id="70opIpuRiUL" role="2Oq$k0">
                                  <node concept="1iwH7S" id="70opIpuQBex" role="2Oq$k0" />
                                  <node concept="1psM6Z" id="70opIpuS3Y7" role="2OqNvi">
                                    <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="70opIpuTBnf" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:49WvUPuomFd" resolve="type" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpvaGJ$" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpvaGJz" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                                </node>
                                <node concept="3X5gDF" id="70opIpvbolS" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpvbolO" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpvdxgs" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpvc4vX" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpveinL" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpvi2BP" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpvi2BQ" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwm" resolve="OnKeyword" />
                                </node>
                                <node concept="3X5gDF" id="70opIpvj$$_" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpvj$$A" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpvj$$B" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpvj$$C" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpvj$$D" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:49WvUPuomwm" resolve="OnKeyword" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpvkXB0" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpvkXB1" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwp" resolve="OnSchedule" />
                                </node>
                                <node concept="3X5gDF" id="70opIpvmlQw" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpvmlQx" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpvmlQy" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpvmlQz" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:49WvUPuomwe" resolve="TriggerType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpvmlQ$" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:49WvUPuomwp" resolve="OnSchedule" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5gDF" id="70opIpvpfrM" role="3XxORw">
                                <node concept="10Nm6u" id="70opIpvqAEp" role="3X5gDC" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="70opIpsjr6k" role="37wK5m">
                    <node concept="1XH99k" id="70opIpsjpUm" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:70opIpldL4f" resolve="TargetType" />
                    </node>
                    <node concept="2ViDtV" id="70opIpsjrxM" role="2OqNvi">
                      <ref role="2ViDtZ" to="7xvd:70opIpldL9x" resolve="GroupChat" />
                    </node>
                    <node concept="29HgVG" id="70opIpypWLW" role="lGtFl">
                      <node concept="3NFfHV" id="70opIpypXEX" role="3NFExx">
                        <node concept="3clFbS" id="70opIpypXEY" role="2VODD2">
                          <node concept="3clFbF" id="70opIpypY4a" role="3cqZAp">
                            <node concept="3X5UdL" id="70opIpypY48" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpypZqp" role="3X5Ude">
                                <node concept="30H73N" id="70opIpypYRp" role="2Oq$k0" />
                                <node concept="3TrcHB" id="70opIpyq0af" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:70opIplehPv" resolve="type" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyq4jY" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyq4jZ" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIpldL4g" resolve="DirectChat" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyq4k0" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyq4k1" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyq4k2" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyq4k3" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:70opIpldL4f" resolve="TargetType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyq4k4" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:70opIpldL4g" resolve="DirectChat" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyq145" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyq144" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIpldL9x" resolve="GroupChat" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyq1w$" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyq1ww" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyq3hB" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyq1Nu" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:70opIpldL4f" resolve="TargetType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyq3Xh" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:70opIpldL9x" resolve="GroupChat" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5gDF" id="70opIpyq8ys" role="3XxORw">
                                <node concept="10Nm6u" id="70opIpyq8yq" role="3X5gDC" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="70opIpsjscJ" role="37wK5m">
                    <property role="Xl_RC" value="target" />
                    <node concept="29HgVG" id="70opIpsXKKx" role="lGtFl">
                      <node concept="3NFfHV" id="70opIpsXLfz" role="3NFExx">
                        <node concept="3clFbS" id="70opIpsXLf$" role="2VODD2">
                          <node concept="3cpWs8" id="70opIpsXP_H" role="3cqZAp">
                            <node concept="3cpWsn" id="70opIpsXP_K" role="3cpWs9">
                              <property role="TrG5h" value="result" />
                              <node concept="3Tqbb2" id="70opIpsXP_G" role="1tU5fm">
                                <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                              </node>
                              <node concept="2ShNRf" id="70opIpsXREb" role="33vP2m">
                                <node concept="3zrR0B" id="70opIpsXTg_" role="2ShVmc">
                                  <node concept="3Tqbb2" id="70opIpsXTgB" role="3zrR0E">
                                    <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="70opIpsXUyZ" role="3cqZAp">
                            <node concept="37vLTI" id="70opIpsXWAR" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpsXXKN" role="37vLTx">
                                <node concept="30H73N" id="70opIpsXXsh" role="2Oq$k0" />
                                <node concept="3TrcHB" id="70opIpsY06$" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:70opIpskMUG" resolve="target" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="70opIpsXV2P" role="37vLTJ">
                                <node concept="37vLTw" id="70opIpsXUyX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="70opIpsXP_K" resolve="result" />
                                </node>
                                <node concept="3TrcHB" id="70opIpsXVEN" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="70opIpsY1f_" role="3cqZAp">
                            <node concept="37vLTw" id="70opIpsY1jh" role="3cqZAk">
                              <ref role="3cqZAo" node="70opIpsXP_K" resolve="result" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="70opIpsjsE1" role="37wK5m">
                    <property role="Xl_RC" value="message" />
                    <node concept="17Uvod" id="70opIpsltgv" role="lGtFl">
                      <property role="2qtEX9" value="value" />
                      <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                      <node concept="3zFVjK" id="70opIpsltgw" role="3zH0cK">
                        <node concept="3clFbS" id="70opIpsltgx" role="2VODD2">
                          <node concept="3clFbF" id="70opIpslyjK" role="3cqZAp">
                            <node concept="3X5UdL" id="70opIpslyjI" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpslCdo" role="3X5Ude">
                                <node concept="2OqwBi" id="70opIpslBd$" role="2Oq$k0">
                                  <node concept="1iwH7S" id="70opIpslAZT" role="2Oq$k0" />
                                  <node concept="1psM6Z" id="70opIpslBHQ" role="2OqNvi">
                                    <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="70opIpslCSF" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:49WvUPuomFd" resolve="type" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpslDhC" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpslDhB" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwf" resolve="OnBoot" />
                                </node>
                                <node concept="3X5gDB" id="70opIpslDSh" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpslDSj" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpslEj$" role="3cqZAp">
                                      <node concept="Xl_RD" id="70opIpslEjz" role="3clFbG">
                                        <property role="Xl_RC" value="" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpslEAi" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpslEAj" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwm" resolve="OnKeyword" />
                                </node>
                                <node concept="3X5gDB" id="70opIpslFLB" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpslFLD" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpslW4I" role="3cqZAp">
                                      <node concept="Xl_RD" id="70opIpslW4H" role="3clFbG">
                                        <property role="Xl_RC" value="" />
                                      </node>
                                    </node>
                                    <node concept="1X3_iC" id="70opIpslVmg" role="lGtFl">
                                      <property role="3V$3am" value="statement" />
                                      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                                      <node concept="3clFbF" id="70opIpslLYT" role="8Wnug">
                                        <node concept="2OqwBi" id="70opIpslMzc" role="3clFbG">
                                          <node concept="1iwH7S" id="70opIpslLYS" role="2Oq$k0" />
                                          <node concept="1psM6Z" id="70opIpslNnD" role="2OqNvi">
                                            <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpslWvC" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpslWvD" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:49WvUPuomwp" resolve="OnSchedule" />
                                </node>
                                <node concept="3X5gDB" id="70opIpslXjn" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpslXjp" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpslXRS" role="3cqZAp">
                                      <node concept="Xl_RD" id="70opIpslXRR" role="3clFbG">
                                        <property role="Xl_RC" value="" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5gDB" id="70opIpsB56I" role="3XxORw">
                                <node concept="3clFbS" id="70opIpsB56K" role="3X5gD$">
                                  <node concept="3cpWs6" id="70opIpsB69$" role="3cqZAp">
                                    <node concept="Xl_RD" id="70opIpsB57M" role="3cqZAk">
                                      <property role="Xl_RC" value="" />
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
                  <node concept="2OqwBi" id="70opIpsjw5u" role="37wK5m">
                    <node concept="1XH99k" id="70opIpsjuS3" role="2Oq$k0">
                      <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                    </node>
                    <node concept="2ViDtV" id="70opIpsjwT5" role="2OqNvi">
                      <ref role="2ViDtZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                    </node>
                    <node concept="29HgVG" id="70opIpyq9B9" role="lGtFl">
                      <node concept="3NFfHV" id="70opIpyqa0z" role="3NFExx">
                        <node concept="3clFbS" id="70opIpyqa0$" role="2VODD2">
                          <node concept="3clFbF" id="70opIpyqaKE" role="3cqZAp">
                            <node concept="3X5UdL" id="70opIpyqaKC" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpyqgYx" role="3X5Ude">
                                <node concept="2OqwBi" id="70opIpyqf$3" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpyqea$" role="2Oq$k0">
                                    <node concept="1iwH7S" id="70opIpyqdAl" role="2Oq$k0" />
                                    <node concept="1psM6Z" id="70opIpyqeWB" role="2OqNvi">
                                      <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="70opIpyqgkW" role="2OqNvi">
                                    <ref role="3Tt5mk" to="7xvd:49WvUPuonlT" resolve="reply" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="70opIpyqhww" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyqlFM" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyqlFN" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyqlFO" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyqlFP" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyqlFQ" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyqlFR" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyqlFS" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyqikP" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyqikO" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIpled_P" resolve="StaticImage" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyqiIq" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyqiIm" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyqkJ1" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyqj5N" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyqldN" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:70opIpled_P" resolve="StaticImage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyqm_f" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyqm_g" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAwareText" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyqm_h" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyqm_i" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyqm_j" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyqm_k" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyqm_l" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAwareText" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpyqmQM" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpyqmQN" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIplee7j" resolve="InputAwareImage" />
                                </node>
                                <node concept="3X5gDF" id="70opIpyqmQO" role="3X5gFO">
                                  <node concept="2c44tf" id="70opIpyqmQP" role="3X5gDC">
                                    <node concept="2OqwBi" id="70opIpyqmQQ" role="2c44tc">
                                      <node concept="1XH99k" id="70opIpyqmQR" role="2Oq$k0">
                                        <ref role="1XH99l" to="7xvd:2c2jK0Uo2Ce" resolve="ReplyType" />
                                      </node>
                                      <node concept="2ViDtV" id="70opIpyqmQS" role="2OqNvi">
                                        <ref role="2ViDtZ" to="7xvd:70opIplee7j" resolve="InputAwareImage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5gDF" id="70opIpyqsmH" role="3XxORw">
                                <node concept="10Nm6u" id="70opIpyqsmF" role="3X5gDC" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="70opIpsjxnZ" role="37wK5m">
                    <property role="Xl_RC" value="reply" />
                    <node concept="29HgVG" id="70opIpsm9kf" role="lGtFl">
                      <node concept="3NFfHV" id="70opIpsm9DH" role="3NFExx">
                        <node concept="3clFbS" id="70opIpsm9DI" role="2VODD2">
                          <node concept="3clFbF" id="70opIpsmn2J" role="3cqZAp">
                            <node concept="3X5UdL" id="70opIpsmn2H" role="3clFbG">
                              <node concept="2OqwBi" id="70opIpsmlm0" role="3X5Ude">
                                <node concept="2OqwBi" id="70opIpsmda3" role="2Oq$k0">
                                  <node concept="2OqwBi" id="70opIpsmcdM" role="2Oq$k0">
                                    <node concept="1iwH7S" id="70opIpsmbTA" role="2Oq$k0" />
                                    <node concept="1psM6Z" id="70opIpsmcDJ" role="2OqNvi">
                                      <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                    </node>
                                  </node>
                                  <node concept="3TrEf2" id="70opIpsmkn9" role="2OqNvi">
                                    <ref role="3Tt5mk" to="7xvd:49WvUPuonlT" resolve="reply" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="70opIpsmlMV" role="2OqNvi">
                                  <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cl" resolve="type" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpsmop0" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpsmooZ" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Cf" resolve="StaticText" />
                                </node>
                                <node concept="3X5gDB" id="70opIpsmCT3" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpsmCT5" role="3X5gD$">
                                    <node concept="3cpWs8" id="70opIpsS3W2" role="3cqZAp">
                                      <node concept="3cpWsn" id="70opIpsS3W5" role="3cpWs9">
                                        <property role="TrG5h" value="result" />
                                        <node concept="3Tqbb2" id="70opIpsS3W0" role="1tU5fm">
                                          <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                                        </node>
                                        <node concept="2ShNRf" id="70opIpsS4nu" role="33vP2m">
                                          <node concept="3zrR0B" id="70opIpsS5bX" role="2ShVmc">
                                            <node concept="3Tqbb2" id="70opIpsS5bZ" role="3zrR0E">
                                              <ref role="ehGHo" to="tpee:f$Xl_Og" resolve="StringLiteral" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="70opIpsS5Vv" role="3cqZAp">
                                      <node concept="37vLTI" id="70opIpsS8vr" role="3clFbG">
                                        <node concept="2OqwBi" id="70opIpsSed_" role="37vLTx">
                                          <node concept="1PxgMI" id="70opIpsScQ0" role="2Oq$k0">
                                            <property role="1BlNFB" value="true" />
                                            <node concept="chp4Y" id="70opIpsSdyI" role="3oSUPX">
                                              <ref role="cht4Q" to="7xvd:2c2jK0Uo2Cr" resolve="StaticTextReply" />
                                            </node>
                                            <node concept="2OqwBi" id="70opIpsS9Xq" role="1m5AlR">
                                              <node concept="2OqwBi" id="70opIpsS9IC" role="2Oq$k0">
                                                <node concept="1iwH7S" id="70opIpsS9$m" role="2Oq$k0" />
                                                <node concept="1psM6Z" id="70opIpsS9RY" role="2OqNvi">
                                                  <ref role="1psM6Y" node="70opIpsj$OK" resolve="TriggerEntry" />
                                                </node>
                                              </node>
                                              <node concept="3TrEf2" id="70opIpsSbEv" role="2OqNvi">
                                                <ref role="3Tt5mk" to="7xvd:49WvUPuonlT" resolve="reply" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3TrcHB" id="70opIpsSeQ7" role="2OqNvi">
                                            <ref role="3TsBF5" to="7xvd:2c2jK0Uo2Cs" resolve="content" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="70opIpsS6z_" role="37vLTJ">
                                          <node concept="37vLTw" id="70opIpsS5Vt" role="2Oq$k0">
                                            <ref role="3cqZAo" node="70opIpsS3W5" resolve="result" />
                                          </node>
                                          <node concept="3TrcHB" id="70opIpsS7vF" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpee:f$Xl_Oh" resolve="value" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs6" id="70opIpsSgtg" role="3cqZAp">
                                      <node concept="37vLTw" id="70opIpsShtY" role="3cqZAk">
                                        <ref role="3cqZAo" node="70opIpsS3W5" resolve="result" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpsmAjB" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpsmAjC" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIpled_P" resolve="StaticImage" />
                                </node>
                                <node concept="3X5gDB" id="70opIpsmB4h" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpsmB4j" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpstcvb" role="3cqZAp">
                                      <node concept="2c44tf" id="70opIpstcv9" role="3clFbG">
                                        <node concept="10Nm6u" id="70opIpstd21" role="2c44tc" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpsmDUa" role="3X5gkp">
                                <node concept="3X5gDB" id="70opIpsmFxg" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpsmFxi" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpstnf8" role="3cqZAp">
                                      <node concept="2c44tf" id="70opIpstnf9" role="3clFbG">
                                        <node concept="10Nm6u" id="70opIpstnfa" role="2c44tc" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="21nZrQ" id="70opIpsmF6x" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:2c2jK0Uo2Ci" resolve="InputAwareText" />
                                </node>
                              </node>
                              <node concept="3X5Udd" id="70opIpsmFzw" role="3X5gkp">
                                <node concept="21nZrQ" id="70opIpsmFzx" role="3X5Uda">
                                  <ref role="21nZrZ" to="7xvd:70opIplee7j" resolve="InputAwareImage" />
                                </node>
                                <node concept="3X5gDB" id="70opIpsmGR7" role="3X5gFO">
                                  <node concept="3clFbS" id="70opIpsmGR9" role="3X5gD$">
                                    <node concept="3clFbF" id="70opIpstoe5" role="3cqZAp">
                                      <node concept="2c44tf" id="70opIpstoe6" role="3clFbG">
                                        <node concept="10Nm6u" id="70opIpstoe7" role="2c44tc" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3X5gDB" id="70opIpswpF3" role="3XxORw">
                                <node concept="3clFbS" id="70opIpswpF5" role="3X5gD$">
                                  <node concept="3cpWs6" id="70opIpswsao" role="3cqZAp">
                                    <node concept="2c44tf" id="70opIpswrKD" role="3cqZAk">
                                      <node concept="10Nm6u" id="70opIpswrKE" role="2c44tc" />
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
              <node concept="1WS0z7" id="70opIpsjjCf" role="lGtFl">
                <node concept="3JmXsc" id="70opIpsjjCg" role="3Jn$fo">
                  <node concept="3clFbS" id="70opIpsjjCh" role="2VODD2">
                    <node concept="3clFbF" id="70opIpsjjTY" role="3cqZAp">
                      <node concept="2OqwBi" id="70opIpsjlUe" role="3clFbG">
                        <node concept="1PxgMI" id="70opIpsjlsz" role="2Oq$k0">
                          <property role="1BlNFB" value="true" />
                          <node concept="chp4Y" id="70opIpsjlBu" role="3oSUPX">
                            <ref role="cht4Q" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
                          </node>
                          <node concept="2OqwBi" id="70opIpsjkdU" role="1m5AlR">
                            <node concept="30H73N" id="70opIpsjjTX" role="2Oq$k0" />
                            <node concept="1mfA1w" id="70opIpsjkS6" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3Tsc0h" id="70opIpsjmtr" role="2OqNvi">
                          <ref role="3TtcxE" to="7xvd:49WvUPuorfS" resolve="triggerPool" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1ps_y7" id="70opIpsj$OJ" role="lGtFl">
                <node concept="1ps_xZ" id="70opIpsj$OK" role="1ps_xO">
                  <property role="TrG5h" value="TriggerEntry" />
                  <node concept="2jfdEK" id="70opIpsj$OL" role="1ps_xN">
                    <node concept="3clFbS" id="70opIpsj$OM" role="2VODD2">
                      <node concept="2xdQw9" id="70opIpsMItJ" role="3cqZAp">
                        <property role="2xdLsb" value="h1akgim/info" />
                        <node concept="2OqwBi" id="70opIpsMKig" role="9lYJi">
                          <node concept="30H73N" id="70opIpsMJcp" role="2Oq$k0" />
                          <node concept="2qgKlT" id="70opIpsMMtG" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="70opIpsjAGX" role="3cqZAp">
                        <node concept="30H73N" id="70opIpsjAGW" role="3clFbG" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1WS0z7" id="70opIpsjztW" role="lGtFl">
                <node concept="3JmXsc" id="70opIpsjztZ" role="3Jn$fo">
                  <node concept="3clFbS" id="70opIpsjzu0" role="2VODD2">
                    <node concept="3clFbF" id="70opIpsjzu6" role="3cqZAp">
                      <node concept="2OqwBi" id="70opIpsjzu1" role="3clFbG">
                        <node concept="3Tsc0h" id="70opIpsjzu4" role="2OqNvi">
                          <ref role="3TtcxE" to="7xvd:70opIpleqvZ" resolve="target" />
                        </node>
                        <node concept="30H73N" id="70opIpsjzu5" role="2Oq$k0" />
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

