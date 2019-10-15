<#import "/templates/system/common/cstudio-support.ftl" as studio />

<#assign memberModel =  contentModel />

<div <@studio.componentAttr path=contentModel.storeUrl /> > 
	<#include "/templates/web/team-member-include.ftl" /> 
</div>