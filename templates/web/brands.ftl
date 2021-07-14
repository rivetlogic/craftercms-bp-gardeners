<#import "/templates/system/common/crafter.ftl" as crafter />

<!--Brand Section-->
<section id="brand" class="brand fix roomy-80">
  <#if contentModel.sectionTitle?? >
    <span class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </span>
  </#if>

  <div class="container">
    <@crafter.div $field="brandsSet" class="row main_brand text-center">
      <#if contentModel.brandsSet?? && contentModel.brandsSet.item??>
        <#list contentModel.brandsSet.item as item>
          <#assign index = item?index />
          <@crafter.div $field="brandsSet" $index=index class="col-sm-3 col-xs-6">
            <div class="brand_item">
              <#if (item.brandURL?length > 0 ) >
                <a href="${item.brandURL}">
              </#if>
              <img src="${item.brandImage!""}" class="brand_image" alt="" />
              <#if (item.brandURL?length > 0 ) >
                </a>
              </#if>
            </div>
          </@crafter.div>
        </#list>
      </#if>
    </@crafter.div>
  </div>
</section>
<!-- End off Brand section -->