<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Carousel section-->
<#assign bgStyle="" />
<#if contentModel.carouselBackground_s??>
	<#assign bgStyle="style='background-image: url(${contentModel.carouselBackground_s});'" />
</#if>

<section id="test" class="test bg-black roomy-60 fix" ${bgStyle} <@studio.componentAttr path=contentModel.storeUrl />>
    <div class="overlay"></div>
    <div class="container">
        <div class="row">                        
            <div class="main_test fix text-center">

                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="head_title text-center fix">
                        <h2 class="text-uppercase text-white scrollIndicatorTitle">${contentModel.title_t!""}</h2>
                        <h5 class="text-white">${contentModel.description_t!""}</h5>
                    </div>
                </div>

                <div id="testslid" class="carousel slide carousel-fade" data-ride="carousel">

                    <div class="carousel-inner" role="listbox">
                    
                    	<#if contentModel.carouselItems?? && contentModel.carouselItems.item??>
                          <#list contentModel.carouselItems.item as carouselItem>							
                              
                              <#assign active = "" />
                              <#if carouselItem?is_first>
                                  <#assign active = "active" />
                              </#if>
                              
                              <div class="item ${active}">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="test_item fix">
                                        <div class="test_img fix">
                                            <img class="img-circle" src="${carouselItem.picture}" alt="" />
                                        </div>
    
                                        <div class="test_text text-white">
                                            <em>${carouselItem.text}</em>
    
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End off item -->
                          </#list>
						</#if>
                    </div><!-- End off carosel inner -->
                    
                    
                    <#if contentModel.carouselItems?? && (contentModel.carouselItems.item?size > 1) >

                      <!-- Controls -->
                      <a class="left carousel-control" href="#testslid" role="button" data-slide="prev">
                          <i class="fa fa-angle-left" aria-hidden="true"></i>
                          <span class="sr-only">Previous</span>
                      </a>
  
                      <a class="right carousel-control" href="#testslid" role="button" data-slide="next">
                          <i class="fa fa-angle-right" aria-hidden="true"></i>
                          <span class="sr-only">Next</span>
                      </a>
                    </#if>

                </div>

            </div>
        </div><!-- End off row -->
    </div><!-- End off container -->
</section>
<!-- End off Carousel section -->