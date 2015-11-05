
<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos</title>
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
    <h1><a href="index.html">Promos x Puntos</a></h1>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="index.html">Principal</a></li>
        <li><a href="users-module.html">usuarios</a></li>
        <li><a href="#four">Registrar usuario</a></li>
        <li><a href="customers.html">Para Empresas</a></li>
        <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
            <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.naturalName}</g:link></li>
        </g:each>
    </ul>
</nav>

<!-- Banner -->
<section id="banner">
    <img src="images/logotipo.png" alt="promosxpuntos" width="300px"/>
    <p>Magna feugiat lorem dolor egestas</p>
    <ul class="actions">
        <li><a href="#two" class="button big special">Ingresa</a></li>
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

<section class="wrapper style1" style="padding: 0; margin: 0;" align="center">
    <header class="major narrow">
        <h2>Encuentranos</h2>
        <p>Ipsum dolor tempus commodo adipiscing</p>
    </header>
    <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d16491.39356475207!2d-74.08865031089259!3d4.654165704834756!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2sco!4v1446650936869" width="75%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
</section>

<!-- Two -->
<section id="two" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Ingresa</h2>
            <p>Ingresa tus datos de usuario</p>
        </header>
        <form action="#" method="POST">
            <div class="container 75%">
                <div class="row uniform 50%">
                    <div class="6u 12u$(xsmall)">
                        <input name="nickname" placeholder="Nombre de usuario" type="text" />
                    </div>
                    <div class="6u$ 12u$(xsmall)">
                        <input name="password" placeholder="Contraseña" type="password" />
                    </div>
                </div>
            </div>
            <ul class="actions">
                <li><input type="submit" class="special" value="   Ingresar   " /></li>
            </ul>
        </form>
    </div>
</section>

<!-- Three -->
<section id="three" class="wrapper style3 special">
    <div class="inner">
        <header class="major narrow	">
            <h2>Magna sed consequat tempus</h2>
            <p>Ipsum dolor tempus commodo turpis adipiscing Tempor placerat sed amet accumsan</p>
        </header>
        <ul class="actions">
            <li><a href="customers.html" class="button big alt">PromosXPuntos para Empresas</a></li>
        </ul>
    </div>
</section>

<!-- Four -->
<section id="four" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Suscribete</h2>
            <p>Ipsum dolor tempus commodo adipiscing</p>
        </header>
        <g:uploadForm controller="StandardUser" action="save" accept-charset="UTF-8" role="form" class="form-signup">

            <div class="container 75%">
                <div class="row uniform 50%">
                    <g:if test="${!hasErrors(field: 'name','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="name" name="name"  placeholder="Nombres"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="name" name="name"  placeholder="Nombres"></g:textField>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'lastName','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:textField id="lastName" name="lastName"  placeholder="Apellidos"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="lastName" name="lastName"  placeholder="Apellidos"></g:textField>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'email','error')}">
                        <div class="12u$">
                            <g:textField id="email" name="email"  placeholder="Correo electrónico"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="email" name="email"  placeholder="Correo electrónico"></g:textField>
                    </g:else>
                    <g:if test="${!hasErrors(field: 'nickname','error')}">
                        <div class="12u$">
                            <g:textField id="nickname" name="nickname"  placeholder="Nombre de usuario"></g:textField>
                        </div>
                    </g:if>
                    <g:else>

                    </g:else>
                    <g:if test="${!hasErrors(field: 'password','error')}">
                        <div class="6u 12u$(xsmall)">
                            <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:passwordField id="password" name="password" placeholder="Contraseña"></g:passwordField>
                    </g:else>
                    <div class="6u$ 12u$(xsmall)">
                        <input name="repeatpass" placeholder="Repita la contraseña" type="password" />
                    </div>
                    <g:if test="${!hasErrors(field: 'gender','error')}">
                        <div class="12u$">
                            <div class="select-wrapper">
                                <g:select name="gender" from="['male', 'female']"  noSelection="['':'-Género-']"/>
                            </div>
                        </div>
                    </g:if>
                    <g:if test="${!hasErrors(field: 'telephone','error')}">
                        <div class="12u$">
                            <g:textField id="telephone" name="telephone"  placeholder="Teléfono"></g:textField>
                        </div>
                    </g:if>
                    <g:else>
                        <g:textField id="telephone" name="telephone"  placeholder="Teléfono"></g:textField>
                    </g:else>
                    <div class="12u$">
                        <label>Fecha de Nacimiento</label>
                    </div>
                    <g:if test="${!hasErrors(field: 'birthday','error')}">
                        <div class="12u">
                            <g:datePicker years="${1915..2015}" name="birthday" id="birthday" precision="day" class="form-control" value="${new Date()}"  noSelection="['':'Selecciona']"/>
                        </div>
                    </g:if>
                </div>
            </div>
            <g:submitButton name="summit" type="submit" value="Registrarse" class="special" tabindex="-1"></g:submitButton>
        </g:uploadForm>

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
<script src="js/jquery.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/util.js"></script>
<!--[if lte IE 8]><script src="js/ie/respond.min.js"></script><![endif]-->
<script src="js/main.js"></script>

</body>
</html>
