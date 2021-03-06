﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Miperfil.aspx.cs" Inherits="Miperfil" %>

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
    <link rel="stylesheet" href="css/fullcalendar.css" />
    <link href="css/widgets.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/stylePerfil.css" rel="stylesheet" />
    <link href="css/style-responsive.css" rel="stylesheet" />
    <link href="css/xcharts.min.css" rel=" stylesheet" />
    <link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet" />

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
        <section id="main-content" class="wrapper">
            <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

            <div class="container contenedor">
                <div class="fb-profile">
                    <asp:Label ID="img_grande" runat="server" Text=""></asp:Label>
                    <asp:Label ID="img_pequena" runat="server" Text=""></asp:Label>
                    <div class="fb-profile-text">
                        <h1><asp:Label ID="lbl_nombre" runat="server"></asp:Label></h1>
                        <p><asp:TextBox ID="txt_frase" style="width: 400px;" runat="server"></asp:TextBox></p>
                    </div>
                </div>
                <div class="info-perfil">
                    <div id="profile" class="tab-pane">
                        <section class="panel">
                            <div class="bio-graph-heading">
                                <h1>Mi Cuenta</h1>
                            </div>
                            <div class="panel-body bio-graph-info">
                                <div class="row">
                                    <div class="bio-row">
                                        <p><span>Nombres: </span><asp:TextBox ID="txt_nombre" runat="server"></asp:TextBox></p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Apellidos: </span><asp:TextBox ID="txt_apellido" runat="server"></asp:TextBox></p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Cumpleaños: </span><asp:TextBox ID="txt_nacimiento" runat="server"></asp:TextBox></p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Email: </span><asp:TextBox ID="txt_mail" runat="server"></asp:TextBox></p>
                                    </div>
                                    <div class="bio-row">
                                        <p><span>Teléfono: </span><asp:TextBox ID="txt_tel" runat="server"></asp:TextBox></p>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <section>
                            <div class="row">
                                <asp:Button ID="btn_guardar" runat="server" Text="Guardar Datos" CssClass="btn btn-primary" OnClick="btn_guardar_Click" />
                            </div>
                        </section>
                    </div>
                </div>

            </div>
            <!-- /container -->
        </section>
        <!--CONTENIDO end -->


    </form>
    <!-- container section start -->

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
