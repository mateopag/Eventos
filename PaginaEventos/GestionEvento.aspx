﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GestionEvento.aspx.cs" Inherits="GestionEvento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template" />
    <meta name="author" content="GeeksLabs" />
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal" />
    <link rel="shortcut icon" href="img/favicon.png" />

    <title>Eventos.-</title>

    <!-- Bootstrap CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
    <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css" />
    <link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/widgets.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet" />
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet" />
    <link href="css/styleGestionEvento.css" rel="stylesheet" />

</head>
<body>
    <form id="container" class="" runat="server">

        <!--CABECERA start-->
        <asp:Label ID="lbl_cabecera" runat="server" Text=""></asp:Label>
        <!--CABECERA end-->

        <script src="Login.aspx"></script>
        <!--BARRA LATERAL start-->
        <script src="js/barraLateral.js"></script>
        <!--BARRA LATERAL end-->



        <!--CONTENIDO start -->
        <section id="main-content">
            <section class="wrapper">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i>GestionEvento</h3>
                        <ol class="breadcrumb">
                            <li><i class="fa fa-home"></i><a href="Inicio.aspx">Inicio</a></li>
                            <li><i class="fa fa-home"></i><a href="GestionEvento.aspx">GestionEvento</a></li>
                        </ol>
                    </div>
                </div>
            </section>
            <section class="wrapper">
                <asp:GridView ID="grd_invitados" runat="server" CssClass="table" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </section>

            <section class="wrapper">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row" style="padding-bottom: 40px;">
                                        <h1>Mesa:
                                        <asp:TextBox ID="NombreMesa" runat="server"></asp:TextBox></h1>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p>Lista de invitados:</p>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <asp:ListBox runat="server">
                                            <asp:ListItem Value="4">LAUTARO</asp:ListItem>
                                            <asp:ListItem Value="7">MATEO</asp:ListItem>
                                            <asp:ListItem Value="3">JUAN</asp:ListItem>
                                        </asp:ListBox>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p style="display: inline;">Agregar: </p>
                                        <asp:TextBox ID="Invitado" runat="server"></asp:TextBox>
                                        <asp:Button ID="ConfInv" runat="server" Text="+" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row" style="padding-bottom: 40px;">
                                        <h1>Mesa:
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></h1>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p>Lista de invitados:</p>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <asp:ListBox runat="server">
                                            <asp:ListItem Value="4">JUANA</asp:ListItem>
                                            <asp:ListItem Value="7">AGUSTINA</asp:ListItem>
                                            <asp:ListItem Value="3">AUGUSTO</asp:ListItem>
                                        </asp:ListBox>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p style="display: inline;">Agregar: </p>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button1" runat="server" Text="+" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">

                            <div class="container">
                                <div class="carousel-caption">
                                    <div class="row" style="padding-bottom: 40px;">
                                        <h1>Mesa:
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></h1>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p>Lista de invitados:</p>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <asp:ListBox runat="server">
                                            <asp:ListItem Value="4">JUANA</asp:ListItem>
                                            <asp:ListItem Value="7">AGUSTINA</asp:ListItem>
                                            <asp:ListItem Value="3">AUGUSTO</asp:ListItem>
                                        </asp:ListBox>
                                    </div>
                                    <div class="row" style="padding-bottom: 40px;">
                                        <p style="display: inline;">Agregar: </p>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                        <asp:Button ID="Button2" runat="server" Text="+" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!-- /.carousel -->
            </section>
            <!--CONTENIDO end -->
        </section>
        <!-- container section start -->
    </form>
    <!-- javascripts -->
    <script src="js/allscripts.js"></script>
    <script>
        //knob
        $(function () {
            $(".knob").knob({
                'draw': function () {
                    $(this.i).val(this.cv + '%')
                }
            })
        });

        //carousel
        $(document).ready(function () {
            $("#owl-slider").owlCarousel({
                navigation: true,
                slideSpeed: 300,
                paginationSpeed: 400,
                singleItem: true

            });
        });

        //custom select box

        $(function () {
            $('select.styled').customSelect();
        });

        /* ---------- Map ---------- */
        $(function () {
            $('#map').vectorMap({
                map: 'world_mill_en',
                series: {
                    regions: [{
                        values: gdpData,
                        scale: ['#000', '#000'],
                        normalizeFunction: 'polynomial'
                    }]
                },
                backgroundColor: '#eef3f7',
                onLabelShow: function (e, el, code) {
                    el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                }
            });
        });
    </script>
</body>
</html>
