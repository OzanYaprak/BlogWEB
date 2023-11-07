<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEgitimGüncelle.aspx.cs" Inherits="AdminEgitimGüncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
	<form id="form1" runat="server">
		<div class="form-group">
			<div>
				<asp:Label ID="Label6" runat="server" Text="ID"></asp:Label>
				<asp:TextBox ID="TextBoxID" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<div>
				<asp:Label ID="Label1" runat="server" Text="Başlık"></asp:Label>
				<asp:TextBox ID="TextBoxBaslik" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<div>
				<asp:Label ID="Label2" runat="server" Text="Altbaşlık"></asp:Label>
				<asp:TextBox ID="TextBoxAltbaslik" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<div>
				<asp:Label ID="Label3" runat="server" Text="Açıklama"></asp:Label>
				<asp:TextBox ID="TextBoxAciklama" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px"></asp:TextBox>
			</div>
			<br />
			<div>
				<asp:Label ID="Label5" runat="server" Text="NotOrt."></asp:Label>
				<asp:TextBox ID="TextBoxNotOrt" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<div>
				<asp:Label ID="Label4" runat="server" Text="Tarih"></asp:Label>
				<asp:TextBox ID="TextBoxTarih" runat="server" CssClass="form-control"></asp:TextBox>
			</div>
			<br />
			<asp:Button ID="ButtonGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-warning" OnClick="ButtonGuncelle_Click" />

		</div>
	</form>
</asp:Content>

