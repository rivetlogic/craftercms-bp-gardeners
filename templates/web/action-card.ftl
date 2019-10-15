<#import "/templates/system/common/cstudio-support.ftl" as studio />

<#assign bgStyle="" />
<#if contentModel.actionCardBackgroundImage_s??>
	<#assign bgStyle="style='background-image: url(${contentModel.actionCardBackgroundImage_s});'" />
</#if>

<!--Business Section-->
<section id="business" class="business bg-blue roomy-70" <@studio.componentAttr path=contentModel.storeUrl />  ${bgStyle}>

<!-- Edit Image -->
<div <@studio.iceAttr iceGroup="actionCardBackgroundImage" path=contentModel.storeUrl label="Action Card Background Image"/> ></div>

	<#if contentModel.sectionTitle?? ><span class="scrollIndicatorTitle">${contentModel.sectionTitle}</span></#if>
    
    <div class="business_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="main_business">
                <div class="col-md-5">
                    <div class="business_item sm-m-top-50">
                    
                    	<div <@studio.iceAttr iceGroup="actionCardText" path=contentModel.storeUrl label="Action Card Text"/> >
	                    	${contentModel.actionCardText_html!""}
                        </div>
                  
                        <div class="business_btn m-top-50" <@studio.iceAttr iceGroup="actionCardButtons" path=contentModel.storeUrl label="Action Card Buttons"/>>
                            <#if contentModel.actionCardButtons_o?? && contentModel.actionCardButtons_o.item??>
                              	<#list contentModel.actionCardButtons_o.item as aButton>
                                	
                                  <a href="${aButton.buttonURL_s!"#"}" class="btn ${aButton.buttonType_s!""} m-top-20">${aButton.label_t!""}</a>
                              	</#list>
              				</#if>
                        </div>

                    </div>
                </div>

                <div class="col-md-7">
                    <div class="business_item">
                        <div class="business_img business_img_card" <@studio.iceAttr iceGroup="actionCardForegroundImage" path=contentModel.storeUrl  label="Action Card Image"/>>
                            <img src="${contentModel.actionCardForegroundImage_s!""}" alt="" />
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- End off Business section -->