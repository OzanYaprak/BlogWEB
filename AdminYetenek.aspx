<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminYetenek.aspx.cs" Inherits="AdminYetenek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
	<form id="Form1" runat="server">
		<table class="table table-bordered">
			<tr>
				<th class="text-center" style="background-color: cadetblue">ID</th>
				<th class="text-center" style="background-color: cadetblue">Başlık</th>
				<th class="text-center" style="background-color: cadetblue">İşlemler</th>
			</tr>

			<tbody>
				<asp:Repeater ID="Repeater1" runat="server">
					<ItemTemplate>

						<tr>
							<th class="text-center"><%# Eval("ID") %></th>
							<td class="text-center"><%# Eval("Yetenek") %></td>
							<td class="text-center">
								<asp:HyperLink ID="HyperLink1" NavigateUrl='<%# "AdminYetenekSil.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink>
								<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# "AdminYetenekGüncelle.aspx?ID=" + Eval("ID") %>' runat="server" CssClass="btn btn-warning">Güncelle</asp:HyperLink>
							</td>
						</tr>

					</ItemTemplate>
				</asp:Repeater>
			</tbody>
		</table>
		<asp:HyperLink NavigateUrl="~/AdminYetenekEkle.aspx" ID="HyperLink3" runat="server" CssClass="btn btn-primary">Yeni Ekle</asp:HyperLink>
	</form>
</asp:Content>

