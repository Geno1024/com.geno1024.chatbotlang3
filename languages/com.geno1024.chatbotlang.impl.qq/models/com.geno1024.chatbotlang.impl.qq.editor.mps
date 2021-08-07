<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d90e3d08-e205-4383-b64a-2f5277966b4a(com.geno1024.chatbotlang.impl.qq.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2ti8" ref="r:d13b8abc-6a97-44ed-890d-1f2076436091(com.geno1024.chatbotlang.impl.qq.structure)" implicit="true" />
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="1078153129734" name="inspectedCellModel" index="6VMZX" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
      </concept>
      <concept id="1186404549998" name="jetbrains.mps.lang.editor.structure.ForegroundColorStyleClassItem" flags="ln" index="VechU" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1214406454886" name="jetbrains.mps.lang.editor.structure.TextBackgroundColorStyleClassItem" flags="ln" index="30gYXW" />
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
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="49WvUPtw28A">
    <ref role="1XX52x" to="2ti8:4zqelTg5KsQ" resolve="QQAccount" />
    <node concept="3EZMnI" id="49WvUPtw2d6" role="2wV5jI">
      <node concept="3F0ifn" id="49WvUPtw2iW" role="3EZMnx">
        <property role="3F0ifm" value="QQ" />
      </node>
      <node concept="3F0A7n" id="49WvUPtw2u0" role="3EZMnx">
        <ref role="1NtTu8" to="7xvd:4zqelTg5KnU" resolve="username" />
      </node>
      <node concept="3F0A7n" id="49WvUPtw2AE" role="3EZMnx">
        <ref role="1NtTu8" to="7xvd:4zqelTg5Kpd" resolve="password" />
        <node concept="VechU" id="49WvUPtw2I3" role="3F10Kt">
          <property role="Vb096" value="hEZAO13/white" />
        </node>
        <node concept="30gYXW" id="49WvUPtw32Q" role="3F10Kt">
          <property role="Vb096" value="hEZAO13/white" />
        </node>
      </node>
      <node concept="2iRfu4" id="49WvUPtw2d9" role="2iSdaV" />
    </node>
    <node concept="3EZMnI" id="49WvUPtw3qa" role="6VMZX">
      <node concept="2iRkQZ" id="49WvUPtw3qb" role="2iSdaV" />
      <node concept="3EZMnI" id="49WvUPtw3tu" role="3EZMnx">
        <node concept="2iRfu4" id="49WvUPtw3tv" role="2iSdaV" />
        <node concept="VPM3Z" id="49WvUPtw3tw" role="3F10Kt" />
        <node concept="3F0ifn" id="49WvUPtw3Ay" role="3EZMnx">
          <property role="3F0ifm" value="username:" />
        </node>
        <node concept="3F0A7n" id="49WvUPtw3IK" role="3EZMnx">
          <ref role="1NtTu8" to="7xvd:4zqelTg5KnU" resolve="username" />
        </node>
      </node>
      <node concept="3EZMnI" id="49WvUPtw43D" role="3EZMnx">
        <node concept="VPM3Z" id="49WvUPtw43F" role="3F10Kt" />
        <node concept="3F0ifn" id="49WvUPtw43H" role="3EZMnx">
          <property role="3F0ifm" value="password:" />
        </node>
        <node concept="3F0A7n" id="49WvUPtw4eT" role="3EZMnx">
          <ref role="1NtTu8" to="7xvd:4zqelTg5Kpd" resolve="password" />
        </node>
        <node concept="2iRfu4" id="49WvUPtw43I" role="2iSdaV" />
      </node>
    </node>
  </node>
</model>

