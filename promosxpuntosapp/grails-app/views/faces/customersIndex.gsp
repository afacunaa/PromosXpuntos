<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos - Empresas</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="css/main.css" />
    <!--[if lte IE 8]><link rel="stylesheet" href="css/ie8.css" /><![endif]-->
    <!--[if lte IE 9]><link rel="stylesheet" href="css/ie9.css" /><![endif]-->
</head>
<body class="landing">

<!-- Header -->
<header id="header" class="alt">
    <h1><a href="">Promos x Puntos</a></h1>
    <a href="customersIndex#nav">Menu</a>
</header>

<!-- Nav -->
<nav name="nav" id="nav">
    <ul class="links">
        <li><a href="customersIndex">Principal</a></li>
        <li><a href="customers-module/">Empresas</a></li>
        <li><a href="customersIndex#four">Registrar usuario</a></li>
        <li><a href="">Para empresas</a></li>
    </ul>
</nav>



<!-- Banner -->
<section id="banner" class="style3">
    <img src="images/logotipo.png" alt="promosxpuntos"/>
    <p>PromosXPuntos - Para que te diviertas ganando</p>
    <ul class="actions">
        <li><a href="#subscribir" class="button big special">Registra tu empresa</a></li>
        <li><a href="#ingreso" class="button big special">Ingresa como empresa</a></li>
    </ul>
</section>

<!-- One -->
<section id="one" class="wrapper style1">
    <div class="inner">
        <article class="feature left">
            <span class="image"><img src="images/pic01.jpg" alt="" width="500px"/></span>
            <div class="content">
                <h2>Integer vitae libero acrisus egestas placerat  sollicitudin</h2>
                <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est.</p>
                <ul class="actions">
                    <li>
                        <a href="#" class="button alt">Ipsum</a>
                    </li>
                </ul>
            </div>
        </article>
        <article class="feature right">
            <span class="image"><img src="images/pic02.jpg" alt="" width="500px"/></span>
            <div class="content">
                <h2>Integer vitae libero acrisus egestas placerat  sollicitudin</h2>
                <p>Sed egestas, ante et vulputate volutpat, eros pede semper est, vitae luctus metus libero eu augue. Morbi purus libero, faucibus adipiscing, commodo quis, gravida id, est.</p>
                <ul class="actions">
                    <li>
                        <a href="#" class="button alt">Lorem</a>
                    </li>
                </ul>
            </div>
        </article>
    </div>
</section>


<!-- Two -->
<section id="ingreso" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Ingresa</h2>
            <p>Ingresa tus datos de usuario</p>
        </header>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:uploadForm controller="customer" action="logIn" method="post">
            <div class="container 75%">
                <div class="row uniform 50%">
                    <div class="6u 12u$(xsmall)">
                        <g:if test="${!hasErrors(field: 'nickname','error')}">
                            <div class="12u$">
                                <g:textField id="nickname" name="nickname"  placeholder="Nombre de usuario"></g:textField>
                            </div>
                        </g:if>
                        <g:else>
                            <div class="12u$">
                                <g:textField id="nickname" name="nickname"  placeholder="Nombre de usuario"></g:textField>
                            </div>
                        </g:else>
                    </div>
                    <div class="6u$ 12u$(xsmall)">
                        <g:if test="${!hasErrors(field: 'password','error')}">
                            <div class="6u 12u$">
                                <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                            </div>
                        </g:if>
                        <g:else>
                            <div class="6u 12u$">
                                <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                            </div>
                        </g:else>
                    </div>
                </div>
            </div>
            <ul class="actions">
                <g:submitButton name="summit" type="submit" value="Ingresar" class="special" tabindex="-1"></g:submitButton>
            </ul>
        </g:uploadForm>
    </div>
</section>

<!-- Three -->
<section id="three" class="wrapper style3 special">
    <div class="inner">
        <header class="major narrow	">
            <h2>Manten a tus clientes cerca y tus ingresos en aumento.</h2>
            <p>Con Promos X Puntos tendrás a la mano una herramienta de fidelización y marketing para tu compañia.</p>
        </header>
        <ul class="actions">
            <li><a href="customersIndex" class="button big alt">PromosXPuntos para Empresas</a></li>
        </ul>
    </div>
</section>

<!-- Four -->
<section id="subscribir" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Registrate</h2>
        </header>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:uploadForm controller="customer" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">
            <div class="container 75%">
                <div class="row uniform 50%">
                    <div class="12u$">
                        <h1>Datos del encargado de la empresa</h1>
                    </div>
                    <g:if test="${!hasErrors(field: 'name','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="name" name="name" required="" placeholder="Nombres"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="name" name="name" required="" placeholder="Nombres"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'identification','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="identification" name="identification" required="" placeholder="Identificación"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="identification" name="identification" required="" placeholder="Identificación"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Identificación Incorrecta</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'email','error')}">
                        <div class="12u$">
                            <g:textField id="email" name="email" required="" placeholder="Correo electrónico"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="email" name="email" required="" placeholder="Correo electrónico"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Correo malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'nickname','error')}">
                        <div class="12u$">
                            <g:textField id="nickname" name="nickname" required="" placeholder="Nombre de usuario"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="nickname" name="nickname" required="" placeholder="Nombre de usuario"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre de usuario malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'password','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:passwordField id="password" name="password" required="" placeholder="Contraseña"></g:passwordField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:passwordField id="password" name="password" required="" placeholder="Contraseña"></g:passwordField>
                        <label class="control-label list-group-item-danger img-rounded">Contraseña mala</label>
                    </g:else>
                    <div class="6u$ 12u$(xsmall)">
                        <input name="repeatpass" placeholder="Repita la contraseña" type="password" />
                    </div>

                    <g:if test="${!hasErrors(field: 'contractNumber','error')}">
                        <div class="12u$">
                            <g:textField id="contractNumber" name="contractNumber" required="" placeholder="Número de contrato (?)"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="contractNumber" name="contractNumber" required="" placeholder="Número de contrato"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Telefono malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'description','error')}">
                        <div class="12u$">
                            <g:textField id="description" name="description" required="" placeholder="Descripción"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="description" name="description" required="" placeholder="Descripción"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Telefono malo</label>
                    </g:else>
                    <div class="12u$">
                        <h1>Datos de la empresa</h1>
                    </div>
                </div>
            </div>
            <g:submitButton name="summit" type="submit" value="Registrarse" class="special" tabindex="-1"></g:submitButton>
        </g:uploadForm>
    <!--
        <g:uploadForm controller="Establishment" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">
            <div class="container 75%">
                <div class="row uniform 50%">
                    <g:if test="${!hasErrors(field: 'name','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="name" name="name" required="" placeholder="Nombre"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="name" name="name" required="" placeholder="Nombre"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'telephoneNumber','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="telephoneNumber" name="telephoneNumber" required="" placeholder="Telefono"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="telephoneNumber" name="telephoneNumber" required="" placeholder="Telefono"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre malo</label>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'address','error')}">
                        <div class="12u$">
                            <g:textField id="address" name="address" required="" placeholder="Dirección"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="address" name="address" required="" placeholder="Nombre"></g:textField>
                        <label class="control-label list-group-item-danger img-rounded">Nombre malo</label>
                    </g:else>

                </div>
            </div>
        </g:uploadForm>
    -->
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
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>

</body>
</html>