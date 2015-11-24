<!DOCTYPE HTML>
<!--
	Retrospect by TEMPLATED
	templated.co @templatedco
	Released for free under the Creative Commons Attribution 3.0 license (templated.co/license)
-->
<html>
<head>
	<title>Promos x Puntos - crear Establecimiento</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<asset:stylesheet src="template.css"/>
</head>
<body class="landing">

<!-- Header -->
<!-- Header -->
<header id="header">
	<h1><a href="index.html">Promos x Puntos</a></h1>
	<a>${session.customer.nickname}</a>
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
			<h2>Recompensas</h2>
		</header>

		<div id="list-reward" class="content scaffold-list" role="main">

			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table style="vertical-align: middle">
				<thead>
				<tr style="vertical-align: middle;">

					<g:sortableColumn property="rewardName" title="${message(code: 'reward.rewardName.label', default: 'Nombre')}" />

					<!--g:sortableColumn property="description" title="${message(code: 'reward.description.label', default: 'Description')}" /-->

					<g:sortableColumn property="picture" title="${message(code: 'reward.picture.label', default: ' ')}" />

					<g:sortableColumn property="point" title="${message(code: 'reward.point.label', default: 'Puntos')}" />

					<!--g:sortableColumn property="creationDateReward" title="${message(code: 'reward.creationDateReward.label', default: 'Creation Date Reward')}" /-->

					<g:sortableColumn property="dueDateReward" title="${message(code: 'reward.dueDateReward.label', default: 'vencimineto ')}" />

				</tr>
				</thead>
				<tbody>
				<g:each in="${rewardInstanceList}" status="i" var="rewardInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td style="vertical-align: middle"><g:link action="show" id="${rewardInstance.id}">${fieldValue(bean: rewardInstance, field: "rewardName")}</g:link></td>

						<!--td>${fieldValue(bean: rewardInstance, field: "description")}</td-->

						<td><g:if test="${fieldValue(bean: rewardInstance, field: "picture").size()==0 }">

						</g:if>
							<g:else>
								<img class="img-responsive img-thumbnail" src="${createLink(controller:'reward', action:'displayPicture', params: [rewardName:fieldValue(bean: rewardInstance, field: "rewardName")])}" width="200px"/>
							</g:else>
						</td>

						<td style="vertical-align: middle">${fieldValue(bean: rewardInstance, field: "point")}</td>

						<!--td><g:formatDate date="${rewardInstance.creationDateReward}" /></td-->

						<td style="vertical-align: middle"><g:formatDate date="${rewardInstance.dueDateReward}" /></td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${rewardInstanceCount ?: 0}" />
			</div>
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