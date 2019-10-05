<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Portfolio section-->
<section id="product" class="product text-center" <@studio.componentAttr path=contentModel.storeUrl />>
    <div class="container">
        <div class="main_product roomy-80">
            <div class="head_title text-center fix">
            	
                <!-- Edit Title -->
				<div <@studio.iceAttr iceGroup="portfolioTitle" path=contentModel.storeUrl label="Portfolio Title"/> ></div>
                <h2 class="text-uppercase text-black scrollIndicatorTitle">${contentModel.title_t!""}</h2>
                
                <!-- Edit Description -->
				<div <@studio.iceAttr iceGroup="portfolioDescription" path=contentModel.storeUrl label="Portfolio Description"/> ></div>
                
                <h5>${contentModel.description!""}</h5>
            </div>

            <div>
                <!-- Wrapper for slides -->
                <div>
                    <!-- Edit Items -->
                    <div <@studio.iceAttr iceGroup="portfolioItems" path=contentModel.storeUrl label="Portfolio Items"/> ></div>
                    <div class="multiple-items">
                        <#if contentModel.portfolioItems?? && contentModel.portfolioItems.item??>
                            <#list contentModel.portfolioItems.item as aPortfolioItem>
                                <div class="item">
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
                                                                <a href="${aPortfolioItem.image!""}" class="gallery-image" data-gallery>&#43;</a>
                                                            </#if>
                                                        </div>
                                                    </div>
                                                    <div class="port_caption m-top-20">
                                                        <h5>${aPortfolioItem.title_t!""}</h5>
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
                </div>
            </div>
        </div><!-- End off row -->
    </div><!-- End off container -->
</section>
<!-- End off Portfolio section -->