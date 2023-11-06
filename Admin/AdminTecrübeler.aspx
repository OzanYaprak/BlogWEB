<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminTecrübeler.aspx.cs" Inherits="AdminTecrübeler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

	<form id="Form1" runat="server">
		<table class="table table-bordered">
			<tr>
				<th>ID</th>
				<th>Başlık</th>
				<th>Alt başlık</th>
				<th>Açıklama</th>
				<th>Tarih</th>
				<th>İşlemler</th>
			</tr>

			<tbody>
				<asp:Repeater ID="Repeater1" runat="server">
					<ItemTemplate>

						<tr>
							<th><%# Eval("ID") %></th>
							<td><%# Eval("Başlık") %></td>
							<td><%# Eval("Altbaşlık") %></td>
							<td><%# Eval("Açıklama") %></td>
							<td><%# Eval("Tarih") %></td>
							<td>
								<asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "AdminTecrübeSil.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
								<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "AdminTecrübeGüncelle.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
							</td>
						</tr>

					</ItemTemplate>
				</asp:Repeater>
			</tbody>
		</table>
		<asp:HyperLink NavigateUrl="~/AdminTecrübeEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Yeni Ekle</asp:HyperLink>
	</form>

</asp:Content>

