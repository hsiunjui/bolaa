﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="F1.aspx.cs" Inherits="Web.Test.F1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form action="F2.aspx" method="post">
        <input type="hidden" name="action" value="create" />
        <input type="text" id="openid" name="openid" value="" />
        <input type="submit" id="submit" name="submit" value="submit" />
    </form>
</body>
</html>