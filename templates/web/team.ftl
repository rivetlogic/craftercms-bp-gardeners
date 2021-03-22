<#import "/templates/system/common/ice.ftl" as studio />

<!--Team section-->
<section id="team" class="team bg-grey fix">
  <div class="container">
    <div class="main_team roomy-80">
      <div class="head_title text-center fix">
        <!-- Edit Title -->
        <@studio.h2 $field="title_t" class="text-uppercase scrollIndicatorTitle">
          ${contentModel.title_t}
        </@studio.h2>
        <!-- Edit Description -->
        <@studio.h5 $field="description_t">
          ${contentModel.description_t}
        </@studio.h5>
      </div>

      <div id="team-slid" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <#if contentModel.teamMembers_o?? && contentModel.teamMembers_o.item??>
            <#list contentModel.teamMembers_o.item as aTeamMember>
              <#assign itemActive = "" />
              <#if aTeamMember?is_first>
                  <#assign itemActive = "active" />
              </#if>
              <li data-target="#team-slid" data-slide-to="${aTeamMember?index}" class="${itemActive!""}"></li>
            </#list>
          </#if>
        </ol>

        <!-- Wrapper for slides -->

        <@studio.tag $field="teamMembers_o" class="carousel-inner" role="listbox">
          <#if contentModel.teamMembers_o?? && contentModel.teamMembers_o.item??>
            <#list contentModel.teamMembers_o.item as item>
              <#assign i = item?index>
              <#assign active = "" />
              <#if i == 0>
                <#assign active = "active" />
              </#if>

              <#assign memberItem = siteItemService.getSiteItem(item.key) />
              <#if memberItem??>
                <#assign memberModel = siteItemService.getSiteItem(memberItem.storeUrl) />

                <#if memberModel??>
                  <div class="item ${active!""}">
                    <#include "/templates/web/team-member-include.ftl" />
                  </div>
                </#if>
              </#if>
            </#list>
          </#if>
        </@studio.tag>

      </div>
    </div><!-- End off main_team -->
  </div><!-- End off container -->
</section>
<!-- End off Team section -->