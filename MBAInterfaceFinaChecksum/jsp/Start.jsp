<%--  This JSP has been generated by using from xsl version 9.0 at Wed Feb 05 10:06:25 EET 2014 --%>
<!DOCTYPE html>
<html xmlns:bizsolo="http://www.savvion.com/sbm/BizSolo" xmlns:sbm="http://www.savvion.com/sbm" xmlns:jsp="http://java.sun.com/JSP/Page" xmlns:xalan="http://xml.apache.org/xalan" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:sfe="http://www.savvion.com/sbm/sfe" xmlns:c="http://java.sun.com/jsp/jstl/core">
<head><META http-equiv="Content-Type" content="text/html; charset=utf-8">

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.savvion.BizSolo.Server.*,com.savvion.BizSolo.beans.*,com.savvion.sbm.util.DatabaseMapping,java.util.Vector,java.util.Locale" %>
<%@ page import="com.savvion.sbm.bizsolo.util.session.*,java.net.*" %>
<%@ page errorPage="/BizSolo/common/jsp/expcontroller.jsp" %>
<%@ taglib uri="/BizSolo/common/tlds/bizsolo.tld" prefix="bizsolo" %>
<%@ taglib uri="/bpmportal/tld/bpmportal.tld" prefix="sbm" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" tagdir="/WEB-INF/tags/form"%>
<%@ taglib prefix="sfe" uri="http://jmaki/v1.0/jsp" %>
  <jsp:useBean id="bizManage" class="com.savvion.sbm.bizmanage.api.BizManageBean" scope="session"></jsp:useBean>
  <jsp:useBean id="bean" class="com.savvion.BizSolo.beans.Bean" scope="session"></jsp:useBean>
  <jsp:useBean id="factoryBean" class="com.savvion.BizSolo.beans.EPFactoryBean" scope="session"></jsp:useBean>
  <jsp:useBean id="bizSite" class="com.savvion.sbm.bpmportal.bizsite.api.BizSiteBean" scope="session"></jsp:useBean>
<%! String _PageName = "Start"; %>
<%! String __webAppName = "MBAInterfaceFinaChecksum"; %>
<% pageContext.setAttribute( "contextPath", request.getContextPath()+"/"); %>
<% pageContext.setAttribute( "maxMulitLineLength", DatabaseMapping.self().getSQLSize(java.lang.String.class));  %>
<%java.util.List<String> priorities = com.savvion.sbm.bpmportal.util.PortalUtil.self().getPriorities();%>
<% pageContext.setAttribute( "_priorities",priorities); %>
<bizsolo:if test='<%=_PageName.equals(request.getParameter("_PageName")) %>'>
    <bizsolo:setDS name=""></bizsolo:setDS>
    <bizsolo:setDS name="bizsite_instanceName,bizsite_priority"></bizsolo:setDS>
    <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKCreatePI" perfMethod="commit" mode="BizSite" dsi=""></bizsolo:executeAction>
<% /* Workaround, retAddr will disappear in the future */ %>
<% String retAddr = bean.getPropString("returnPage"); %>
<% if(retAddr != null) { %>
<bizsolo:redirectURL page="<%= retAddr %>"/>
<% } %>
</bizsolo:if>
<bizsolo:if test='<%= ! _PageName.equals(request.getParameter("_PageName")) %>'>
    <bizsolo:initApp mode="BizSite" name="MBAInterfaceFinaChecksum" refresh="true"></bizsolo:initApp>
    <bizsolo:initDS name="bizsite_instruction"></bizsolo:initDS>
    <bizsolo:initDS name="bizsite_priority" hexval="FALSE"></bizsolo:initDS>
    <bizsolo:initDS name="bizsite_instanceName" hexval="FALSE"></bizsolo:initDS>
    <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKGetDS" perfMethod="commit" mode="BizSite" dso=""></bizsolo:executeAction>
</bizsolo:if>

<title>Start</title>
<%boolean isStandaloneBS = (bizManage == null || bizManage.getName() == null || "".equals(bizManage.getName()) || bizManage.getLocale() == null);Locale myLocale = (!isStandaloneBS) ? bizManage.getLocale() : request.getLocale();%>
<!-- Javascript -->
<script language="JavaScript"> var getLocalizedString = parent.getLocalizedString; </script>
<form:includes contextPath="${contextPath}"/>
<script language="JavaScript">
 Ext.BLANK_IMAGE_URL = '<c:out value='${contextPath}'/>bpmportal/javascript/ext/resources/images/default/s.gif';
	 
	  var isIFrame = <%= (PublicResources.INTERACTIVE_MODE.equalsIgnoreCase(bean.getPropString(PublicResources.MODE)) || PublicResources.SLAVE_MODE.equalsIgnoreCase(bean.getPropString(PublicResources.MODE))) ? true : false %>;
	  

	function getContextPath(){
        return "<%=request.getContextPath()%>";
    }
</script>


<sbm:setLocale value="<%= bizManage.getLocale() %>"></sbm:setLocale>
<% try{ %><sbm:setBundle scope="page" basename="MBAInterfaceFinaChecksum/properties/MBAInterfaceFinaChecksum"></sbm:setBundle><% } catch(Exception e){}%>
<bizsolo:getApplicationResources baseName="MBAInterfaceFinaChecksum/properties/MBAInterfaceFinaChecksum"/></head>
<body class="apbody yui-skin-sam" onLoad="setCheckBoxStyleForIE();hideControls();beforeInitControls();initControls();initTabs();sbm.utils.onDOMReady();">
<form method="post" name="form" onsubmit="return sbm.utils.onFormSubmit();">
<div id="northDiv"><bizsolo:xsrf/></div><% /* Workaround, activityName will disappear in the future */ %>
<% String activityName = bean.getPropString("workitemName"); %>
<div id="resultDiv">
<div style='visibility:hidden;display:none' class='vBoxClass' name='errors' id='errors'></div>
<input name="_PageName" type="hidden" value="Start">
<%if(bean.getPropString("workitemName") != null) {%><input name="_WorkitemName" type="hidden" value="<%= URLHexCoder.encode(bean.getPropString("workitemName")) %>"/><input name="_WorkitemId" type="hidden" value="<%= bean.getPropLong("workitemId") %>"/><%}%>
<input name="bizsite_pagetype" type="hidden" value="start">
<input name="_ProcessTemplateName" type="hidden" value='<%=bean.getPropString("ptName")%>'>
<input name="_yahoo_flow_button" type="hidden" value=''>
<!-- Content --> 

    
<!-- Header -->
<table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="ApSegTblInBg">
<table border="0" cellspacing="0" align="center" cellpadding="4" width="100%">
<tr align="center">
<td class="ApSegTitle"><bizsolo:getLabel type="RESOURCE" name="processTemplateLabel_"></bizsolo:getLabel></td>
</tr></table>
<table border="0" cellspacing="1" align="center" cellpadding="4" width="100%" class="ApSegDataTbl">
<tr border="1" align="center">
<td border="1" width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_INSTANCE_NAME_LABEL"></bizsolo:getLabel></td>
<td border="1" width="55%" class="ApSegGenData"><input name="bizsite_instanceName" size="30" maxlength="240" type="text" class="ApInptTxt"><script>addValue("bizsite_instanceName", "<bizsolo:getLabel type='RESOURCE' name='processTemplateLabel_'/>");</script></td>
<td border="1" width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_PRIORITY_LABEL"></bizsolo:getLabel></td>
<td border="1" width="15%" class="ApSegGenData"><select name="bizsite_priority" id="bizsite_priority" class="ApInptSelect"><c:forEach var="priority" items="${_priorities}"> <option value="${priority}"> <c:choose><c:when test="${priority == 'critical'}"><bizsolo:getLabel type="RESOURCE" name="PRIORITY_CRITICAL"/></c:when><c:when test="${priority == 'high'}"><bizsolo:getLabel type="RESOURCE" name="PRIORITY_HIGH"/></c:when><c:when test="${priority == 'medium'}"><bizsolo:getLabel type="RESOURCE" name="PRIORITY_MEDIUM"/></c:when><c:when test="${priority == 'low'}"><bizsolo:getLabel type="RESOURCE" name="PRIORITY_LOW"/></c:when>	</c:choose>	</option>		</c:forEach>  </select></td>
</tr>
<tr><td border="1" width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_INSTRUCTION_LABEL"></bizsolo:getLabel></td>
<td border="1" colspan="3" class="ApSegGenData"><sbm:message key="workstep.Start.instruction" escapeLine="true"></sbm:message></td></tr>
</table>
</td>
</tr>
</table>

    <br clear="all">
<br clear="all">
<br clear="all">


</div>
<!-- Footer -->

<div id="cmdDiv" style="height:46px;">
<table width="100%" cellpadding="0" align="center" cellspacing="0" border="0">
<tr align="center">
<td class="ApButtonDarkBg" width="63%">
<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td class="ApBtnSpace">
<form:button id="bizsite_completeTask" name="bizsite_completeTask" link="CREATE_LABEL" resourceType="RESOURCE"/> </td>
<td class="ApBtnSpace">
<form:button id="bizsite_reset" name="bizsite_reset" link="RESET_LABEL" onclick="sbm.utils.reset" resourceType="RESOURCE"/> </td>
<td class="ApBtnSpace">
<form:button id="btn-cancel" name="btn-cancel" link="CANCEL_LABEL" onclick="sbm.utils.cancel" resourceType="RESOURCE"/> </td>
</tr>
</table>
</td>
</tr>
</table>
</div>

  
                    <div id="resizablepanel" style="display:none">
                        <div class="hd">Alert Dialog</div>
                        <div class="bd"></div>
                        <div class="ft"></div>
                    </div> 
<div id="southDiv"></div></form>
</body>

<script language="JavaScript">
<!--
function beforeInitControls() {
}
-->
</script>
<script language="JavaScript">
<!--
function userValidationJavascript() {
return true;
}
-->
</script>
<sbm:dataSources appName="MBAInterfaceFinaChecksum" appType="bizlogic">
</sbm:dataSources>
<script language="JavaScript">
<!---->
</script>
<!--Initialize extensible widgets.-->
<script language="JavaScript">
<!--
var _dateFormats = {date:'<%=bean.getPropString(PublicResources.JS_CALENDAR_DATE_FORMAT)%>', dateOnly:'<%=bean.getPropString(PublicResources.JS_CALENDAR_DATE_ONLY_FORMAT)%>'};

var allWidgets = [];
var businessObjects = [];
var formWidgetHandler;

sbm.utils.onDOMReady = function() {
YAHOO.util.Event.onDOMReady(function(){
  sbm.utils.setPriority('bizsite_priority','<%=com.savvion.sbm.util.PriorityHelper.self().getDefaultPriorityAsString()%>');formWidgetHandler = new FormWidgetHandler(allWidgets,null,{processName:'MBAInterfaceFinaChecksum',adapletCache:{}},'<%=request.getParameter(BizSoloRequest.BSS_FIID)%>');
 });
 }
Ext.onReady(function(){
         var viewport = new Bm.util.BmViewport('',{resultComponentXtype:'container'});

});
sbm.utils.onFormSubmit = function() {
         if(!formWidgetHandler.validateWidgets()) return false;
        try{
             if(!userValidationJavascript()) return false;
             sbm.utils.handleFormSubmit();
         }catch(e){return false;}
         document.form.action='<%=response.encodeURL("Start.jsp")%>';
         if(allWidgets.length > 0)formWidgetHandler.saveDataSlots();
         return true;
}
-->
</script>

</html>