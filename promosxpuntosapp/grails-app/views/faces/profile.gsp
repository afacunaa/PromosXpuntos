<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
    <title>Promos x Puntos - Modulo de Usuario</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <asset:stylesheet src="template.css"/>
</head>
<body>

<!-- Header -->
<header id="header">
    <h1><a href="index.html">Promos x Puntos</a></h1>
    <a>${session.user.nickname}</a>
    <a href="#nav">Menu</a>
</header>

<!-- Nav -->
<nav id="nav">
    <ul class="links">
        <li><a href="index.html">Principal</a></li>
        <li><a href="section.html">Seccion 1</a></li>
        <li><a href="section.html">Seccion 2</a></li>
    </ul>
</nav>

<!-- Main -->
<section id="main" class="wrapper">
    <div class="container">

        <header class="major special">
            <h2>Bienvenido</h2>
            <p>  ${session.user.name} ${session.user.lastname} </p>
            <p> Correo electrónico: ${session.user.email} </p>
            <p> Fecha de nacimiento: ${session.user.birthday.format('d MMMM, yyyy')} </p>
            <p> Genero: ${session.user.gender} </p>
            <p> Teléfono: ${session.user.telephone} </p>

    <g:uploadForm controller="standardUser" action="logOut" method="post">
        <ul class="actions">
            <g:submitButton name="summit" type="submit" value="Salir" class="special" tabindex="-1"></g:submitButton>
            <a href="editStandardUser" class="button special">Editar datos</a>
        </ul>
    </g:uploadForm>
        </header>
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