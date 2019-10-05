<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!--Featured Section-->
<section id="features" class="features bg-grey" <@studio.componentAttr path=contentModel.storeUrl />>

    <div class="container">
    	        
		<!-- Edit Features -->
		<div <@studio.iceAttr iceGroup="featuresGroup" path=contentModel.storeUrl label="Features"/> ></div>
    
        <div class="row">
            <div class="main_features fix roomy-80 roomy-80-s">
                              
	          <#if contentModel.features?? && contentModel.features.item??>
    	        <#list contentModel.features.item as aFeature>
                
        	      <div class="col-md-6">

                  	  <#assign topm = "m-top-40" />
                      <#if (aFeature?index <2)>
                      	<#assign topm = "sm-m-top-30" />
                      </#if>
                      <div class="features_item ${topm}">
                      	<#if aFeature.image_s?? && aFeature.image_s!="">
                       		<div class="f_item_icon clickable">
                        		<img src="${aFeature.image_s}"/>
                             </div>
                        <#else>                        
                          	<div class="f_item_icon clickable">
                              	<i class="icon ${aFeature.icon_s!""}"></i>
                          	</div>
                        </#if>
                          <div class="f_item_text">
                              <h3>${aFeature.title_t!""}</h3>
                              <p>${aFeature.description_t!""}</p>
                          </div>
                      </div>
                  </div>
                  
            	</#list>
	          </#if>                 
                
            </div>
        </div><!-- End off row -->        

    </div><!-- End off container -->
</section>
<!-- End off Featured Section-->