<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="EventRegistration.aspx.cs"
    Inherits="EventRegistration.EventRegistration" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Event Registration</title>
</head>

<body>

<form id="form1" runat="server">

    <h1>Online Event Registration</h1>

    <h2>ONLINE EVENT REGISTRATION</h2>


    <asp:Label ID="lblName" runat="server"
        Text="Full Name">
    </asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:TextBox ID="txtName" runat="server"> </asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:RequiredFieldValidator
        ID="rfvName"
        runat="server"
        ControlToValidate="txtName"
        ErrorMessage="Enter Your Full Name"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br /><br />


    <asp:Label ID="lblEmail" runat="server"
        Text="Email">
    </asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:TextBox ID="txtEmail" runat="server"> </asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:RequiredFieldValidator
        ID="rfvEmail"
        runat="server"
        ControlToValidate="txtEmail"
        ErrorMessage="Enter Valid Email"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator
        ID="revEmail"
        runat="server"
        ControlToValidate="txtEmail"
        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
        ErrorMessage="Invalid Email"
        ForeColor="Red">
    </asp:RegularExpressionValidator>

    <br /><br />

    <asp:Label ID="lblMobile" runat="server"
        Text="Mobile">
    </asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:TextBox ID="txtMobile" runat="server"> </asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:RequiredFieldValidator
        ID="rfvMobile"
        runat="server"
        ControlToValidate="txtMobile"
        ErrorMessage="Enter Mobile Number"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <asp:RegularExpressionValidator
        ID="revMobile"
        runat="server"
        ControlToValidate="txtMobile"
        ValidationExpression="^[0-9]{10}$"
        ErrorMessage="Enter 10 Digit Mobile Number"
        ForeColor="Red">
    </asp:RegularExpressionValidator>

    <br /><br />

    <asp:Label ID="lblCollege" runat="server"
        Text="College">
    </asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:TextBox ID="txtCollege" runat="server"> </asp:TextBox>

    &nbsp;&nbsp;&nbsp;&nbsp;

    <asp:RequiredFieldValidator
        ID="rfvCollege"
        runat="server"
        ControlToValidate="txtCollege"
        ErrorMessage="Enter Your College Name"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br /><br />


    <asp:Label ID="lblDepartment" runat="server"
        Text="Department">
    </asp:Label>

    <br />

    <asp:RadioButtonList ID="rblDepartment"
        runat="server">

        <asp:ListItem>Computer</asp:ListItem>
        <asp:ListItem>IT</asp:ListItem>
        <asp:ListItem>Mechanical</asp:ListItem>
        <asp:ListItem>Civil</asp:ListItem>

    </asp:RadioButtonList>

    <asp:RequiredFieldValidator
        ID="rfvDepartment"
        runat="server"
        ControlToValidate="rblDepartment"
        ErrorMessage="Select Department"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br />
->
    <asp:Label ID="lblEvent" runat="server"
        Text="Event">
    </asp:Label>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <asp:DropDownList ID="ddlEvent" runat="server">

        <asp:ListItem Value="">
            -- Select Event --
        </asp:ListItem>

        <asp:ListItem>
            Hackathon
        </asp:ListItem>

        <asp:ListItem>
            Workshop
        </asp:ListItem>

        <asp:ListItem>
            Seminar
        </asp:ListItem>

        <asp:ListItem>
            Coding Competition
        </asp:ListItem>

    </asp:DropDownList>

    <br /><br />


    <asp:Label ID="lblGender" runat="server"
        Text="Gender">
    </asp:Label>

    <br />

    <asp:RadioButtonList ID="rblGender"
        runat="server">

        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>

    </asp:RadioButtonList>

    <br />


  
    <asp:Label ID="lblSkills" runat="server"
        Text="Skills">
    </asp:Label>

    <br />

    <asp:CheckBoxList ID="cblSkills"
        runat="server">

        <asp:ListItem>C#</asp:ListItem>
        <asp:ListItem>Java</asp:ListItem>
        <asp:ListItem>Python</asp:ListItem>
        <asp:ListItem>C</asp:ListItem>

    </asp:CheckBoxList>

    <br />

    <asp:Label ID="lblAddress" runat="server"
        Text="Address">
    </asp:Label>

    <br />

    <asp:TextBox ID="txtAddress"
        runat="server"
        TextMode="MultiLine"
        Rows="5"
        Columns="35"> </asp:TextBox>

    <asp:RequiredFieldValidator
        ID="rfvAddress"
        runat="server"
        ControlToValidate="txtAddress"
        ErrorMessage="Enter Address"
        ForeColor="Red">
    </asp:RequiredFieldValidator>

    <br /><br />


    <asp:Button ID="btnRegister"
        runat="server"
        Text="Register"
        OnClick="btnRegister_Click">
    </asp:Button>

    <br /><br />

    <asp:Label ID="lblMessage"
        runat="server"
        ForeColor="Green">
    </asp:Label>

</form>

</body>
</html>