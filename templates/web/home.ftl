<#import "/templates/system/common/ice.ftl" as studio />

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->

<html class="no-js" lang="en"> <!--<![endif]-->

<#assign siteTitle =  contentModel.title_t!"" />

<head>
  <meta charset="utf-8">
  <title>${siteTitle}</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" type="image/png" href="/static-assets/images/favicon.ico">

  <!--Google Font link-->
  <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">

  <link rel="stylesheet" href="/static-assets/css/animate.css">
  <link rel="stylesheet" href="/static-assets/css/iconfont.css">
  <link rel="stylesheet" href="/static-assets/css/font-awesome.min.css">
  <link rel="stylesheet" href="/static-assets/css/bootstrap.css">
  <link rel="stylesheet" href="/static-assets/css/magnific-popup.css">
  <link rel="stylesheet" href="/static-assets/css/bootsnav.css">
  <link rel="stylesheet" href="/static-assets/css/blueimp-gallery.min.css">
  <link rel="stylesheet" href="/static-assets/css/slick/slick.css">
  <link rel="stylesheet" href="/static-assets/css/slick/slick-theme.css">

  <!--For Plugins external css-->
  <link rel="stylesheet" href="/static-assets/css/plugins.css" />

  <!--Theme custom css-->
  <link rel="stylesheet" href="/static-assets/css/style.css">
  <!--<link rel="stylesheet" href="/static-assets/css/colors/maron.css">-->

  <!--Theme Responsive css-->
  <link rel="stylesheet" href="/static-assets/css/responsive.css" />

  <!-- Scroll Indicator Bullets-->
  <link rel="stylesheet" href="static-assets/css/jquery.scrollindicatorbullets.css" />

  <script src="/static-assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>

<body data-spy="scroll" data-target="#navbar-menu" data-offset="110">

  <!-- Header -->
  <#include "/templates/web/page-home-header.ftl" />

  <!-- Sections -->
  <div>
    <div class="sections">
      <#list (contentModel.sections_o.item)![] as aSection >
        <#assign sectionItem =  siteItemService.getSiteItem(aSection.key) />
        <div id='${sectionItem["internal-name"]?replace(" ", "_")}'>
            <@renderComponent component=aSection />
        </div>
      </#list>
    </div>
  </div>

  <!-- Footer -->
  <#include "/templates/web/page-home-footer.ftl" />

  <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->
  <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title">title</h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
  </div>

  <!-- JS includes -->

  <script src="/static-assets/js/vendor/jquery-1.11.2.min.js"></script>
  <script src="/static-assets/js/vendor/bootstrap.min.js"></script>

  <script src="/static-assets/js/jquery.magnific-popup.js"></script>

  <script src="/static-assets/js/bootsnav.js"></script>

  <script src="/static-assets/js/plugins.js"></script>
  <script src="/static-assets/js/jquery.blueimp-gallery.min.js"></script>
  <script src="/static-assets/css/slick/slick.min.js"></script>
  <script src="/static-assets/js/main.js"></script>

  <@studio.initPageBuilder/>
</body>
</html>