<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Predios.aspx.cs" Inherits="WebET1.Predios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="card shadow p-4 mb-4">
        <h3 class="mb-4 text-center">Listado de Predios</h3>
        <asp:GridView ID="GridViewPredios" runat="server" CssClass="table table-bordered table-striped display" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="pre_id" HeaderText="ID" />
                <asp:BoundField DataField="pre_codigo_catastral" HeaderText="Code  Catastral" />
                <asp:BoundField DataField="pre_nombre_predio" HeaderText="Nombre del Predio" />
                <asp:BoundField DataField="pre_direccion_principal" HeaderText="Dirección" />
                <asp:BoundField DataField="pre_area_total_ter" HeaderText="Área Terreno " />
                <asp:BoundField DataField="pre_area_total_const" HeaderText="Área Construcción " />
                <asp:BoundField DataField="pre_num_habitantes" HeaderText="Habitantes" />
                <asp:BoundField DataField="pre_estado" HeaderText="Estado" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
