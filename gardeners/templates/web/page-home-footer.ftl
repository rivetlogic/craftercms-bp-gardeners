<footer id="contact" class="footer bg-black p-top-80">
    <!--<div class="action-lage"></div>-->
    <div class="container">
        <div class="row">
            <div class="widget_area">
                <div class="col-md-4">
                    <div class="widget_item widget_about">
                        ${contentModel.contactUs!""}
                    </div><!-- End off widget item -->
                </div><!-- End off col-md-3 -->

              <div class="col-md-4">
                <div class="widget_item widget_service sm-m-top-50">
                  <h5 class="text-white">${contentModel.relevantLinksTitle!""}</h5>
                  <ul class="m-top-10">
                  	<#if contentModel.relevantLinks?? && contentModel.relevantLinks.item??>
    					<#list contentModel.relevantLinks.item![] as aLink>
                          <li class="m-top-20"><a href="${aLink.url}"><i class="fa fa-angle-right"></i> ${aLink.label}</a></li>
                        </#list>
                    </#if>
                  </ul>
                  
                </div><!-- End off widget item -->
              </div><!-- End off col-md-3 -->

                <div class="col-md-4">
                    <div class="widget_item widget_newsletter sm-m-top-50">
                        
                        <div class="widget_brand m-top-40">
                            <img src="${contentModel.footerLogo!""}" alt="">
                            <p>${footerDescription!""}</p>
                        </div>
                        <ul class="list-inline m-top-30 social-elements">
                            <#if contentModel.facebook?? && contentModel.facebook != "">
                            	<li><a href="${contentModel.facebook}"><i class="fa fa-facebook"></i></a></li></#if>
                            <#if contentModel.twitter?? && contentModel.twitter != "">
                            	<li><a href="${contentModel.twitter}"><i class="fa fa-twitter"></i></a></li></#if>
                            <#if contentModel.linkedin?? && contentModel.linkedin != "">
                            	<li><a href="${contentModel.linkedin}"><i class="fa fa-linkedin"></i></a></li></#if>
                            <#if contentModel.google_plus?? && contentModel.google_plus != "">
                            	<li><a href="${contentModel.google_plus}"><i class="fa fa-google-plus"></i></a></li></#if>
                        </ul>

                    </div><!-- End off widget item -->
                </div><!-- End off col-md-3 -->
            </div>
        </div>
    </div>
</footer>