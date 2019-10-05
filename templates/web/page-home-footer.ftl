<footer id="contact" class="footer bg-black p-top-80">
    <!--<div class="action-lage"></div>-->
    <div class="container">
        <div class="row footer-space">
            <div class="widget_area">
                <div class="col-md-4">
                    <div class="widget_item widget_about">
                        ${contentModel.contactUs_html!""}
                    </div><!-- End off widget item -->
                </div><!-- End off col-md-3 -->

              <div class="col-md-4">
                <div class="widget_item widget_service sm-m-top-50">
                  <h5 class="text-white">${contentModel.relevantLinksTitle_t!""}</h5>
                  <ul class="m-top-10">
                  	<#if contentModel.relevantLinks_o?? && contentModel.relevantLinks_o.item??>
    					<#list contentModel.relevantLinks_o.item![] as aLink>
                          <li class="m-top-20"><a href="${aLink.url}"><i class="fa fa-angle-right"></i> ${aLink.label_t}</a></li>
                        </#list>
                    </#if>
                  </ul>
                  
                </div><!-- End off widget item -->
              </div><!-- End off col-md-3 -->

                <div class="col-md-4">
                    <div class="widget_item widget_newsletter sm-m-top-50">
                        
                        <div class="widget_brand m-top-40">
                            <img src="${contentModel.footerLogo_s!""}" alt="">
                            <p>${footerDescription_t!""}</p>
                        </div>
                        <ul class="list-inline m-top-30 social-elements">
                            <#if contentModel.facebook_s?? && contentModel.facebook_s != "">
                            	<li><a href="${contentModel.facebook_s}"><i class="fa fa-facebook"></i></a></li></#if>
                            <#if contentModel.twitter_s?? && contentModel.twitter_s != "">
                            	<li><a href="${contentModel.twitter_s}"><i class="fa fa-twitter"></i></a></li></#if>
                            <#if contentModel.linkedin_s?? && contentModel.linkedin_s != "">
                            	<li><a href="${contentModel.linkedin_s}"><i class="fa fa-linkedin"></i></a></li></#if>
                            <#if contentModel.google_plus_s?? && contentModel.google_plus_s != "">
                            	<li><a href="${contentModel.google_plus_s}"><i class="fa fa-google-plus"></i></a></li></#if>
                        </ul>

                    </div><!-- End off widget item -->
                </div><!-- End off col-md-3 -->
            </div>
        </div>
    </div>
</footer>