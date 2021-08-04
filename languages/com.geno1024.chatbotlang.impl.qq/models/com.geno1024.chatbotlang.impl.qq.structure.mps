<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d13b8abc-6a97-44ed-890d-1f2076436091(com.geno1024.chatbotlang.impl.qq.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="9" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="7xvd" ref="r:9a9f0076-10a8-4fb8-a30a-692bd3a097dc(com.geno1024.chatbotlang.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2c2jK0UnCVM">
    <property role="EcuMT" value="2522665603678768882" />
    <property role="TrG5h" value="QQ" />
    <ref role="1TJDcQ" to="7xvd:2c2jK0UnBOm" resolve="SubLanguage" />
  </node>
  <node concept="1TIwiD" id="4zqelTg5KsQ">
    <property role="EcuMT" value="5249571392887129910" />
    <property role="TrG5h" value="QQAccount" />
    <ref role="1TJDcQ" to="7xvd:4zqelTg5B6H" resolve="Account" />
  </node>
</model>

