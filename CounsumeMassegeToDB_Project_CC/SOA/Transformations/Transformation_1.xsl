<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://xmlns.oracle.com/pcbpel/adapter/db/top/DBIncertToDB" xmlns:tns="http://TargetNamespace.com/JMSConsumeFromJMS" exclude-result-prefixes=" xsd oracle-xsl-mapper xsi xsl ns0 tns mhdr oraext xp20 xref socket dvm oraxsl"
                xmlns:plt="http://schemas.xmlsoap.org/ws/2003/05/partner-link/"
                xmlns:ns1="http://xmlns.oracle.com/pcbpel/adapter/db/TEST_APPLICATION/CounsumeMassegeToDB_Project_CC/DBIncertToDB"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/"
                xmlns:ns2="http://xmlns.oracle.com/pcbpel/adapter/jms/TEST_APPLICATION/CounsumeMassegeToDB_Project_CC/JMSConsumeFromJMS"
                xmlns:pc="http://xmlns.oracle.com/pcbpel/">
   <oracle-xsl-mapper:schema>
      <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
      <oracle-xsl-mapper:mapSources>
         <oracle-xsl-mapper:source type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/DBIncertToDB.wsdl"/>
            <oracle-xsl-mapper:rootElement name="EmpChetanCollection" namespace="http://xmlns.oracle.com/pcbpel/adapter/db/top/DBIncertToDB"/>
         </oracle-xsl-mapper:source>
      </oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:mapTargets>
         <oracle-xsl-mapper:target type="WSDL">
            <oracle-xsl-mapper:schema location="../WSDLs/JMSConsumeFromJMS.wsdl"/>
            <oracle-xsl-mapper:rootElement name="Root" namespace="http://TargetNamespace.com/JMSConsumeFromJMS"/>
         </oracle-xsl-mapper:target>
      </oracle-xsl-mapper:mapTargets>
      <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.0.0(XSLT Build 151013.0700.0085) AT [MON AUG 21 17:49:45 IST 2023].-->
   </oracle-xsl-mapper:schema>
   <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
   <xsl:template match="/">
      <tns:Root>
         <xsl:for-each select="/ns0:EmpChetanCollection/ns0:EmpChetan">
            <tns:Element>
               <tns:emp_id>
                  <xsl:value-of select="ns0:empId"/>
               </tns:emp_id>
               <tns:emp_name>
                  <xsl:value-of select="ns0:firstName"/>
               </tns:emp_name>
               <tns:emp_city>
                  <xsl:value-of select="ns0:empCity"/>
               </tns:emp_city>
               <tns:emp_age>
                  <xsl:value-of select="ns0:empAge"/>
               </tns:emp_age>
               <tns:emp_lastname>
                  <xsl:value-of select="ns0:lastName1"/>
               </tns:emp_lastname>
            </tns:Element>
         </xsl:for-each>
      </tns:Root>
   </xsl:template>
</xsl:stylesheet>