<#import "/templates/system/common/ice.ftl" as studio />

<!--Statement section-->
<@studio.componentRootTag $tag="section" id="dialogue" class="dialogue bg-white roomy-80">
  <div class="container">
    <div class="row">
      <div class="main_dialogue text-center">
        <!-- Edit Text -->
        <div class="col-md-12">
            <@studio.h3 $field="rteText_html">
                ${contentModel.rteText_html}
            </@studio.h3>
        </div>
      </div>
    </div>
  </div>
</@studio.componentRootTag>
<!--End Statement section-->