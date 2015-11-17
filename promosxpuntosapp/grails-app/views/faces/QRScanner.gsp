<!DOCTYPE html>
<html class=" mz-js mz-no-flexbox mz-canvas mz-canvastext mz-no-webgl mz-no-touch mz-geolocation mz-postmessage mz-websqldatabase mz-indexeddb mz-hashchange mz-history mz-draganddrop mz-websockets mz-rgba mz-hsla mz-multiplebgs mz-backgroundsize mz-borderimage mz-borderradius mz-boxshadow mz-textshadow mz-opacity mz-cssanimations mz-csscolumns mz-cssgradients mz-cssreflections mz-csstransforms mz-csstransforms3d mz-csstransitions mz-fontface mz-generatedcontent mz-video mz-audio mz-localstorage mz-sessionstorage mz-webworkers mz-applicationcache mz-svg mz-inlinesvg mz-smil mz-svgclippaths mz-no-bgrepeatround mz-no-bgrepeatspace mz-getusermedia mz-no-pagedcontent mz-fullscreen mz-pagevisibility"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <title>Promos x Puntos - Leer codigo QR</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=480, user-scalable=no">
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

<section id="main" class="wrapper">
    <div class="container" id="container">
        <header class="major special">
            <h3>Acerca tu dispositivo al codigo QR del establecimiento</h3>
            <h1><g:img dir="images" file="logotipo_color.png" class="img-responsive img-thumbnail"/></h1>
            <div>
                <video id="sourcevid">
                    <p>This application requires an HTML5 <code>&lt;video&gt;</code> capable browser…</p>
                </video>
            </div>
            <!-- aca se muestra la salida de la lectura del codigo qr -->
            <div id="out"></div>

            <a href="/promosxpuntosapp/profile" class="button special">Cancelar</a>
        </header>
    </div>
</section>
<asset:javascript src="options.js"/>
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
<asset:javascript src="modernizr.js"/>
<asset:javascript src="qr.min.js"/>
<asset:javascript src="script.js"/>
</body>
</html>