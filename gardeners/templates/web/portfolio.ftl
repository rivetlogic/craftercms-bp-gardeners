<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Portfolio section-->
<section id="product" class="product text-center" <@studio.componentAttr path=contentModel.storeUrl />>
    <div class="container">
        <div class="main_product roomy-80">
            <div class="head_title text-center fix">
            	
                <!-- Edit Title -->
				<div <@studio.iceAttr iceGroup="portfolioTitle" path=contentModel.storeUrl label="Portfolio Title"/> ></div>
                <h2 class="text-uppercase text-black scrollIndicatorTitle">${contentModel.title!""}</h2>
                
                <!-- Edit Description -->
				<div <@studio.iceAttr iceGroup="portfolioDescription" path=contentModel.storeUrl label="Portfolio Description"/> ></div>
                
                <h5>${contentModel.description!""}</h5>
            </div>

            <div id="carousel-example-generic-small" class="carousel slide carousel-small" data-ride="carousel">
                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <!-- Edit Items -->
                    <div <@studio.iceAttr iceGroup="portfolioItems" path=contentModel.storeUrl label="Portfolio Items"/> ></div>
                    <#if contentModel.portfolioItems?? && contentModel.portfolioItems.item??>
                        <#list contentModel.portfolioItems.item as aPortfolioItem>
                            <#assign active = "" />
                            <#if (aPortfolioItem?index == 0)>
                                <#assign active = "active" />
                            </#if>
                            <div class="item ${active}">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <div class="port_item xs-m-top-30">
                                                <div class="port_img">
                                                    <img src="${aPortfolioItem.image!""}" alt="" />
                                                    <div class="port_overlay text-center">
                                                        <#if aPortfolioItem.link?? &&  aPortfolioItem.link != "">
                                                            <a href="${aPortfolioItem.link!""}" >&uarr;</a>
                                                        <#else>
                                                            <a href="${aPortfolioItem.image!""}" class="popup-img">&#43;</a>
                                                        </#if>
                                                    </div>
                                                </div>
                                                <div class="port_caption m-top-20">
                                                    <h5>${aPortfolioItem.title!""}</h5>
                                                    <h6>${aPortfolioItem.shortDescription!""}</h6>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </#list>
                    </#if>
                </div>
                <!-- Controls -->
                <#if (contentModel.portfolioItems?? && contentModel.portfolioItems.item?? && contentModel.portfolioItems.item?size > 1)>
                    <a class="left carousel-control" href="#carousel-example-generic-small" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>

                    <a class="right carousel-control" href="#carousel-example-generic-small" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </#if>
            </div>

            <div id="carousel-example-generic" class="carousel slide carousel-big" data-ride="carousel">

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                
                	<!-- Edit Items -->
					<div <@studio.iceAttr iceGroup="portfolioItems" path=contentModel.storeUrl label="Portfolio Items"/> ></div>
                    
                    <#if contentModel.portfolioItems?? && contentModel.portfolioItems.item??>
                    
                        <#list contentModel.portfolioItems.item as aPortfolioItem>
                        
                            <#assign active = "" />
                            <#if (aPortfolioItem?index < 3)>
                                <#assign active = "active" />
                            </#if>                           
                    
                            <#assign indexModulusThree = ((aPortfolioItem?index)%3) />
                            <#assign createArray = (indexModulusThree == 0) />
                            <#assign displayArray = (!(aPortfolioItem?has_next) || indexModulusThree ==2) />
                            
                            <#if createArray >
                                <#assign itemsArray = [] />
                            </#if>
                    
                            <#assign itemsArray = itemsArray + [aPortfolioItem] />
                    
                            <#if displayArray >
                                <div class="item ${active}">
                                    <div class="container">
                                        <div class="row">
                                            <#list itemsArray as portfolioItem>
                                            
                                                <div class="col-sm-4">
                                                    <div class="port_item xs-m-top-30">
                                                        <div class="port_img">
                                                            <img src="${portfolioItem.image}" alt="" />
                                                            <div class="port_overlay text-center">
                                                                <#if portfolioItem.link?? &&  portfolioItem.link != "">
                                                                    <a href="${portfolioItem.link}" >&uarr;</a>
                                                                <#else>
                                                                    <a href="${portfolioItem.image}" class="popup-img">&#43;</a>
                                                                </#if>
                                                            </div>
                                                        </div>
                                                        <div class="port_caption m-top-20">
                                                            <h5>${portfolioItem.title!""}</h5>
                                                            <h6>${portfolioItem.shortDescription!""}</h6>
                                                        </div>
                                                    </div>
                                                </div>

                                            </#list>
                                            
                                        </div> <!-- end of row -->
                                    </div>
                                </div>
                    
                            </#if>
                        </#list>
                    </#if>

                </div>

                <!-- Controls -->
                <#if (contentModel.portfolioItems?? && contentModel.portfolioItems.item?? && contentModel.portfolioItems.item?size > 3)>
                    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>

                    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                </#if>
            </div>
        </div><!-- End off row -->
    </div><!-- End off container -->
</section>
<!-- End off Portfolio section -->