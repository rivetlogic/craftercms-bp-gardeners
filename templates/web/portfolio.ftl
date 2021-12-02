<#import "/templates/system/common/crafter.ftl" as crafter />

<!--Portfolio section-->
<section id="product" class="product text-center">
  <div class="container">
    <div class="main_product roomy-80">
      <div class="head_title text-center fix">
        <!-- Edit Title -->
        <@crafter.h2 $field="title_t" class="text-uppercase text-black scrollIndicatorTitle">
          ${contentModel.title_t!""}
        </@crafter.h2>

        <!-- Edit Description -->
        <@crafter.h2 $field="description_t">
          ${contentModel.description_t!""}
        </@crafter.h2>
      </div>

      <div>
        <!-- Wrapper for slides -->
        <div>
          <!-- Edit Items -->
          <#if contentModel.portfolioItems?? && contentModel.portfolioItems.item??>
            <@crafter.renderRepeatGroup
              $field="portfolioItems"
              $containerTag="div"
              $containerAttributes={'class':'multiple-items'}
              $itemTag="div"
              $itemAttributes={'class': 'item'};
              <#-- Nested content values passed down by the macro: -->
              item, index
            >
              <div class="container">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="port_item xs-m-top-30">
                      <div class="port_img">
                        <@crafter.img $field="portfolioItems.image_s" src=(item.image_s) alt="" $index=index />
                        <div class="port_overlay text-center">
                          <#if item.link_s?? &&  item.link_s != "">
                            <a href="${item.link_s!""}">&uarr;</a>
                          <#else>
                            <a href="${item.image_s!""}" class="gallery-image" data-gallery>
                              &#43;
                            </a>
                          </#if>
                        </div>
                      </div>
                      <div class="port_caption m-top-20">
                        <@crafter.h5 $field="portfolioItems.title_t" $index=index>
                          ${item.title_t!""}
                        </@crafter.h5>
                        <@crafter.h6 $field="portfolioItems.shortDescription_t" $index=index>
                          ${item.shortDescription_t!""}
                        </@crafter.h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </@crafter.renderRepeatGroup>
          </#if>
        </div>
      </div>
    </div><!-- End off row -->
  </div><!-- End off container -->
<section>
<!-- End off Portfolio section -->