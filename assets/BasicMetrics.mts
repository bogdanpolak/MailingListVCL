<?xml version="1.0"?>
<analyzer-configuration version="1.0">
  <analyzer id="CIW" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="LOC" inspector="Metric">
    <settings>
      <parameter id="countImpl" type="1" value="False" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="countBlank" type="1" value="False" />
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="MethodUpperLimit" type="0" value="100" />
      <parameter id="ClassUpperLimit" type="0" value="1000" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="countDoc" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NAM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NOA" inspector="Metric">
    <settings>
      <parameter id="Count protected" type="1" value="True" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="30" />
      <parameter id="Count package" type="1" value="True" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="Count constants" type="1" value="False" />
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassUpperLimit" type="0" value="30" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="Count private" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
      <parameter id="Count ancestors" type="1" value="False" />
      <parameter id="Count public" type="1" value="True" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="5" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOCON" inspector="Metric">
    <settings>
      <parameter id="Count protected" type="1" value="True" />
      <parameter id="Count private" type="1" value="True" />
      <parameter id="PackageUpperLimit" type="0" value="5" />
      <parameter id="Count package" type="1" value="True" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="Count public" type="1" value="True" />
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassUpperLimit" type="0" value="5" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="5" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOIS" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="language" type="5">
        <parameter id="java" type="1" value="True" />
        <parameter id="csharp" type="1" value="True" />
        <parameter id="vbnet" type="1" value="True" />
        <parameter id="delphi" type="1" value="True" />
      </parameter>
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NOM" inspector="Metric">
    <settings>
      <parameter id="Count public" type="1" value="True" />
      <parameter id="Count protected" type="1" value="True" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="Include constructors" type="1" value="False" />
      <parameter id="Count package" type="1" value="True" />
      <parameter id="Include ancestors" type="1" value="False" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="Count private" type="1" value="True" />
      <parameter id="Include constants" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOO" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="50" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="50" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="50" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOP" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOPA" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PIS" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="PS" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="ALD" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="CL" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="LCOM1" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="LCOM2" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="30" />
      <parameter id="PackageUpperLimit" type="0" value="101" />
      <parameter id="NamespaceLowerLimit" type="0" value="101" />
      <parameter id="PackageLowerLimit" type="0" value="30" />
      <parameter id="ClassUpperLimit" type="0" value="101" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
    </settings>
  </analyzer>
  <analyzer id="LCOM3" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="30" />
      <parameter id="PackageUpperLimit" type="0" value="101" />
      <parameter id="NamespaceLowerLimit" type="0" value="101" />
      <parameter id="PackageLowerLimit" type="0" value="30" />
      <parameter id="ClassUpperLimit" type="0" value="101" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
    </settings>
  </analyzer>
  <analyzer id="PC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="TCC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="AC" inspector="Metric">
    <settings>
      <parameter id="enabled" type="1" value="False" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="type-list-cpp" type="5">
        <parameter id="void" type="0" value="1" />
        <parameter id="bool" type="0" value="1" />
        <parameter id="char" type="0" value="1" />
        <parameter id="signed char" type="0" value="1" />
        <parameter id="unsigned char" type="0" value="1" />
        <parameter id="short" type="0" value="1" />
        <parameter id="signed short" type="0" value="1" />
        <parameter id="unsigned short" type="0" value="1" />
        <parameter id="int" type="0" value="1" />
        <parameter id="signed int" type="0" value="1" />
        <parameter id="unsigned int" type="0" value="1" />
        <parameter id="size_t" type="0" value="1" />
        <parameter id="long" type="0" value="1" />
        <parameter id="signed long" type="0" value="1" />
        <parameter id="unsigned long" type="0" value="1" />
        <parameter id="float" type="0" value="2" />
        <parameter id="double" type="0" value="2" />
        <parameter id="std::vector" type="0" value="7" />
        <parameter id="std::*" type="0" value="5" />
        <parameter id="*" type="0" value="9" />
        <parameter id="Array weight" type="0" value="3" />
        <parameter id="Enum weight" type="0" value="1" />
      </parameter>
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="type-list-java" type="5">
        <parameter id="boolean" type="0" value="1" />
        <parameter id="byte" type="0" value="1" />
        <parameter id="char" type="0" value="1" />
        <parameter id="short" type="0" value="1" />
        <parameter id="int" type="0" value="1" />
        <parameter id="long" type="0" value="1" />
        <parameter id="float" type="0" value="2" />
        <parameter id="double" type="0" value="2" />
        <parameter id="java.lang.Void" type="0" value="3" />
        <parameter id="java.lang.Boolean" type="0" value="3" />
        <parameter id="java.lang.Byte" type="0" value="3" />
        <parameter id="java.lang.Character" type="0" value="3" />
        <parameter id="java.lang.String" type="0" value="3" />
        <parameter id="java.lang.StringBuffer" type="0" value="3" />
        <parameter id="java.lang.Short" type="0" value="3" />
        <parameter id="java.lang.Integer" type="0" value="3" />
        <parameter id="java.lang.Long" type="0" value="3" />
        <parameter id="java.lang.Number" type="0" value="3" />
        <parameter id="java.lang.Float" type="0" value="3" />
        <parameter id="java.lang.Double" type="0" value="3" />
        <parameter id="java.lang.*" type="0" value="5" />
        <parameter id="java.util.Vector" type="0" value="7" />
        <parameter id="*" type="0" value="9" />
        <parameter id="Array weight" type="0" value="3" />
        <parameter id="Enum weight" type="0" value="1" />
      </parameter>
      <parameter id="Aggregation" type="4" value="2" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="type-list-delphi" type="5">
        <parameter id="boolean" type="0" value="1" />
        <parameter id="byte" type="0" value="1" />
        <parameter id="char" type="0" value="1" />
        <parameter id="smallint" type="0" value="1" />
        <parameter id="integer" type="0" value="1" />
        <parameter id="int64" type="0" value="1" />
        <parameter id="single" type="0" value="2" />
        <parameter id="double" type="0" value="2" />
        <parameter id="word" type="0" value="1" />
        <parameter id="cardinal" type="0" value="1" />
        <parameter id="*" type="0" value="9" />
        <parameter id="Array weight" type="0" value="3" />
        <parameter id="Enum weight" type="0" value="1" />
      </parameter>
      <parameter id="type-list-csharp" type="5">
        <parameter id="bool" type="0" value="1" />
        <parameter id="byte" type="0" value="1" />
        <parameter id="char" type="0" value="1" />
        <parameter id="short" type="0" value="1" />
        <parameter id="int" type="0" value="1" />
        <parameter id="long" type="0" value="1" />
        <parameter id="float" type="0" value="2" />
        <parameter id="double" type="0" value="2" />
        <parameter id="sbyte" type="0" value="1" />
        <parameter id="ushort" type="0" value="1" />
        <parameter id="uint" type="0" value="1" />
        <parameter id="ulong" type="0" value="1" />
        <parameter id="string" type="0" value="3" />
        <parameter id="*" type="0" value="9" />
        <parameter id="Array weight" type="0" value="3" />
        <parameter id="Enum weight" type="0" value="1" />
      </parameter>
      <parameter id="type-list-vbnet" type="5">
        <parameter id="boolean" type="0" value="1" />
        <parameter id="byte" type="0" value="1" />
        <parameter id="char" type="0" value="1" />
        <parameter id="short" type="0" value="1" />
        <parameter id="integer" type="0" value="1" />
        <parameter id="decimal" type="0" value="1" />
        <parameter id="long" type="0" value="1" />
        <parameter id="date" type="0" value="1" />
        <parameter id="single" type="0" value="2" />
        <parameter id="double" type="0" value="2" />
        <parameter id="string" type="0" value="3" />
        <parameter id="*" type="0" value="9" />
        <parameter id="Array weight" type="0" value="3" />
        <parameter id="Enum weight" type="0" value="1" />
      </parameter>
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="CC" inspector="Metric">
    <settings>
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="10" />
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="Case as branch" type="1" value="False" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="EC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="4" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="MNOB" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="MDC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="7" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NOLV" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NORM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="30" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="30" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
    </settings>
  </analyzer>
  <analyzer id="RFC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="50" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="50" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="50" />
    </settings>
  </analyzer>
  <analyzer id="WOC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="WMPC1" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="30" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="30" />
      <parameter id="Case as branch" type="1" value="False" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
    </settings>
  </analyzer>
  <analyzer id="WMPC2" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="100" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="100" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="100" />
    </settings>
  </analyzer>
  <analyzer id="A" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="AOFD" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="AID" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="CA" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="AUF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="ChC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="CM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="COC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="CBO" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="30" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="30" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="30" />
    </settings>
  </analyzer>
  <analyzer id="CF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="DAC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="5" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="5" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="5" />
    </settings>
  </analyzer>
  <analyzer id="DD" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="CE" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="FO" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="15" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="15" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="15" />
    </settings>
  </analyzer>
  <analyzer id="I" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="MPC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="MIC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="RMD" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="NCC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="NOCP" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="NOED" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NIC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="MethodUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="PUR" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="VOD" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="Ignore preferred-acquaintance" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="WCM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="AHF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="MHF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="HDiff" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="HEff" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="HPLen" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="2000" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="HPVoc" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="HPVol" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NOprnd" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NOprtr" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="1" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NUOprnd" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="NUOprtr" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="granularityOperation" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="AIF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="Count constants" type="1" value="True" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="DOIH" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="5" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="5" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="5" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="MIF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="declaration-level" type="1" value="True" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="NOCC" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="AIUR" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="IUR" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="TRAp" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="Stability factor" type="0" value="50" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="TRAu" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="TRDp" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="TRDu" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
    </settings>
  </analyzer>
  <analyzer id="MNOL" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="7" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="7" />
      <parameter id="Case as branch" type="1" value="False" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="7" />
    </settings>
  </analyzer>
  <analyzer id="MNOP" inspector="Metric">
    <settings>
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="4" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="MethodUpperLimit" type="0" value="4" />
      <parameter id="ClassUpperLimit" type="0" value="4" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="4" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="MSOO" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="10" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="10" />
      <parameter id="Case as branch" type="1" value="False" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="10" />
    </settings>
  </analyzer>
  <analyzer id="NOAM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="50" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="50" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="50" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="NOOM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="4" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="10" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="10" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="10" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PF" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
      <parameter id="enabled" type="1" value="False" />
    </settings>
  </analyzer>
  <analyzer id="CR" inspector="Metric">
    <settings>
      <parameter id="ClassLowerLimit" type="0" value="5" />
      <parameter id="PackageUpperLimit" type="0" value="101" />
      <parameter id="NamespaceLowerLimit" type="0" value="5" />
      <parameter id="PackageLowerLimit" type="0" value="5" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="Count documentation comments" type="1" value="True" />
      <parameter id="Aggregation" type="4" value="3" />
      <parameter id="MethodUpperLimit" type="0" value="101" />
      <parameter id="ClassUpperLimit" type="0" value="101" />
      <parameter id="enabled" type="1" value="True" />
      <parameter id="Count implementation comments" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="101" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PPkgM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="2" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="10" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="language" type="5">
        <parameter id="java" type="1" value="True" />
        <parameter id="csharp" type="1" value="True" />
        <parameter id="vbnet" type="1" value="True" />
        <parameter id="delphi" type="1" value="True" />
      </parameter>
      <parameter id="NamespaceUpperLimit" type="0" value="10" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PPrivM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="2" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PProtM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="2" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="10" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="10" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="PPubM" inspector="Metric">
    <settings>
      <parameter id="Aggregation" type="4" value="2" />
      <parameter id="ClassLowerLimit" type="0" value="0" />
      <parameter id="PackageUpperLimit" type="0" value="0" />
      <parameter id="NamespaceLowerLimit" type="0" value="0" />
      <parameter id="PackageLowerLimit" type="0" value="0" />
      <parameter id="ClassUpperLimit" type="0" value="0" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="NamespaceUpperLimit" type="0" value="0" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
  <analyzer id="TCR" inspector="Metric">
    <settings>
      <parameter id="ClassLowerLimit" type="0" value="5" />
      <parameter id="PackageUpperLimit" type="0" value="400" />
      <parameter id="NamespaceLowerLimit" type="0" value="5" />
      <parameter id="PackageLowerLimit" type="0" value="5" />
      <parameter id="MethodLowerLimit" type="0" value="0" />
      <parameter id="Count documentation comments" type="1" value="True" />
      <parameter id="Aggregation" type="4" value="3" />
      <parameter id="MethodUpperLimit" type="0" value="400" />
      <parameter id="ClassUpperLimit" type="0" value="400" />
      <parameter id="enabled" type="1" value="False" />
      <parameter id="Count implementation comments" type="1" value="True" />
      <parameter id="NamespaceUpperLimit" type="0" value="400" />
      <parameter id="declaration-level" type="1" value="True" />
    </settings>
  </analyzer>
</analyzer-configuration>