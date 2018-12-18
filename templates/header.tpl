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
            <a href="/registration">
                <img id="navSeal" src="/images/Seal@2x.png" />
                <span>USA Service Dog Registry</span><br>
            </a>
        </div>
        <div class="header-topright">
            <ul class="mainmenu">
                <li>
                    <div class="button-register"><a href="/registration">Register</a></div>
                </li>
            </ul>
        </div>
    </div>
    <div class="header-bottom-menu">
        <div class="container">
                <div class="col-xs-2 text-left menu-item">
                    <div>
                        <a href="/shop">Shop</a>
                    </div>
                </div>
                <div class="col-xs-2 text-left menu-item">
                    <div>
                        <a href="/service-dog-registration-benefits">More Info</a>
                    </div>
                </div>
                <div class="col-xs-2 text-left menu-item">
                    <div>
                        <a href="/registration-faq">FAQ</a>
                    </div>
                </div>
                <div class="col-xs-2 text-left menu-item">
                    <div>
                        <a href="/lookup">Lookup</a>
                    </div>
                </div>
                <div class="col-xs-2 text-left menu-item">
                    <div>
                        <a href="/contact">Contact</a>
                    </div>
                </div>
                <div class="col-xs-4 text-right menu-item">
                    <div>
                        <a href="/cart">
                            <img src="/images/ShoppingCart.png" width="35" style="margin-right:10px;">Cart <% if (cartSize > 0) { %> (<%= cartSize %>) <% } %>
                        </a>
                    </div>
                </div>
        </div>
    </div>
</div>

	<main id="panel" class="slideout-panel">
		<div class="container" id="content">
		<!-- IMPORT partials/noscript/warning.tpl -->
