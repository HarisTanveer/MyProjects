<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="admin_panel.aspx.cs" Inherits="Roshan.admin_panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
    <title>Admin Panel</title>

    
    <style>
        .gridview {
    width: 100%; 
    /*word-wrap:break-word;*/
    table-layout: fixed;
}
    </style>

    <script type="text/javascript">
        
        function myFunction(id) 
        {
            var x = document.getElementById(id);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-lg-10 col-md-9 col-12 body_block  align-content-center">
              
         <h1 class="text-center">Welcome to Admin Panel</h1>
        <div class="row justify-content-center">
            
              <a runat="server"  class="btn btn-primary" onclick='myFunction("Talent_Show")' style="font-weight:bold;color:black">Talent</a>
              <a runat="server" class="btn btn-primary" onclick='myFunction("Login_Show")' style="font-weight:bold;color:black"> Logins </a>
            <a runat="server" class="btn btn-primary" onclick='myFunction("Videos_Show")' style="font-weight:bold;color:black"> Videos </a>
            <asp:button runat="server" class="btn btn-primary" ID="redirect" OnClick="redirect_Click" style="font-weight:bold;color:black" Text=" Submit "></asp:button>
        </div>



            <div ID="Talent_Show" style="overflow-x:auto;width:800px; display:none" >
            <asp:FormView runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <InsertItemTemplate>
                    Name:
                    <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                    <br />
                    Age:
                    <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                    <br />
                    Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />
                    Type:
                    <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
                    <br />
                    Weight:
                    <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
                    <br />
                    Build:
                    <asp:TextBox ID="BuildTextBox" runat="server" Text='<%# Bind("Build") %>' />
                    <br />
                    Height:
                    <asp:TextBox ID="HeightTextBox" runat="server" Text='<%# Bind("Height") %>' />
                    <br />
                    Waist:
                    <asp:TextBox ID="WaistTextBox" runat="server" Text='<%# Bind("Waist") %>' />
                    <br />
                    Chest:
                    <asp:TextBox ID="ChestTextBox" runat="server" Text='<%# Bind("Chest") %>' />
                    <br />
                    Arms:
                    <asp:TextBox ID="ArmsTextBox" runat="server" Text='<%# Bind("Arms") %>' />
                    <br />
                    Shoulders:
                    <asp:TextBox ID="ShouldersTextBox" runat="server" Text='<%# Bind("Shoulders") %>' />
                    <br />
                    Foot:
                    <asp:TextBox ID="FootTextBox" runat="server" Text='<%# Bind("Foot") %>' />
                    <br />
                    Wrist:
                    <asp:TextBox ID="WristTextBox" runat="server" Text='<%# Bind("Wrist") %>' />
                    <br />
                    Shirt:
                    <asp:TextBox ID="ShirtTextBox" runat="server" Text='<%# Bind("Shirt") %>' />
                    <br />
                    PantsL:
                    <asp:TextBox ID="PantsLTextBox" runat="server" Text='<%# Bind("PantsL") %>' />
                    <br />
                    Collar:
                    <asp:TextBox ID="CollarTextBox" runat="server" Text='<%# Bind("Collar") %>' />
                    <br />
                    PExperience:
                    <asp:TextBox ID="PExperienceTextBox" runat="server" Text='<%# Bind("PExperience") %>' />
                    <br />
                    Picture1:
                    <asp:TextBox ID="Picture1TextBox" runat="server" Text='<%# Bind("Picture1") %>' />
                    <br />
                    Picture2:
                    <asp:TextBox ID="Picture2TextBox" runat="server" Text='<%# Bind("Picture2") %>' />
                    <br />
                    Picture3:
                    <asp:TextBox ID="Picture3TextBox" runat="server" Text='<%# Bind("Picture3") %>' />
                    <br />
                    Video:
                    <asp:TextBox ID="VideoTextBox" runat="server" Text='<%# Bind("Video") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert"   />
                </InsertItemTemplate>
             
            </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" InsertCommand="INSERT INTO [TALENT] ([Name], [Age], [Gender], [Type], [Weight], [Build], [Height], [Waist], [Chest], [Arms], [Shoulders], [Foot], [Wrist], [Shirt], [PantsL], [Collar], [PExperience], [Picture1], [Picture2], [Picture3], [Video]) VALUES (@Name, @Age, @Gender, @Type, @Weight, @Build, @Height, @Waist, @Chest, @Arms, @Shoulders, @Foot, @Wrist, @Shirt, @PantsL, @Collar, @PExperience, @Picture1, @Picture2, @Picture3, @Video)">
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Weight" Type="Int32" />
                        <asp:Parameter Name="Build" Type="String" />
                        <asp:Parameter Name="Height" Type="String" />
                        <asp:Parameter Name="Waist" Type="Int32" />
                        <asp:Parameter Name="Chest" Type="Double" />
                        <asp:Parameter Name="Arms" Type="Double" />
                        <asp:Parameter Name="Shoulders" Type="Double" />
                        <asp:Parameter Name="Foot" Type="Int32" />
                        <asp:Parameter Name="Wrist" Type="Double" />
                        <asp:Parameter Name="Shirt" Type="String" />
                        <asp:Parameter Name="PantsL" Type="String" />
                        <asp:Parameter Name="Collar" Type="Double" />
                        <asp:Parameter Name="PExperience" Type="String" />
                        <asp:Parameter Name="Picture1" Type="String" />
                        <asp:Parameter Name="Picture2" Type="String" />
                        <asp:Parameter Name="Picture3" Type="String" />
                        <asp:Parameter Name="Video" Type="String" />
                    </InsertParameters>
                                 </asp:SqlDataSource>


                <asp:GridView runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                        <asp:BoundField DataField="Build" HeaderText="Build" SortExpression="Build" />
                        <asp:BoundField DataField="Height" HeaderText="Height" SortExpression="Height" />
                        <asp:BoundField DataField="Waist" HeaderText="Waist" SortExpression="Waist" />
                        <asp:BoundField DataField="Chest" HeaderText="Chest" SortExpression="Chest" />
                        <asp:BoundField DataField="Arms" HeaderText="Arms" SortExpression="Arms" />
                        <asp:BoundField DataField="Shoulders" HeaderText="Shoulders" SortExpression="Shoulders" />
                        <asp:BoundField DataField="Foot" HeaderText="Foot" SortExpression="Foot" />
                        <asp:BoundField DataField="Wrist" HeaderText="Wrist" SortExpression="Wrist" />
                        <asp:BoundField DataField="Shirt" HeaderText="Shirt" SortExpression="Shirt" />
                        <asp:BoundField DataField="PantsL" HeaderText="PantsL" SortExpression="PantsL" />
                        <asp:BoundField DataField="Collar" HeaderText="Collar" SortExpression="Collar" />
                        <asp:BoundField DataField="PExperience" HeaderText="PExperience" SortExpression="PExperience" />
                        <asp:BoundField DataField="Picture1" HeaderText="Picture1" SortExpression="Picture1" />
                        <asp:BoundField DataField="Picture2" HeaderText="Picture2" SortExpression="Picture2" />
                        <asp:BoundField DataField="Picture3" HeaderText="Picture3" SortExpression="Picture3" />
                        <asp:BoundField DataField="Video" HeaderText="Video" SortExpression="Video" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />

                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" DeleteCommand="DELETE FROM [TALENT] WHERE [ID] = @ID" InsertCommand="INSERT INTO [TALENT] ([Name], [Age], [Gender], [Type], [Weight], [Build], [Height], [Waist], [Chest], [Arms], [Shoulders], [Foot], [Wrist], [Shirt], [PantsL], [Collar], [PExperience], [Picture1], [Picture2], [Picture3], [Video]) VALUES (@Name, @Age, @Gender, @Type, @Weight, @Build, @Height, @Waist, @Chest, @Arms, @Shoulders, @Foot, @Wrist, @Shirt, @PantsL, @Collar, @PExperience, @Picture1, @Picture2, @Picture3, @Video)" SelectCommand="SELECT * FROM [TALENT]" UpdateCommand="UPDATE [TALENT] SET [Name] = @Name, [Age] = @Age, [Gender] = @Gender, [Type] = @Type, [Weight] = @Weight, [Build] = @Build, [Height] = @Height, [Waist] = @Waist, [Chest] = @Chest, [Arms] = @Arms, [Shoulders] = @Shoulders, [Foot] = @Foot, [Wrist] = @Wrist, [Shirt] = @Shirt, [PantsL] = @PantsL, [Collar] = @Collar, [PExperience] = @PExperience, [Picture1] = @Picture1, [Picture2] = @Picture2, [Picture3] = @Picture3, [Video] = @Video WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Weight" Type="Int32" />
                        <asp:Parameter Name="Build" Type="String" />
                        <asp:Parameter Name="Height" Type="String" />
                        <asp:Parameter Name="Waist" Type="Int32" />
                        <asp:Parameter Name="Chest" Type="Double" />
                        <asp:Parameter Name="Arms" Type="Double" />
                        <asp:Parameter Name="Shoulders" Type="Double" />
                        <asp:Parameter Name="Foot" Type="Int32" />
                        <asp:Parameter Name="Wrist" Type="Double" />
                        <asp:Parameter Name="Shirt" Type="String" />
                        <asp:Parameter Name="PantsL" Type="String" />
                        <asp:Parameter Name="Collar" Type="Double" />
                        <asp:Parameter Name="PExperience" Type="String" />
                        <asp:Parameter Name="Picture1" Type="String" />
                        <asp:Parameter Name="Picture2" Type="String" />
                        <asp:Parameter Name="Picture3" Type="String" />
                        <asp:Parameter Name="Video" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Age" Type="Int32" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Weight" Type="Int32" />
                        <asp:Parameter Name="Build" Type="String" />
                        <asp:Parameter Name="Height" Type="String" />
                        <asp:Parameter Name="Waist" Type="Int32" />
                        <asp:Parameter Name="Chest" Type="Double" />
                        <asp:Parameter Name="Arms" Type="Double" />
                        <asp:Parameter Name="Shoulders" Type="Double" />
                        <asp:Parameter Name="Foot" Type="Int32" />
                        <asp:Parameter Name="Wrist" Type="Double" />
                        <asp:Parameter Name="Shirt" Type="String" />
                        <asp:Parameter Name="PantsL" Type="String" />
                        <asp:Parameter Name="Collar" Type="Double" />
                        <asp:Parameter Name="PExperience" Type="String" />
                        <asp:Parameter Name="Picture1" Type="String" />
                        <asp:Parameter Name="Picture2" Type="String" />
                        <asp:Parameter Name="Picture3" Type="String" />
                        <asp:Parameter Name="Video" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>


            <div ID="Login_Show" style="overflow-x:auto;width:800px; display:none">
            <asp:FormView runat="server" DataKeyNames="username" DataSourceID="SqlDataSource3" DefaultMode="Insert">
                <InsertItemTemplate>
                    username:
                    <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                    <br />
                    password:
                    <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                  </InsertItemTemplate>
        
            </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" InsertCommand="INSERT INTO [Login] ([username], [password]) VALUES (@username, @password)">
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>


                <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="username" DataSourceID="SqlDataSource4">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                    </Columns>

                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [username] = @username" InsertCommand="INSERT INTO [Login] ([username], [password]) VALUES (@username, @password)" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [password] = @password WHERE [username] = @username">
                    <DeleteParameters>
                        <asp:Parameter Name="username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>


            <div ID="Videos_Show" style="overflow-x:auto;width:800px; display:none">
            <asp:FormView runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource5" DefaultMode="Insert">
                <InsertItemTemplate>
                    videolink:
                    <asp:TextBox ID="videolinkTextBox" runat="server" Text='<%# Bind("videolink") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                </InsertItemTemplate>
                
            </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" InsertCommand="INSERT INTO [ourvideos] ([videolink]) VALUES (@videolink)">
                    <InsertParameters>
                        <asp:Parameter Name="videolink" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>


               <asp:GridView runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource6">
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                       <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                       <asp:BoundField DataField="videolink" HeaderText="videolink" SortExpression="videolink" />
                   </Columns>

               </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:RMConnectionString %>" DeleteCommand="DELETE FROM [ourvideos] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ourvideos] ([videolink]) VALUES (@videolink)" SelectCommand="SELECT * FROM [ourvideos]" UpdateCommand="UPDATE [ourvideos] SET [videolink] = @videolink WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="videolink" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="videolink" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

            </div>


    </div>

    </asp:Content>

