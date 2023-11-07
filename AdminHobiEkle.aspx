<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminHobiEkle.aspx.cs" Inherits="AdminHobiEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
	<form id="form1" runat="server">
		<div class="form-group">

			<div>
				<asp:Label ID="Label1" runat="server" Text="Hobi"></asp:Label>
				<asp:TextBox ID="TextBoxHobi" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />

			<asp:Button ID="ButtonKaydet" runat="server" Text="Kaydet" CssClass="btn btn-success" OnClick="ButtonKaydet_Click" />
			<asp:Button ID="ButtonGeri" runat="server" Text="Geri" CssClass="btn btn-secondary" OnClick="ButtonGeri_Click" />

		</div>
	</form>
</asp:Content>

