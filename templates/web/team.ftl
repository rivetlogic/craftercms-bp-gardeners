<#import "/templates/system/common/cstudio-support.ftl" as studio />

<!--Team section-->
<section id="team" class="team bg-grey fix" <@studio.componentAttr path=contentModel.storeUrl />>
    <div class="container">
        <div class="main_team roomy-80">
            <div class="head_title text-center fix">
            	<!-- Edit Title -->
				<div <@studio.iceAttr iceGroup="teamTitle" path=contentModel.storeUrl label="Team Title"/> ></div>
                <h2 class="text-uppercase scrollIndicatorTitle">${contentModel.title_t}</h2>
                <!-- Edit Description -->
				<div <@studio.iceAttr iceGroup="teamDescription" path=contentModel.storeUrl label="Team Description"/> ></div>
                <h5>${contentModel.description_t}</h5>
            </div>

            <div id="team-slid" class="carousel slide carousel-fade" data-ride="carousel"  <@studio.iceAttr iceGroup="teamMembers" path=contentModel.storeUrl label="Team Members"/> >
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    
                    <#if contentModel.teamMembers?? && contentModel.teamMembers.item??>
                    <#list contentModel.teamMembers.item as aTeamMember>
                    	<#assign itemActive = "" />
                    	<#if aTeamMember?is_first>
                        	<#assign itemActive = "active" />
                        </#if>
                      	<li data-target="#team-slid" data-slide-to="${aTeamMember?index}" class="${itemActive!""}"></li>
                    </#list>
                  </#if>
                  
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">        	
                        
                    <#if contentModel.teamMembers?? && contentModel.teamMembers.item??>
                      <#list contentModel.teamMembers.item as aTeamMember>
                        
                        <#assign active = "" />
                        <#if aTeamMember?is_first>
                        	<#assign active = "active" />
                        </#if>
                        
                        <#assign memberItem =  siteItemService.getSiteItem(aTeamMember.key) />
                        <#if memberItem??>
                            <#assign memberModel =  siteItemService.getSiteItem(memberItem.storeUrl) />                          
                            <#include "/templates/web/team-member-include.ftl" />                         
                        </#if>
                      </#list>
					</#if>
                                       
				</div>

            </div>
        </div><!-- End off main_team -->
    </div><!-- End off container -->
</section>
<!-- End off Team section -->