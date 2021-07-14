<#import "/templates/system/common/crafter.ftl" as crafter />

<!--Call to action section-->
<section id="action" class="action bg-blue roomy-40">
  <#if contentModel.sectionTitle?? >
    <@crafter.span $field="sectionTitle" class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </@crafter.span>
  </#if>
  <div class="container">
    <div class="row">
      <div class="maine_action">
        <div class="col-md-8">
          <div class="action_item text-center">
            <!-- Edit Text -->
            <@crafter.h2 $field="actionText_t" class="text-white text-uppercase">
              ${contentModel.actionText_t!""}
            </@crafter.h2>
          </div>
        </div>
        <div class="col-md-4">
          <div class="action_btn text-left sm-text-center">
            <a href="${contentModel.buttonURL_s!""}" class="btn btn-default">
              <@crafter.span $field="buttonLabel_t">
                ${contentModel.buttonLabel_t!""}
              </@crafter.span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--End Call to action section-->