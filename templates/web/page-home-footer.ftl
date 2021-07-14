<#import "/templates/system/common/crafter.ftl" as crafter />

<footer id="contact" class="footer bg-black p-top-80">
  <!--<div class="action-lage"></div>-->
  <div class="container">
    <div class="row footer-space">
      <div class="widget_area">
        <div class="col-md-4">
          <@crafter.div $field="contactUs_html" class="widget_item widget_about">
            ${contentModel.contactUs_html!""}
          </@crafter.div><!-- End off widget item -->
        </div><!-- End off col-md-3 -->

        <div class="col-md-4">
          <div class="widget_item widget_service sm-m-top-50">
            <@crafter.h5 $field="relevantLinksTitle_t" class="text-white">
              ${contentModel.relevantLinksTitle_t!""}
            </@crafter.h5>

            <#if contentModel.relevantLinks_o?? && contentModel.relevantLinks_o.item??>
              <@crafter.renderRepeatCollection
                $field="relevantLinks_o"
                $containerAttributes={'class': 'm-top-10'}
                $itemAttributes={'class': 'm-top-20'};
                <#-- Nested content values passed down by the macro: -->
                item, index
              >
                <a href="${item.url_s}">
                  <i class="fa fa-angle-right"></i>
                  ${item.label_t}
                </a>
              </@crafter.renderRepeatCollection>
            </#if>

          </div><!-- End off widget item -->
        </div><!-- End off col-md-3 -->

        <div class="col-md-4">
          <div class="widget_item widget_newsletter sm-m-top-50">

            <div class="widget_brand m-top-40">
              <@crafter.img $field="footerLogo_s" src=(contentModel.footerLogo_s!"") alt="" />
              <p>${footerDescription_t!""}</p>
            </div>
            <ul class="list-inline m-top-30 social-elements">
              <#if contentModel.facebook_s?? && contentModel.facebook_s != "">
                <li><a href="${contentModel.facebook_s}"><i class="fa fa-facebook"></i></a>
                </li></#if>
              <#if contentModel.twitter_s?? && contentModel.twitter_s != "">
                <li><a href="${contentModel.twitter_s}"><i class="fa fa-twitter"></i></a>
                </li></#if>
              <#if contentModel.linkedin_s?? && contentModel.linkedin_s != "">
                <li><a href="${contentModel.linkedin_s}"><i class="fa fa-linkedin"></i></a>
                </li></#if>
              <#if contentModel.google_plus_s?? && contentModel.google_plus_s != "">
                <li><a href="${contentModel.google_plus_s}"><i class="fa fa-google-plus"></i></a>
                </li></#if>
            </ul>

          </div><!-- End off widget item -->
        </div><!-- End off col-md-3 -->
      </div>
    </div>
  </div>
</footer>