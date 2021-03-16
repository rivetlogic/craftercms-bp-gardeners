<#import "/templates/system/common/ice.ftl" as studio />

<!--Brand Section-->
<section id="brand" class="brand fix roomy-80">
  <#if contentModel.sectionTitle?? >
    <span class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </span>
  </#if>

  <div class="container">
    <div class="row">
      <div class="main_brand text-center">

        <@studio.renderRepeatCollection
          $field="brandsSet";
          <#-- Nested content values passed down by the macro: -->
          item, index
        >
          <div class="col-sm-3 col-xs-6">
            <div class="brand_item">
              <#if (item.brandURL?length > 0 ) >
                <a href="${item.brandURL}">
              </#if>
                <@studio.img $field="brandsSet.brandImage" src=(item.brandImage!"") alt="" $index=index />
              <#if (item.brandURL?length > 0 ) >
                </a>
              </#if>
            </div>
          </div>
        </@studio.renderRepeatCollection>
      </div>
    </div>
  </div>
</section>
<!-- End off Brand section -->