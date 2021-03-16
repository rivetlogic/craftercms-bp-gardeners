<#import "/templates/system/common/ice.ftl" as studio />

<!--Brand Section-->
<section id="brand" class="brand fix roomy-80">
  <#if contentModel.sectionTitle?? >
    <span class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </span>
  </#if>

  <div class="container">
    <@studio.tag $field="brandsSet" class="row main_brand text-center">

      <#list contentModel.brandsSet.item as item>
        <#assign index = item?index />
        <@studio.tag $field="brandsSet" $index=index class="col-sm-3 col-xs-6">
          <div class="brand_item">
            <#if (item.brandURL?length > 0 ) >
              <a href="${item.brandURL}">
            </#if>
            <img src="${item.brandImage!""}" class="brand_image" alt="" />
            <#if (item.brandURL?length > 0 ) >
              </a>
            </#if>
          </div>
        </@studio.tag>
      </#list>
    </@studio.tag>
  </div>
</section>
<!-- End off Brand section -->