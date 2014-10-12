<%@ Page ValidateRequest="false" EnableEventValidation="false" language="c#" EnableViewState="false" SmartNavigation="false" Codebehind="default.aspx.cs" AutoEventWireup="false" Inherits="PBWebApp._Default" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
	<head runat="server">
		<title>Main</title>
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.0)" />
		<meta name="GENERATOR" content="Sybase PBWeb.NET Compiler" />
		<meta name="CODE_LANGUAGE" content="C#" />
		<meta name="vs_defaultClientScript" content="JavaScript" />
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5" />
		<script language="JavaScript" type="text/javascript" src="scripts/PBCollections.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBConst.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBCommonUtil.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBPDFPrinting.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBWindow.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBFile.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBEditMask.js"></script>
		<script language="JavaScript" type="text/javascript" src="scripts/PBDataWindow.js"></script>
		<%-- User Defined JavaScript Files --%>
	</head>
	<body ms_positioning="GridLayout" onkeydown="goWindowManager.BodyKeyDown(event)" onkeyup="goWindowManager.BodyKeyUp(event)">
<script language="JavaScript" type="text/javascript"> PB_ShowMask(); </script>
		<form id="Form1" method="post" runat="server">
        <asp:ScriptManager ID="ScriptManager1" EnablePartialRendering="true"
          EnableScriptGlobalization="true" AsyncPostBackTimeOut="1200" runat="server" />
<script language="JavaScript" type="text/javascript">
	var g_eTimeout = null;
	PB_SetupWindowEventHandlers();
	var prm = Sys.WebForms.PageRequestManager.getInstance();
	prm.add_pageLoaded(pageLoaded);
	prm.add_initializeRequest(InitializeRequest);
	prm.add_endRequest(EndRequest);

	function pageLoaded(sender, args)
	{
		PB_SetupWindows(gWindowStyle, goWindowManager.strActiveID, gbShowExitMessage, gstrExitMessage);
	}
  
	function InitializeRequest(sender, args)
	{
		PB_ClearSelection();
		g_inErrorPage = false;
		PB_ClearTimeout();
		if (g_eTimeout != null)
		{
			window.clearTimeout(g_eTimeout);
			g_eTimeout = null;
		}

		if(typeof(PB_ResetDatePicker) != "undefined")
		{
			PB_ResetDatePicker();
		}

		PBDataWindow_ResetAjax();
		
		PB_ShowMask();
		InitAjaxWaitingMessageBox();
	}
	
	function EndRequest(sender, args) 
	{
		HideAjaxWaitingMessageBox();
		PB_HideMask();
		g_eTimeout = window.setTimeout("PB_HideMask(true)", 2000);
	}
</script>
      <asp:UpdatePanel runat="server" ID="upTop" UpdateMode="Conditional" RenderMode="Block">
			<ContentTemplate>
				<input type="hidden" id="pbActiveWindowZIndex" runat="server" />
				<asp:PlaceHolder runat="server" id="mainWindow" />
			</ContentTemplate>
			</asp:UpdatePanel>
			<asp:UpdateProgress ID="AWMOD" runat="server">
			 <ProgressTemplate>			
				<input type = button class="AWMIDS"  id="AWMID" hidefocus="true" oncontextmenu="return false"/>
		</ProgressTemplate>
		</asp:UpdateProgress>        
		</form>
	</body>
</html>
