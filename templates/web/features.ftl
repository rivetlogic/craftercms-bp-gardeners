<#import "/templates/system/common/crafter.ftl" as crafter />

<!--Featured Section-->
<section id="features" class="features bg-grey">
  <div class="container">
    <div class="row">
      <div class="main_features fix roomy-80 roomy-80-s">

          <#if contentModel.features?? && contentModel.features.item??>
            <@crafter.renderRepeatGroup
              $field="features"
              $containerTag="div"
              $containerAttributes={'class': 'main_features fix roomy-80 roomy-80-s'}
              $itemTag="div"
              $itemAttributes={'class': 'col-md-6'};
              <#-- Nested content values passed down by the macro: -->
              item, index
            >
              <#assign topm = "m-top-40" />
              <#if (index < 2)>
                <#assign topm = "sm-m-top-30" />
              </#if>
              <div class="features_item ${topm}">
                <#if item.image_s?? && item.image_s!="">
                  <div class="f_item_icon clickable">
                    <@crafter.img $field="features.image_s" src=(item.image_s!"") $index=index/>
                  </div>
                <#else>
                  <div class="f_item_icon clickable">
                    <i class="icon ${item.icon_s!""}"></i>
                  </div>
                </#if>
                <div class="f_item_text">
                  <@crafter.h3 $field="features.title_t" $index=index>
                    ${item.title_t!""}
                  </@crafter.h3>
                  <@crafter.p $field="features.description_t" $index=index>
                    ${item.description_t!""}
                  </@crafter.p>
                </div>
              </div>
            </@crafter.renderRepeatGroup>
          </#if>

      </div>
    </div><!-- End off row -->

  </div><!-- End off container -->
</section>
<!-- End off Featured Section-->