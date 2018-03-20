﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="researcher.aspx.cs" Inherits="AgileWebsite.researcher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2 class="display-3" style="text-align: center;">Researcher Homepage</h2>
        <hr />
        <%--<div class="row id-row input-group justify-content-center">
            
            <label for="projID" class="text-muted">Please enter the project ID you wish to use:&nbsp; </label> <br />
            <asp:TextBox Class ="form-control" ID="projID" runat="server"></asp:TextBox> <br />
            
        </div>--%>
        <br />
        <div class="row id-row input-group justify-content-center">
            <div class="col">
                <asp:Button ID="createButton" runat="server"  class="btn btn-success btn-block" OnClick="Create" Value="Create" Text="Create Project" />&nbsp;<br />
            </div>
            <%--<div class="col">
                <asp:Button ID="uploadButton" runat="server"  class="btn btn-warning btn-block" OnClick="Upload" Value="Upload" Text="Upload an Edit" />&nbsp;<br />
            </div>
            <div class="col">
                <asp:Button ID="downloadButton" runat="server" class="btn btn-primary btn-block" OnClick="Download" Value="Download" Text="Download"/>&nbsp;<br />
            </div>--%>
            <%--<div class="col">
                <asp:Button ID="approveButton" runat="server" class="btn btn-success btn-block"  OnClick="Accepted" Value="Approve" Text="Approve"/>
            </div>--%>
        </div>
        
        <div class="row justify-content-center">
        <%for (int m = 0; m < data.Count()-1; m++) {  %>
            
             
            <div class="card" style="margin-left: 5px; margin-right: 5px;">

                 <div class="container" style="text-align: center; position:relative;">
                    <br />
                     <%if (dean_accepted[m] == "True")
                         {%>
                            <img class="card-img-top" src="/Content/img/approved.png" alt="approved" >
                            <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-weight:bold; font-size:x-large;">Request Approved</div>
                     <%}
                       else if (ass_dean_accepted[m] == "True")
                       {%>
                            <img class="card-img-top" src="/Content/img/pending.png" alt="pending dean approval" >
                            <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-weight:bold; font-size:x-large;">Pending Dean Approval</div>

                      <%}
                       else if (RIS_accepted[m] == "1")
                       { %>
                            <img class="card-img-top" src="/Content/img/pending.png" alt="pending assistant dean approval" >
                            <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-weight:bold; font-size:x-large;">Pending  Assistant Dean Approval</div>
                       <%}
                       else if (RIS_accepted[m] == "0" && RIS_denied[m]== "False")
                       { %>
                            <img class="card-img-top" src="/Content/img/pending.png" alt="pending assistant RIS approval" >
                            <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-weight:bold; font-size:x-large;">Pending RIS Approval</div>
                       <%}
                       else if (RIS_denied[m] == "True")
                       { %>
                            <img class="card-img-top" src="/Content/img/denied.png" alt="Request Denied" >
                            <div class="centered" style="position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); font-weight:bold; font-size:x-large;">Request Denied</div>
                       <%} %>





                    
                    </div>
                <div class="card-body" >
                   
                        <div class="col">
                            <h4 class="card-title"><a href="project.aspx?id=<%=projectID[m] %>"><%=projectName[m] %></a></h4>
                            
                            <h6 class="card-subtitle mb-2 text-muted">Researcher: <%=firstName[m]%>  <%=lastName[m]%> - <%=department[m] %></h6>
                            <h6 class="card-subtitle mb-2 text-muted">Associated File: <%=fileName[m]%></h6>
                            <h6 class="card-subtitle mb-2 text-muted">Project ID: <%=projectID[m]%></h6>
                        </div>
                                 
                    </div>
                 
                </div>
            
         <%} %>
        </div>
      
        </div>


</asp:Content>
