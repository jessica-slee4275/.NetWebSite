<%@ Page Title="Board" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Board.aspx.cs" Inherits="board.Board" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <!DOCTYPE html>
    <html xmlns ="http://www.w3.org/1999/xhtml">
        <head><meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title></title>
        </head>
        <body>
            <div id ="main">
                <div style ="width:150px; float:left; height:100%;"></div>
                <div style ="border:1px; width:400px; height:150px;">
                    <table>
                        <tr>
                            <td>
                                <textarea id="txtMsg" style="height:100px; width:400px"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <input type="button" id="btnMsg" value="Write"/>
                            </td>
                        </tr>
                    </table>
                    <div id ="content" style="width:400px;"></div>
                </div>
            </div>
        </body>
    </html>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnMsg").click(function () {
                var msg = $("#txtMsg").val();
                var date = new Date();
                var htmls;
                $("<div/>").load("message.html", function (data) {
                    var $htmldata = $(data);
                    $htmldata.find("#msgBox").html(msg);
                    $htmldata.find("#dateBox").text(date);
                    var datas = $htmldata.html();
                    $("#content").prepend(datas);
                });
            });
        });
    </script>
</asp:Content>
