<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!--Call to action section-->
<section id="action" class="action bg-blue roomy-40" <@studio.componentAttr path=contentModel.storeUrl /> >
	<#if contentModel.sectionTitle?? ><span class="scrollIndicatorTitle">${contentModel.sectionTitle}</span></#if>
    <div class="container">
        <div class="row">
            <div class="maine_action">
                <div class="col-md-8">
                    <div class="action_item text-center">
                    	<!-- Edit Text -->
						<div <@studio.iceAttr iceGroup="actionCallText" path=contentModel.storeUrl label="Action Call Text"/> ></div>
                        <h2 class="text-white text-uppercase">${contentModel.actionText_t!""}</h2>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="action_btn text-left sm-text-center" <@studio.iceAttr iceGroup="actionCallButton" path=contentModel.storeUrl label="Action Call Butoon"/>>
                        <a href="${contentModel.buttonURL!""}" class="btn btn-default">${contentModel.buttonLabel!""}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--End Call to action section-->