<!DOCTYPE html>
<html lang="{function.localeToHTML, userLang, defaultLang}" <!-- IF languageDirection -->data-dir="{languageDirection}" style="direction: {languageDirection};" <!-- ENDIF languageDirection --> >
<head>
	<title>{browserTitle}</title>
	<!-- BEGIN metaTags -->{function.buildMetaTag}<!-- END metaTags -->
	<link rel="stylesheet" type="text/css" href="{relative_path}/assets/stylesheet.css?{config.cache-buster}" />
	<!-- IF bootswatchCSS --><link id="bootswatchCSS" href="{bootswatchCSS}" rel="stylesheet" media="screen"><!-- ENDIF bootswatchCSS -->
	<!-- BEGIN linkTags -->{function.buildLinkTag}<!-- END linkTags -->

	<script>
		var RELATIVE_PATH = "{relative_path}";
		var config = JSON.parse('{{configJSON}}');
		var app = {
			template: "{template.name}",
			user: JSON.parse('{{userJSON}}')
		};
	</script>

	<!-- IF useCustomHTML -->
	{{customHTML}}
	<!-- END -->
	<!-- IF useCustomCSS -->
	<style>{{customCSS}}</style>
	<!-- END -->
</head>

<body class="{bodyClass} skin-{config.bootswatchSkin}">
	<div class="new-navbar-custom largeNavbar">
        <div class="container">
            <div class="brand">
                <a href="./#">
                    <img id="navSeal" src="/images/Seal@2x.png" />
                    <span>USA Service Dog Registry</span><br>
                </a>
            </div>
        </div>
    </div>

	<main id="panel" class="slideout-panel">
				<nav class="navbar navbar-default navbar-fixed-top header" id="header-menu" component="navbar">
					<div class="container">
						<!-- IMPORT partials/menu.tpl -->
					</div>
				</nav>

		<div class="container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->

