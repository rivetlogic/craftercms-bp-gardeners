<#import "/templates/system/common/crafter.ftl" as crafter />

<!--Statement section-->
<section id="dialogue" class="dialogue bg-white roomy-80">
  <div class="container">
    <div class="row">
      <div class="main_dialogue text-center">
        <!-- Edit Text -->
        <div class="col-md-12">
          <@crafter.h3 $field="rteText_html">
            ${contentModel.rteText_html}
          </@crafter.h3>
        </div>
      </div>
    </div>
  </div>
</section>
<!--End Statement section-->