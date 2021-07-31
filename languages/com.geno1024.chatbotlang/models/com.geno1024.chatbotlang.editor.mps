<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4ca2f03c-97a8-4d7d-ba3e-ae19dd91e99a(com.geno1024.chatbotlang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="2c2jK0UnC1G">
    <property role="3GE5qa" value="com.geno1024.chatbotlang" />
    <ref role="1XX52x" to="7xvd:2c2jK0UnBKs" resolve="RobotConfig" />
    <node concept="3EZMnI" id="2c2jK0UnC1I" role="2wV5jI">
      <node concept="3EZMnI" id="2c2jK0UnC1P" role="3EZMnx">
        <node concept="VPM3Z" id="2c2jK0UnC1R" role="3F10Kt" />
        <node concept="3F0ifn" id="2c2jK0UnC1Z" role="3EZMnx">
          <property role="3F0ifm" value="Robot config" />
        </node>
        <node concept="3F0A7n" id="2c2jK0UnC25" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="2iRfu4" id="2c2jK0UnC1U" role="2iSdaV" />
      </node>
      <node concept="35HoNQ" id="2c2jK0UnC2u" role="3EZMnx" />
      <node concept="3F2HdR" id="2c2jK0UnDy9" role="3EZMnx">
        <ref role="1NtTu8" to="7xvd:2c2jK0UnDxU" resolve="using" />
        <node concept="2EHx9g" id="2c2jK0UnDyk" role="2czzBx" />
      </node>
      <node concept="35HoNQ" id="2c2jK0UnURX" role="3EZMnx" />
      <node concept="3EZMnI" id="2c2jK0UnUT0" role="3EZMnx">
        <node concept="VPM3Z" id="2c2jK0UnUT2" role="3F10Kt" />
        <node concept="3XFhqQ" id="2c2jK0UnUTj" role="3EZMnx" />
        <node concept="3EZMnI" id="2c2jK0UnUTp" role="3EZMnx">
          <node concept="VPM3Z" id="2c2jK0UnUTr" role="3F10Kt" />
          <node concept="3F0ifn" id="2c2jK0UnUTI" role="3EZMnx">
            <property role="3F0ifm" value="Reply pool" />
          </node>
          <node concept="3EZMnI" id="2c2jK0UoVEY" role="3EZMnx">
            <node concept="VPM3Z" id="2c2jK0UoVF0" role="3F10Kt" />
            <node concept="3XFhqQ" id="2c2jK0UoVF9" role="3EZMnx" />
            <node concept="3F2HdR" id="2c2jK0UnUTO" role="3EZMnx">
              <ref role="1NtTu8" to="7xvd:2c2jK0UnUSk" resolve="replyPool" />
              <node concept="2EHx9g" id="2c2jK0UnUTU" role="2czzBx" />
            </node>
            <node concept="2iRfu4" id="2c2jK0UoVF3" role="2iSdaV" />
          </node>
          <node concept="2iRkQZ" id="2c2jK0UnUTu" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="2c2jK0UnUT5" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="2c2jK0UnC1L" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2c2jK0UnDxG">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure" />
    <ref role="1XX52x" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
    <node concept="3EZMnI" id="2c2jK0UnDxW" role="2wV5jI">
      <node concept="2iRfu4" id="2c2jK0UnDxX" role="2iSdaV" />
      <node concept="3F0ifn" id="2c2jK0UnDy0" role="3EZMnx">
        <property role="3F0ifm" value="using" />
      </node>
      <node concept="3F0A7n" id="2c2jK0UnDy5" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2c2jK0Uo2C_">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <ref role="1XX52x" to="7xvd:2c2jK0Uo2Cr" resolve="StaticReply" />
    <node concept="3EZMnI" id="2c2jK0Uo2CB" role="2wV5jI">
      <node concept="3F0A7n" id="2c2jK0Uo2CL" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2c2jK0Uo2CR" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F0A7n" id="2c2jK0Uo2CZ" role="3EZMnx">
        <ref role="1NtTu8" to="7xvd:2c2jK0Uo2Cs" resolve="content" />
      </node>
      <node concept="2iRfu4" id="2c2jK0Uo2CE" role="2iSdaV" />
      <node concept="VPXOz" id="2c2jK0UoaFV" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2c2jK0UoYxf">
    <property role="3GE5qa" value="com.geno1024.chatbotlang.structure.reply" />
    <ref role="1XX52x" to="7xvd:2c2jK0UozfT" resolve="InputAwareReply" />
    <node concept="3EZMnI" id="2c2jK0UoYxh" role="2wV5jI">
      <node concept="3F0A7n" id="2c2jK0UoYxo" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="2c2jK0UoYxu" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="2c2jK0UoYxL" role="3EZMnx">
        <ref role="1NtTu8" to="7xvd:2c2jK0UozfU" resolve="function" />
      </node>
      <node concept="2iRfu4" id="2c2jK0UoYxk" role="2iSdaV" />
      <node concept="VPXOz" id="2c2jK0Up5LX" role="3F10Kt">
        <property role="VOm3f" value="true" />
      </node>
    </node>
  </node>
</model>

