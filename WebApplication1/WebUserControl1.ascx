<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebApplication1.WebUserControl1" %>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>

        <div>
            Select Date:
            <asp:TextBox ID="txtDate" runat="server" />
            
            <asp:ImageButton 
                ID="imgDate" 
                runat="server" 
                 ImageUrl="https://img.icons8.com/ios-filled/50/calendar.png"  
                Width="20" 
                Height="20" 
                ImageAlign="AbsMiddle" 
                OnClick="imgDate_Click" />
            
            <asp:Calendar 
                ID="cldDate" 
                runat="server" 
                Visible="False" 
                FirstDayOfWeek="Monday"
                OnSelectionChanged="cldDate_SelectionChanged"
                OnVisibleMonthChanged="cldDate_VisibleMonthChanged"
                PrevMonthText="Prev" 
                NextMonthText="Next" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                <DayStyle Width="14%" />
                <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                <TodayDayStyle BackColor="#CCCC99" />
            </asp:Calendar>
        </div>

    </ContentTemplate>
</asp:UpdatePanel>