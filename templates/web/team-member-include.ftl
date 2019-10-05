<#import "/templates/system/common/cstudio-support.ftl" as studio />

<#if memberModel??>
 
  <div class="item ${active!""}">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="team_item team_skill">
                        <div class="team_author">

                            <h4>${memberModel.fullName_t}</h4>
                            <p>${memberModel.jobTitle_t}</p>
                        </div>
  
                        <#if memberModel.skills_o?? && memberModel.skills_o.item??>
                        
                          <div class="team_skill_title fix m-top-40 m-bottom-40 skill-fix">
                              <h5>${memberModel.skills_oTitle_t}</h5>
                          </div>
    
                          <div class="skill_bar sm-m-top-50 m-top-20">
                                                    
                            <#list memberModel.skills_o.item as anSkill>
                              <#assign topmargin = "50" />
                              <#if anSkill?is_first >
                                <#assign topmargin = "20" />
                              </#if>
                              <div class="teamskillbar clearfix m-top-${topmargin} " data-percent="${anSkill.skillLevel}">
                                <h6 class="text-uppercase">${anSkill.skillName}</h6>
                                <div class="teamskillbar-bar"></div>
                              </div> <!-- End Skill Bar -->
                            </#list>                                                
                                                 
                          </div><!-- End off skill bar -->
                        
                       </#if>
    
                    </div>
                </div><!-- End off col-sm-4 -->
    
                <div class="col-sm-4">
                    <div class="team_item xs-m-top-30">
                        <div class="port_img">
                            <img src="${memberModel.picture_s}" alt="" />
                        </div>
                    </div>
                </div><!-- End off col-sm-4 -->
    
                <div class="col-sm-4">
                    <div class="team_item team_content xs-m-top-30">
                    
                      <#if memberModel.famousQuote != "">
                          <h4 class="quote-fix">${memberModel.famousQuote}</h4>
                          <h5 class="m-top-40">- ${memberModel.famousQuoteAuthor}</h5>
    
                          <div class="divider"></div>
                      </#if>
    
                      <#if memberModel.socialMediaTitle != "">
                          <div class="team_socail">
                              <h5>${memberModel.socialMediaTitle!""}</h5>
                              <ul class="list-inline m-top-20">
                                  <#if  memberModel.facebook?? && memberModel.facebook != "">
                                  	<li><a href="${memberModel.facebook}"><i class="fa fa-facebook"></i></a></li>
                                  </#if>
                                  <#if  memberModel.twitter?? && memberModel.twitter != "">
                                  	<li><a href="${memberModel.twitter}"><i class="fa fa-twitter"></i></a></li>
                                  </#if>
                                  <#if memberModel.linkedin?? &&  memberModel.linkedin != "">
                                  	<li><a href="${memberModel.linkedin}"><i class="fa fa-linkedin"></i></a></li>
                                  </#if>
                                  <#if memberModel.google_plus?? && memberModel.google_plus != "">
                                  	<li><a href="${memberModel.google_plus}"><i class="fa fa-google-plus"></i></a></li>
                                  </#if>
                                  <#if memberModel.behance?? && memberModel.behance != "">
                                  	<li><a href="${memberModel.behance}"><i class="fa fa-behance"></i></a></li>
                                  </#if>
                                  <#if memberModel.dribbble?? && memberModel.dribbble != "">
                                  	<li><a href="${memberModel.dribbble}"><i class="fa fa-dribbble"></i></a></li>
                                  </#if>
                              </ul>
                          </div>
                      </#if>
    
                    </div>
                </div><!-- End off col-sm-4 -->
    
            </div><!-- End off row -->
        </div>
	</div><!-- End off item --> 

</#if>      