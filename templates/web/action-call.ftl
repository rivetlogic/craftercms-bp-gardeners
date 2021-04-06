<#import "/templates/system/common/ice.ftl" as studio />

<!--Call to action section-->
<section id="action" class="action bg-blue roomy-40">
  <#if contentModel.sectionTitle?? >
    <@studio.span $field="sectionTitle" class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </@studio.span>
  </#if>
  <div class="container">
    <div class="row">
      <div class="maine_action">
        <div class="col-md-8">
          <div class="action_item text-center">
            <!-- Edit Text -->
            <@studio.h2 $field="actionText_t" class="text-white text-uppercase">
              ${contentModel.actionText_t!""}
            </@studio.h2>
          </div>
        </div>
        <div class="col-md-4">
          <div class="action_btn text-left sm-text-center">
            <a href="${contentModel.buttonURL_s!""}" class="btn btn-default">
              <@studio.span $field="buttonLabel_t">
                ${contentModel.buttonLabel_t!""}
              </@studio.span>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!--End Call to action section-->