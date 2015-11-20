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
        <li><a href="${createLink(controller:'StandardUser', action:'logOut')}" class="button special">Cerrar Sesion</a></li>
        <li><a href="/promosxpuntosapp/profile/editStandardUser">Editar Perfil</a></li>
        <li><a href="/promosxpuntosapp/profile/QRScanner">Registrar Visita</a></li>
        <li><a href="#">Ver Historial</a></li>
        <li><a href="/promosxpuntosapp/customerList">Catalogo de Clientes</a></li>
        <li><a href="#">Redimir Puntos</a></li>
    </ul>
</nav>

<section id="main" class="wrapper">
    <div class="container" id="container">
        <header class="major special">
            <h2>Registrar Visita</h2>
            <p>Acerca tu dispositivo al codigo QR del establecimiento</p>
            <div>
                <video id="sourcevid" width="400" height="400">
                    <p>This application requires an HTML5 <code>&lt;video&gt;</code> capable browser…</p>
                </video>
            </div>
            <div id="out"></div>
            <g:uploadForm controller="visit" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">
                <div class="container 75%">
                    <div class="row uniform 50%">
                        <div class="12u$">
                            <g:submitButton id="submit" name="summit" type="submit" value="Enviar" class="special" tabindex="-1" disabled=""></g:submitButton><g:textField id="dateVisit" value="${new Date()}" name="dateVisit" style="display: none"></g:textField>
                        </div>
                        <div class="12u$">
                            <g:textField id="qrCode" class="form-control" name="qrCode" style="display: none"></g:textField>
                        </div>
                        <div class="12u$">
                            <select id="standardUser" name="user.id" required="" class="many-to-one" style="display: none">
                                <option value="${session.user?.id}" hidden="">${session.user?.name}</option>
                            </select>
                        </div>
                        <div class="12u$">
                            <g:textField id="dateVisit" value="${new Date()}" name="dateVisit" style="display: none"></g:textField>
                        </div>
                        <div class="12u$">
                            <g:textField id="dateVisit" value="${new Date()}" name="dateVisit" style="display: none"></g:textField>
                        </div>
                    </div>
                </div>
            </g:uploadForm>
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