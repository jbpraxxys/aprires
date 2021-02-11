<!doctype html>
<html class="no-js" lang="en">
    <head>
        <%-- <% base_tag %> --%>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> | $SiteConfig.Title</title>
        <meta name="description" content="$MetaDescription">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="shortcut icon" href="$ThemeDir/images/favicon.ico" type="image/x-icon" />
        <meta property="og:image" content="{$AbsoluteBaseURL}$ThemeDir/images/logo.jpg">
        <meta property="og:title" content="$Title">
        <meta property="og:description" content="$MetaDescription">
        <meta property="og:url" content="{$AbsoluteBaseURL}">
        <meta property="og:site_name" content="$SiteConfig.Title">
        <meta property="og:type" content="website">
        <% loop HeaderFooter %>
        <meta name="keywords" content="$SeoKeywords"> 
        <link rel="shortcut icon" href="$Favicon.Url" type="image/x-icon" />
        <% if Logo %>
             <meta property="og:image" content="$Logo.Url">    
        <% end_if %>
        <% end_loop %>

        <%-- Ionicons --%>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.css">
        <!-- Slick -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.css">
        <!-- Sweet Alert 2 -->
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.9.0/sweetalert2.min.css">
        <%-- Remodal --%>
        <link rel="stylesheet" href="$ThemeDir/css/remodal.css">
        <link rel="stylesheet" href="$ThemeDir/css/remodal-default-theme.css">
        <!-- Lighbox -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/css/lightbox.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/images/close.png" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/images/loading.gif" />

        <!-- CSS -->
        <%-- <link href="$ThemeDir/assets/vendor.min.css" rel="stylesheet">     --%>

        <link href="$ThemeDir/css/reset.css" rel="stylesheet">
        <link href="$ThemeDir/css/helper.css" rel="stylesheet">
        <link href="$ThemeDir/css/general.css" rel="stylesheet">
        <link href="$ThemeDir/css/styles.css" rel="stylesheet">
        <link href="$ThemeDir/css/mobile.css" rel="stylesheet">
        <%-- <link href="$ThemeDir/assets/app.min.css" rel="stylesheet"> --%>

        <%-- <!--[if lt IE 9]> --%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <%-- <![endif]--> --%>

    </head>
    <body>

        <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <%-- <% include Header %> --%>

        <div id="main">
            <% include Header %>
            $Layout
            <% include Footer %>

        </div>

        <%-- <% include Footer %> --%>

        <!-- !!! -->
        <script type="text/javascript">
        var pageID = '$ClassName',
        baseHref = '$BaseHref',
        themeDir = '$ThemeDir';
        </script>

      
        <!--
        <script type="text/javascript" src="$ThemeDir/assets/vendor.min.js"></script>
        <script type="text/javascript" src="$ThemeDir/assets/app.min.js"></script> -->

         <%-- Google Recaptcha --%>
        <script src="https://www.google.com/recaptcha/api.js" async defer></script>
        <%-- Jquery --%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- Validate -->
        <script src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
        <!--Sweet Alert -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.9.0/sweetalert2.min.js"></script>
        <%-- Slick --%>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
        <%-- Remodal --%>
        <script src="$ThemeDir/js/remodal.min.js"></script>
        <!-- TweenMax -->
        <script type="text/javascript" src="https://cdn.jsdelivr.net/gsap/1.19.1/TweenMax.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenLite.min.js"></script>
        <!-- ScrollMagic -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/ScrollMagic.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/debug.addIndicators.min.js"></script>
        <!-- GSAP -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/ScrollMagic/2.0.5/plugins/animation.gsap.js"></script>
        <%-- Lightbox --%>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.9.0/js/lightbox.js"></script>
        
         <%-- Webpack --%>
         <!--
        <script type="text/javascript" src="$ThemeDir/assets/app.min.js"></script> -->
        
      
        <!-- Script --> 
        <script type="text/javascript" src="$ThemeDir/js/script.js"></script>
        <!--
        <script type="text/javascript" src="$ThemeDir/assets/script.min.js"></script> -->
    </body>
</html>