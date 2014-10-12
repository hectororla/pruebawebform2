<%@ Page ValidateRequest="false" language="c#" EnableEventValidation="false" EnableViewState="false" SmartNavigation="false" Codebehind="default_sy.aspx.cs" AutoEventWireup="false" Inherits="PBWebApp._Default_Sy" %>
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
		<script language="JavaScript" type="text/javascript" src="scripts/PBPictureListBox.js"></script>
		<%-- User Defined JavaScript Files --%>
	</head>
	<body ms_positioning="GridLayout" onkeydown="goWindowManager.BodyKeyDown(event)" onkeyup="goWindowManager.BodyKeyUp(event)">
		<script language="JavaScript"> PB_ShowMask(); PB_SetupWindowEventHandlers(); </script>
		<form id="Form1" method="post" runat="server">
			<input type="hidden" id="pbActiveWindowZIndex" runat="server" />
		 	<asp:PlaceHolder runat="server" id="mainWindow" />
		</form>
	</body>
</html>
