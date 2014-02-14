<%--  This JSP has been generated by using from xsl version 9.0 at Thu Feb 13 21:14:58 EET 2014 --%>
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
<%! String _PageName = "Scheduler Waiting"; %>
<%! String __webAppName = "MBAInterfaceHeartBeat"; %>
<% pageContext.setAttribute( "contextPath", request.getContextPath()+"/"); %>
<% pageContext.setAttribute( "maxMulitLineLength", DatabaseMapping.self().getSQLSize(java.lang.String.class));  %>
<%java.util.List<String> priorities = com.savvion.sbm.bpmportal.util.PortalUtil.self().getPriorities();%>
<% pageContext.setAttribute( "_priorities",priorities); %>
<bizsolo:if test='<%=_PageName.equals(request.getParameter("_PageName")) %>'>
    <bizsolo:setDS name=""></bizsolo:setDS>
    <bizsolo:choose>
<bizsolo:when test='<%=request.getParameter("bizsite_reassignTask") !=null %>'>
      <bizsolo:initDS name="performer" param="bizsite_assigneeName" hexval="FALSE"></bizsolo:initDS>
      <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKReassignWI" perfMethod="commit" mode="BizSite" dsi="" dso=""></bizsolo:executeAction>
</bizsolo:when>
<bizsolo:when test='<%=request.getParameter("bizsite_saveTask") !=null %>'>
      <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKUpdateDS" perfMethod="commit" mode="BizSite" dsi=""></bizsolo:executeAction>
</bizsolo:when>
    <bizsolo:otherwise>
      <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKSetDS" perfMethod="commit" mode="BizSite" dsi="" res=""></bizsolo:executeAction>
      </bizsolo:otherwise>
    </bizsolo:choose>
<% /* Workaround, retAddr will disappear in the future */ %>
<% String retAddr = bean.getPropString("returnPage"); %>
<% if(retAddr != null) { %>
<bizsolo:redirectURL page="<%= retAddr %>"/>
<% } %>
</bizsolo:if>
<bizsolo:if test='<%= ! _PageName.equals(request.getParameter("_PageName")) %>'>
    <bizsolo:initApp mode="BizSite" name="MBAInterfaceHeartBeat"></bizsolo:initApp>
    <bizsolo:executeAction epClassName="com.savvion.BizSolo.beans.PAKGetDS" perfMethod="commit" mode="BizSite" dso=""></bizsolo:executeAction>
</bizsolo:if>

<title>Scheduler Waiting</title>
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
<% try{ %><sbm:setBundle scope="page" basename="MBAInterfaceHeartBeat/properties/MBAInterfaceHeartBeat"></sbm:setBundle><% } catch(Exception e){}%>
<bizsolo:getApplicationResources baseName="MBAInterfaceHeartBeat/properties/MBAInterfaceHeartBeat"/></head>
<body class="apbody yui-skin-sam" onLoad="setCheckBoxStyleForIE();hideControls();beforeInitControls();initControls();initTabs();sbm.utils.onDOMReady();">
<form method="post" name="form" onsubmit="return sbm.utils.onFormSubmit();">
<div id="northDiv"><bizsolo:xsrf/></div><% /* Workaround, activityName will disappear in the future */ %>
<% String activityName = bean.getPropString("workitemName"); %>
<div id="resultDiv">
<div style='visibility:hidden;display:none' class='vBoxClass' name='errors' id='errors'></div>
<input name="_PageName" type="hidden" value="Scheduler Waiting">
<%if(bean.getPropString("workitemName") != null) {%><input name="_WorkitemName" type="hidden" value="<%= URLHexCoder.encode(bean.getPropString("workitemName")) %>"/><input name="_WorkitemId" type="hidden" value="<%= bean.getPropLong("workitemId") %>"/><%}%>
<input name="bizsite_pagetype" type="hidden" value="activity">
<input name="_ProcessTemplateName" type="hidden" value='<%=bean.getPropString("ptName")%>'>
<input name="_yahoo_flow_button" type="hidden" value=''>
<!-- Content --> 

    
<!-- Header -->
<bizsolo:choose><bizsolo:when test='<%=bean.getPropString(\"workitemName\") != null %>'><table width="100%" cellspacing="0" cellpadding="0" border="0">
<tr>
<td class="ApSegTblInBg">
<table width="100%" cellpadding="4" align="center" cellspacing="0" border="0">
<tr>

<td class="ApSegTitle" align="center"><bizsolo:choose><bizsolo:when test='<%=bean.getPropString(\"workitemName\") != null %>'><bizsolo:getDS name="workitemName"></bizsolo:getDS></bizsolo:when><bizsolo:otherwise><%=_PageName%></bizsolo:otherwise></bizsolo:choose></td>
</tr>
</table>
<table class="ApSegDataTbl" width="100%" cellspacing="1" cellpadding="4" border="0">
<tr>
<td width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_INSTRUCTION_LABEL"></bizsolo:getLabel></td><td width="85%" class="ApSegGenData" colspan="5"><sbm:message key="workstep.Scheduler Waiting.instruction" escapeLine="true"></sbm:message></td>
</tr>
<tr>
<td width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_PRIORITY_LABEL"></bizsolo:getLabel></td><td width="15%" class="ApSegGenData"><bizsolo:getDS name="bizsite_priority"></bizsolo:getDS></td>
<td width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_STARTDATE_LABEL"></bizsolo:getLabel></td><td width="15%" class="ApSegGenData"><bizsolo:getDS name="bizsite_startDate"></bizsolo:getDS></td>
<td width="15%" class="ApSegGenLabel"><bizsolo:getLabel type="RESOURCE" name="BIZSITE_DUEDATE_LABEL"></bizsolo:getLabel></td><td width="15%" class="ApSegGenData"><bizsolo:getDS name="bizsite_dueDate"></bizsolo:getDS></td>
</tr>
</table>
</td>
</tr>
</table></bizsolo:when></bizsolo:choose>

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
<form:button id="bizsite_completeTask" name="bizsite_completeTask" link="COMPLETE_LABEL" resourceType="RESOURCE"/> </td>
<td class="ApBtnSpace">
<form:button id="bizsite_saveTask" name="bizsite_saveTask" link="SAVE_LABEL" resourceType="RESOURCE"/> </td>
<bizsolo:isAssigned></bizsolo:isAssigned><td class="ApBtnSpace">
<form:button id="bizsite_reset" name="bizsite_reset" link="RESET_LABEL" onclick="sbm.utils.reset" resourceType="RESOURCE"/> </td>
<td class="ApBtnSpace">
<form:button id="btn-cancel" name="btn-cancel" link="CANCEL_LABEL" onclick="sbm.utils.cancel" resourceType="RESOURCE"/> </td>
<bizsolo:isAssigned><td class="ApBtnSpace"><input class="ApInptTxt" type="text" name="bizsite_assigneeName" size="20"></td><td class="ApBtnSpace"><a href="javascript://" onClick="setUserControl(document.form.bizsite_assigneeName);searchUser()"><img width="16" height="16" border="0" title="Search" src="<c:out value='${contextPath}'/>bpmportal/css/app<%= bizManage.getTheme() %>/images/icon_edit_user_search_single.gif"></img></a></td><td class="ApBtnSpace"><form:button id="bizsite_reassignTask" name="bizsite_reassignTask" link="REASSIGN_LABEL" resourceType="RESOURCE"/> </td>
</bizsolo:isAssigned></tr>
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
<sbm:dataSources appName="MBAInterfaceHeartBeat" appType="bizlogic">
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
formWidgetHandler = new FormWidgetHandler(allWidgets,null,{processName:'MBAInterfaceHeartBeat',adapletCache:{}},'<%=request.getParameter(BizSoloRequest.BSS_FIID)%>');
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
         document.form.action='<%=response.encodeURL("SchedulerWaiting.jsp")%>';
         if(allWidgets.length > 0)formWidgetHandler.saveDataSlots();
         return true;
}
-->
</script>

</html>