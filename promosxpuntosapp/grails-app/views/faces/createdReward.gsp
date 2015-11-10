<%--
  Created by IntelliJ IDEA.
  User: japrietov
  Date: 6/11/15
  Time: 10:27 AM
--%>
<%@ page import="promosxpuntosapp.Reward" contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>PROMOXPUNTOS register-reward</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/main.css" />
    <meta charset="utf-8" />
    <!--[if lte IE 8]><script src="js/ie/html5shiv.js"></script><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->


    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function() {
            $( "#creationDateReward" ).datepicker({minDate: 0});
            $( "#dueDateReward" ).datepicker({minDate: 2});
        });
    </script>


</head>

<body>
<div class="container ">
    <div id="create-reward" role="main">
        <div class="row vertical-offset-100" style="width: 500px; margin: 0 auto; border-style: solid; border-width: 1px;">
            <div class="col-md-6 col-md-offset-3">
                <div class="panel panel-default">

                    <div style="text-align:right;">
                        <FORM>
                            <INPUT Type="BUTTON" Value="Return Profile" class="btn btn-lg btn-info" Onclick="window.location.href='profileCustomer'">
                        </FORM>
                    </div>
                    <div  class="heading">
                        <div  class="heading">
                            <center>
                                <img src="${resource(dir: 'images',file: 'logotipo_color.png')}" class="img-responsive" alt="Conxole Admin" align="top" />
                            </center>
                        </div>
                    </div>
                    <div class="panel-body">
                            <g:uploadForm controller="reward" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">

                            <div class="row">
                                <g:if test="${!hasErrors(field: 'rewardName','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-1" style="text-align: center">
                                        <g:textField id="rewardName" class="form-control" name="rewardName"  placeholder="Nombre"></g:textField>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" >
                                        <g:textField id="rewardName" class="form-control "  name="rewardName"  placeholder="Nombre"></g:textField>
                                        <label class="control-label list-group-item-danger img-rounded">Nombre entre 3-20 caracteres</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'description','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                                        <g:textField id="description" class="form-control" name="description"  placeholder="Descripcion de tu PROMO"></g:textField>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                                        <g:textField id="description" class="form-control "  name="description"  placeholder="Descripcion"></g:textField>
                                        <label class="control-label list-group-item-danger img-rounded">Descripcion minimo de 30 caracteres</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <h4 style="text-align: center">Fecha de creacion</h4>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'creationDateReward','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: center">
                                        <g:textField name="creationDateReward" id="creationDateReward" class="form-control"/>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                                        <g:textField name="creationDateReward" id="creationDateReward" class="form-control"/>
                                        <label class="control-label list-group-item-danger img-rounded">message.properties</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <h4 style="text-align: center">Fecha de duracion</h4>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'dueDateReward','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: center">
                                        <g:textField name="dueDateReward" id="dueDateReward" class="form-control"/>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                                        <g:textField name="dueDateReward" id="dueDateReward" class="form-control"/>
                                        <label class="control-label list-group-item-danger img-rounded">Fecha invalida</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <div class="row">
                                <g:if test="${!hasErrors(field: 'point','error')}">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                                        <g:field type="number"  id="point" class="form-control" name="point"  placeholder="Puntos de la PROMO"></g:field>
                                    </div>
                                </g:if>
                                <g:else>
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                                        <g:field type="number" id="point" class="form-control "  name="point"  placeholder="Puntos de la PROMO"></g:field>
                                        <label class="control-label list-group-item-danger img-rounded">Puntos mayor que 1</label>
                                    </div>
                                </g:else>
                            </div>
                            <br>
                            <g:if test="${flash.message == "picture"}">
                                <div class="row">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded">
                                        <legend>Imagen de la PROMO</legend>
                                        <label for="picture">PROMO</label>
                                        <input type="file" name="picture"/>
                                        <div style="font-size:0.8em; margin: 1.0em;">
                                            <p>Tu imagen de la promocio es opcional, pero como sus clientes se enteraran de tus promociones sin una buena imagen!.</p>
                                        </div>
                                    </div>
                                </div>
                            </g:if>
                            <g:else>
                                <div class="row">
                                    <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2  list-group-item img-rounded avatar-loader">
                                        <legend>Imagen de la PROMO</legend>
                                        <label for="picture">PROMO</label>
                                        <input type="file" name="picture" id="picture" />
                                        <div style="font-size:0.8em; margin: 1.0em;">
                                            <p>Tu imagen de la promocion es opcional, pero como tus clientes se enteraran de tus promociones sin una buena imagen!</p>
                                        </div>
                                    </div>
                                </div>
                            </g:else>
                            <br>


                            <g:submitButton name="summit" type="submit" value="Crear recompensa" class="btn btn-lg btn-success btn-block" tabindex="-1"></g:submitButton>
                        </g:uploadForm>
                    </div>
                </div>
            </div>
            <!-- Scripts -->
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/skel.min.js"></script>
            <script src="assets/js/util.js"></script>
            <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
            <script src="assets/js/main.js"></script>
        </div>
    </div>
</div>
</body>
</html>