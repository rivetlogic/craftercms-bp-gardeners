<#import "/templates/web/navigation2/navigation.ftl" as nav/>

<!-- Preloader -->
<div id="loading">
<div id="loading-center">
    <div id="loading-center-absolute">
        <div class="object" id="object_one"></div>
        <div class="object" id="object_two"></div>
        <div class="object" id="object_three"></div>
        <div class="object" id="object_four"></div>
    </div>
</div>
</div><!--End off Preloader -->


<div class="culmn">

<!--Home page style-->
<nav class="navbar navbar-default bootsnav navbar-fixed no-background white">
    
    <div class="container"> 

        <!-- Start Logo -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="#brand">
                <img src="${contentModel.headerLogo!""}" class="logo" alt="">
            </a>

        </div>
        <!-- End Logo -->

        <!-- Start Header Navigation -->  
      	<div class="collapse navbar-collapse" id="navbar-menu">
          <#if contentModel.sections_o?? && contentModel.sections_o.item??>
              <ul class="nav navbar-nav navbar-right">
              <#list contentModel.sections_o.item![] as aSection>
                  <#assign sectionItem =  siteItemService.getSiteItem(aSection.key) />                 		
                  <#if sectionItem?? && sectionItem.includeNavBar_b?? && sectionItem.includeNavBar_b>
                      <li><a href='#${sectionItem["internal-name"]?replace(" ", "_")}'>${sectionItem.navigationLabel_t}</a></li>
                  </#if>
              </#list>
              </ul>
          </#if>
      	</div><!-- End Header Navigation -->
        
    </div>
    
</nav>