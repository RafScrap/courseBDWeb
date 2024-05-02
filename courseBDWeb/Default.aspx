<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="courseBDWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Центр<span class="ui-provider"><span> обучения английскому языку</span></span></h1>
            <p class="lead">Это рекламное приложение центра обучения английскому языку.
            </p>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ConnectionString="name=LearnEngEntities"
                DefaultContainerName="LearnEngEntities"
                EntitySetName="courseAndLevel">
            </asp:EntityDataSource>

            <asp:EntityDataSource ID="EntityDataSource2" runat="server"
                ConnectionString="name=LearnEngEntities"
                DefaultContainerName="LearnEngEntities"
                EntitySetName="courseAndTopic">
            </asp:EntityDataSource>
            <h2>Cписок курсов:</h2>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                SelectedRowStyle-BackColor="LightGray"
                AutoGenerateSelectButton="true"
                AutoGenerateColumns="False"  
                BorderWidth="1px" CellPadding="2" DataSourceID="EntityDataSource1"  
                ForeColor="Black" GridLines="None" DataKeyNames="ID" OnSelectedIndexChanged="Button2_Click">  
                <Columns> 
                    <asp:BoundField DataField="nameCourse" HeaderText="Курс" 
                        ReadOnly="True" ItemStyle-Width="400px">
<ItemStyle Width="400px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="nameLevel" HeaderText="Уровень курса" 
                        ReadOnly="True" ItemStyle-Width="200px">
<ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
              </Columns>  
               
            </asp:GridView> 
            <div>
            <h2>Темы курса:</h2>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False"  
                BorderWidth="1px" CellPadding="2" DataSourceID="EntityDataSource2"  
                ForeColor="Black" GridLines="None">  
                <Columns> 
                    <asp:BoundField DataField="nameCourse" HeaderText="Курс" 
                        ReadOnly="True" ItemStyle-Width="400px"/>
                    <asp:BoundField DataField="numTopicInCourse" HeaderText="№ темы" 
                        ReadOnly="True" ItemStyle-Width="100px"/>
                    <asp:BoundField DataField="nameTopic" HeaderText="Тема" 
                        ReadOnly="True" ItemStyle-Width="400px"/>
                </Columns>  
               
            </asp:GridView> 
            </div>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Начать обучение</h2>
                <p>
                    Начать обучение вы можете с помощью обучающего интернет-приложения.&nbsp;
                </p>
            </section>
        </div>
    </main>

</asp:Content>
