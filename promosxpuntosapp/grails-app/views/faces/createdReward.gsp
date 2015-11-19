<%--
  Created by IntelliJ IDEA.
  User: japrietov
  Date: 6/11/15
  Time: 10:27 AM
--%>

<%@ page import="promosxpuntosapp.Reward" contentType="text/html;charset=UTF-8" %>

<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>PROMOXPUNTOS register-reward</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>
</head>
<body class="landing">

<!-- Header -->
<!-- Header -->
<header id="header">
    <h1><a href="index.html">Promos x Puntos</a></h1>
    <a>${session.user.nickname}</a>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="">Principal</a></li>
        <li><a href="users-module">usuarios</a></li>
        <li><a href="#subscribe">Registrar usuario</a></li>
        <li><a href="customersIndex">Para empresas</a></li>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
        </g:each>
    </ul>
</nav>


<!-- Four -->
<section id="subscribe" class="wrapper style4 special">
<div class="inner">
    <header class="major narrow">
        <h2>Nuevo Establecimiento</h2>
    </header>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div style="text-align:right;">
        <FORM>
            <INPUT Type="BUTTON" Value="Return establishment" class="btn btn-lg btn-info" Onclick="window.location.href='profileEstablishment'">
        </FORM>
    </div>
    <div class="heading">
        <center>
            <img src="${resource(dir: 'images',file: 'logotipo_color.png')}" class="img-responsive" alt="Conxole Admin" align="top" />
        </center>
    </div>
    <div class="panel-body">
        <header class="major special">
            <g:uploadForm controller="reward" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">

                <div class="row" align="center">
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
                            <g:datePicker name="creationDateReward" id="creationDateReward" class="form-control" years="${(new Date().year+1900..2030)}"/>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                            <g:datePicker name="creationDateReward" id="creationDateReward" class="form-control" years="${(new Date().year+1900..2030)}"/>
                            <label class="control-label list-group-item-danger img-rounded">asddasfasdf</label>
                        </div>
                    </g:else>
                </div>
                <br>
                <h4 style="text-align: center">Fecha de duracion</h4>
                <div class="row">
                    <g:if test="${!hasErrors(field: 'dueDateReward','error')}">
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2" style="text-align: center">
                            <g:datePicker name="dueDateReward" id="dueDateReward" class="form-control"  years="${(new Date().year+1900..2030)}"/>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error" style="text-align: center">
                            <g:datePicker name="dueDateReward" id="dueDateReward" class="form-control"  years="${(new Date().year+1900..2030)}"/>
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
                <div class="row">
                    <g:if test="${!hasErrors(field: 'available','error')}">
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2">
                            <g:field type="number"  id="available" class="form-control" name="available"  placeholder="Disponibilidad! de la PROMO"></g:field>
                        </div>
                    </g:if>
                    <g:else>
                        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-2 has-error">
                            <g:field type="number" id="available" class="form-control "  name="available"  placeholder="Puntos de la PROMO"></g:field>
                            <label class="control-label list-group-item-danger img-rounded">Disponibilidad mayor que 1</label>
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
        </header>
    </div>
</div>
</section>

<!-- Footer -->
<footer id="footer">
    <div class="inner">
        <ul class="icons">
            <li><a href="#" class="icon fa-facebook">
                <span class="label">Facebook</span>
            </a></li>
            <li><a href="#" class="icon fa-twitter">
                <span class="label">Twitter</span>
            </a></li>
            <li><a href="#" class="icon fa-instagram">
                <span class="label">Instagram</span>
            </a></li>
            <li><a href="#" class="icon fa-linkedin">
                <span class="label">LinkedIn</span>
            </a></li>
        </ul>
        <ul class="copyright">
            <li>&copy; PromosXPuntos.</li>
            <li>IngeSoft II.</li>
            <li>Unal.edu.co.</li>
        </ul>
    </div>
</footer>

<!-- Scripts -->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="skel.min.js"/>
<asset:javascript src="util.js"/>
<asset:javascript src="main.js"/>

</body>
</html>

