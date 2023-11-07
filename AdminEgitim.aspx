<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEgitim.aspx.cs" Inherits="AdminEgitim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
	<form id="Form1" runat="server">
		<table class="table table-bordered">
			<tr>
				<th class="text-center" style="background-color:cadetblue">ID</th>
				<th class="text-center" style="background-color:cadetblue">Başlık</th>
				<th class="text-center" style="background-color:cadetblue">Alt başlık</th>
				<th class="text-center" style="background-color:cadetblue">Açıklama</th>
				<th class="text-center" style="background-color:cadetblue">Genel Not Ort.</th>
				<th class="text-center" style="background-color:cadetblue">Tarih</th>
				<th class="text-center" style="background-color:cadetblue">İşlemler</th>
			</tr>

			<tbody>
				<asp:Repeater ID="Repeater1" runat="server">
					<ItemTemplate>

						<tr>
							<th class="text-center"><%# Eval("ID") %></th>
							<td class="text-center"><%# Eval("Başlık") %></td>
							<td class="text-center"><%# Eval("Altbaşlık") %></td>
							<td class="text-center"><%# Eval("Açıklama") %></td>
							<td class="text-center"><%# Eval("NotOrt") %></td>
							<td class="text-center"><%# Eval("Tarih") %></td>
							<td class="text-center">
								<asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "AdminEgitimSil.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
								<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "AdminEgitimGüncelle.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
							</td>
						</tr>

					</ItemTemplate>
				</asp:Repeater>
			</tbody>
		</table>
		<asp:HyperLink NavigateUrl="~/AdminEgitimEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Yeni Ekle</asp:HyperLink>
	</form>
</asp:Content>

