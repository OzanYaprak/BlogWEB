<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminOdulEkle.aspx.cs" Inherits="AdminOdulEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
		<form id="form1" runat="server">
		<div class="form-group">

			<div>
				<asp:Label ID="Label1" runat="server" Text="Ödül"></asp:Label>
				<asp:TextBox ID="TextBoxOdul" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />

			<asp:Button ID="ButtonKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="ButtonKaydet_Click" />
			<asp:Button ID="ButtonGeri" runat="server" Text="Geri" CssClass="btn btn-secondary" OnClick="ButtonGeri_Click" />

		</div>
	</form>
</asp:Content>

