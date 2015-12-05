<%--
  Created by IntelliJ IDEA.
  User: japrietov
  Date: 1/12/15
  Time: 08:45 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html class=" mz-js mz-no-flexbox mz-canvas mz-canvastext mz-no-webgl mz-no-touch mz-geolocation mz-postmessage mz-websqldatabase mz-indexeddb mz-hashchange mz-history mz-draganddrop mz-websockets mz-rgba mz-hsla mz-multiplebgs mz-backgroundsize mz-borderimage mz-borderradius mz-boxshadow mz-textshadow mz-opacity mz-cssanimations mz-csscolumns mz-cssgradients mz-cssreflections mz-csstransforms mz-csstransforms3d mz-csstransitions mz-fontface mz-generatedcontent mz-video mz-audio mz-localstorage mz-sessionstorage mz-webworkers mz-applicationcache mz-svg mz-inlinesvg mz-smil mz-svgclippaths mz-no-bgrepeatround mz-no-bgrepeatspace mz-getusermedia mz-no-pagedcontent mz-fullscreen mz-pagevisibility"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <title>Promos x Puntos - Historial de recompensas redimidas</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=480, user-scalable=no">
    <asset:stylesheet src="template.css"/>
</head>
<body>
<!-- Header -->
<header id="header">
    <h1><a href="">Promos x Puntos</a></h1>
    <a>${session.customer.nickname}</a>
</header>

<section id="subscribe" class="wrapper style4 special">
    <div class="inner">
        <header class="major narrow">
            <h2>Busca el usuario</h2>
        </header>
        <g:uploadForm controller="customer" action="searchUserReward" method="post" accept-charset="UTF-8" role="form" class="form-signup">
            <div class="6u$ 12u$(xsmall)">
                <g:textField id="nombre" name="nombre" required="" placeholder="Nombre del cliente."></g:textField>
            </div>
            <ul class="actions">
                <g:submitButton name="submit" type="submit" value="Buscar" class="special" tabindex="-1"></g:submitButton>
            </ul>
        </g:uploadForm>
    </div>
</section>

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
</body>
</html>