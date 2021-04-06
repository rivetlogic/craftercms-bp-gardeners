<#import "/templates/system/common/ice.ftl" as studio />

<#assign bgStyle="" />
<#if contentModel.actionCardBackgroundImage_s??>
  <#assign bgStyle="style='background-image: url(${contentModel.actionCardBackgroundImage_s});'" />
</#if>

<!--Business Section-->
<section id="business" class="business bg-blue roomy-70">

  <#if contentModel.sectionTitle?? >
    <span class="scrollIndicatorTitle">${contentModel.sectionTitle}</span>
  </#if>

  <div class="business_overlay"></div>
  <div class="container">
    <div class="row">
      <div class="main_business">
        <div class="col-md-5">
          <div class="business_item sm-m-top-50">
            <@studio.tag $field="actionCardText_html">
              ${contentModel.actionCardText_html!""}
            </@studio.tag>

            <div class="business_btn m-top-50">
              <#if contentModel.actionCardButtons_o?? && contentModel.actionCardButtons_o.item??>
                <@studio.renderRepeatCollection
                  $field="actionCardButtons_o";
                  <#-- Nested content values passed down by the macro: -->
                  item, index
                >
                  <a href="${item.buttonURL_s!"#"}" class="btn ${item.buttonType_s!""} m-top-20">
                    <@studio.span $field="actionCardButtons_o.label_t" $index=index>
                      ${item.label_t!""}
                    </@studio.span>
                  </a>
                </@studio.renderRepeatCollection>
              </#if>
            </div>
          </div>
        </div>

        <div class="col-md-7">
          <div class="business_item">
            <div class="business_img business_img_card">
              <@studio.img $field="actionCardForegroundImage_s" src=(contentModel.actionCardForegroundImage_s!"") alt="" />
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
</section>
<!-- End off Business section -->