<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="team_item team_skill">
        <div class="team_author">
          <@studio.h4 $model=memberModel $field="fullName_t">
            ${memberModel.fullName_t}
          </@crafter.h4>
          <@studio.p $model=memberModel $field="jobTitle_t">
            ${memberModel.jobTitle_t}
          </@crafter.p>
        </div>

        <#if memberModel.skills_o?? && memberModel.skills_o.item??>
          <div class="team_skill_title fix m-top-40 m-bottom-40 skill-fix">
            <@studio.h4 $model=memberModel $field="fullName_t">
              ${memberModel.skillsTitle_t}
            </@crafter.h4>
          </div>
          <div class="skill_bar sm-m-top-50 m-top-20">
            <#list memberModel.skills_o.item as anSkill>
              <#assign topmargin = "50" />
              <#if anSkill?is_first >
                  <#assign topmargin = "20" />
              </#if>
              <div class="teamskillbar clearfix m-top-${topmargin} " data-percent="${anSkill.skillLevel_s}">
                <h6 class="text-uppercase">${anSkill.skillName_t}</h6>
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
          <@studio.img $model=memberModel $field="picture_s" src=(memberModel.picture_s) alt="" />
        </div>
      </div>
    </div><!-- End off col-sm-4 -->

    <div class="col-sm-4">
      <div class="team_item team_content xs-m-top-30">
        <#if memberModel.famousQuote_t != "">
          <@studio.h4 $model=memberModel $field="famousQuote_t">
            ${memberModel.famousQuote_t}
          </@crafter.h4>
          <@studio.h5 $model=memberModel $field="famousQuoteAuthor_t">
            ${memberModel.famousQuoteAuthor_t}
          </@crafter.h5>
          <div class="divider"></div>
        </#if>

        <#if memberModel.socialMediaTitle_t != "">
          <div class="team_socail">
            <@studio.h5 $model=memberModel $field="socialMediaTitle_t">
              ${memberModel.socialMediaTitle_t}
            </@crafter.h5>
            <ul class="list-inline m-top-20">
              <#if  memberModel.facebook_s?? && memberModel.facebook_s != "">
                <li><a href="${memberModel.facebook_s}"><i class="fa fa-facebook"></i></a>
                </li>
              </#if>
              <#if  memberModel.twitter_s?? && memberModel.twitter_s != "">
                <li><a href="${memberModel.twitter_s}"><i class="fa fa-twitter"></i></a>
                </li>
              </#if>
              <#if memberModel.linkedin_s?? &&  memberModel.linkedin_s != "">
                <li><a href="${memberModel.linkedin_s}"><i class="fa fa-linkedin"></i></a>
                </li>
              </#if>
              <#if memberModel.google_plus_s?? && memberModel.google_plus_s != "">
                <li><a href="${memberModel.google_plus_s}"><i class="fa fa-google-plus"></i></a>
                </li>
              </#if>
              <#if memberModel.behance?? && memberModel.behance != "">
                <li><a href="${memberModel.behance}"><i class="fa fa-behance"></i></a></li>
              </#if>
              <#if memberModel.dribbble?? && memberModel.dribbble != "">
                <li><a href="${memberModel.dribbble}"><i class="fa fa-dribbble"></i></a>
                </li>
              </#if>
            </ul>
          </div>
        </#if>
      </div>
    </div><!-- End off col-sm-4 -->

  </div><!-- End off row -->
</div>