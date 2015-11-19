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
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="major special">
                <h3>Acerca tu dispositivo al codigo QR del establecimiento</h3>
                <h1><asset:image src="logotipo_color.png"/></h1>
                <div>
                    <video id="sourcevid">
                        <p>This application requires an HTML5 <code>&lt;video&gt;</code> capable browser…</p>
                    </video>
                </div>
                <div id="out"></div>
                <g:uploadForm controller="visit" action="save" method="post" accept-charset="UTF-8" role="form" class="form-signup">

                    <div class="row" align="center">
                        <g:if test="${!hasErrors(field: 'QRCode','error')}">
                            <div class="col-xs-12 col-sm-8 col-md-8 col-lg-offset-1" style="text-align: center">
                                <g:textField id="qrCode" class="form-control" name="qrCode" oninput="myfunction()"></g:textField>
                            </div>
                        </g:if>
                    </div>
                    <g:submitButton id="summit" name="summit" type="submit" value="Enviar" class="btn btn-lg btn-success btn-block" tabindex="-1" disabled=""></g:submitButton>
                </g:uploadForm>
                <script>
                    function myfunction(){
                        document.getElementById("summit").disabled = false;
                    }
                </script>
            </div>
        </div>
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