<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Brand Section-->
<section id="brand" class="brand fix roomy-80" <@studio.componentAttr path=contentModel.storeUrl />>
  <#if contentModel.sectionTitle?? >
    <span class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </span>
  </#if>

  <div class="container">
    <div class="row">
      <div class="main_brand text-center">

        <#list contentModel.brandsSet.item as aBrand>
          <div class="col-sm-3 col-xs-6">
            <div class="brand_item">
              <#if (aBrand.brandURL?length > 0 ) >
                <a href="${aBrand.brandURL}">
              </#if>
                <img src="${aBrand.brandImage!""}" class="brand_image" alt="" />
              <#if (aBrand.brandURL?length > 0 ) >
                </a>
              </#if>
            </div>
          </div>
        </#list>

      </div>
    </div>
  </div>
</section>
<!-- End off Brand section -->