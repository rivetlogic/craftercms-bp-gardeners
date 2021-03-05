<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Statement section-->
<section id="dialogue" class="dialogue bg-white roomy-80" <@studio.componentAttr path=contentModel.storeUrl />>
  <div class="container">
    <div class="row">
      <div class="main_dialogue text-center">
        <!-- Edit Text -->
        <div class="col-md-12" <@studio.iceAttr iceGroup="statementText" path=contentModel.storeUrl label="Statement Text"/>>
          <h3>${contentModel.rteText_html}</h3>
        </div>
      </div>
    </div>
  </div>
</section>
<!--End Statement section-->