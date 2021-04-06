<#import "/templates/system/common/ice.ftl" as studio />

<!--Portfolio section-->
<section id="product" class="product text-center">
  <div class="container">
    <div class="main_product roomy-80">
      <div class="head_title text-center fix">
        <!-- Edit Title -->
        <@studio.h2 $field="title_t" class="text-uppercase text-black scrollIndicatorTitle">
          ${contentModel.title_t!""}
        </@studio.h2>

        <!-- Edit Description -->
        <@studio.h2 $field="description_t">
          ${contentModel.description_t!""}
        </@studio.h2>
      </div>

      <div>
        <!-- Wrapper for slides -->
        <div>
          <!-- Edit Items -->
          <#if contentModel.portfolioItems?? && contentModel.portfolioItems.item??>
            <@studio.renderRepeatCollection
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
                        <@studio.img $field="portfolioItems.image_s" src=(item.image_s) alt="" $index=index />
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
                        <@studio.h5 $field="portfolioItems.title_t" $index=index>
                          ${item.title_t!""}
                        </@studio.h5>
                        <@studio.h6 $field="portfolioItems.shortDescription_t" $index=index>
                          ${item.shortDescription_t!""}
                        </@studio.h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </@studio.renderRepeatCollection>
          </#if>
        </div>
      </div>
    </div><!-- End off row -->
  </div><!-- End off container -->
<section>
<!-- End off Portfolio section -->