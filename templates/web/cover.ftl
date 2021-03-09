<#import "/templates/system/common/ice.ftl" as studio />

<#assign bgStyle="" />
<#if contentModel.backgroundImage_s?? && !contentModel.backgroundVideo_s??>
  <#assign bgStyle="style='background-image: url(${contentModel.backgroundImage_s});'" />
</#if>

<#assign bgVideoClass="" />
<#assign bgVideoPoster="" />
<#if contentModel.backgroundVideo_s?? && (contentModel.backgroundVideo_s?length>0)>
  <#assign bgVideoClass="fullscreen-bg" />
  <#assign bgVideoPoster="poster='${contentModel.backgroundImage_s}'" />
</#if>

<!--Cover Section-->
<@studio.componentRootTag $tag="section" id="home" class="home bg-black fix ${bgVideoClass}">
  <#if contentModel.sectionTitle?? >
    <@studio.span $field="sectionTitle" class="scrollIndicatorTitle">
      ${contentModel.sectionTitle}
    </@studio.span>
  </#if>

  <#if contentModel.backgroundVideo_s?? && (contentModel.backgroundVideo_s?length>0) >

    <video
      loop muted autoplay id="cover_video_spbb" ${bgVideoPoster} preload="metadata"  height="925" playsinline
    >
      <source src="${contentModel.backgroundVideo_s}" type="video/mp4">
    </video>

  </#if>

  <div class="overlay"></div>
  <!-- Edit Video -->

  <div class="container">
    <div class="row">
      <div class="main_home">
        <div class="col-md-12">
          <div class="hello_slid">
            <div class="slid_item xs-text-center">
              <#if contentModel.frontImage_s??>
                <div class="col-sm-4">
                  <@studio.img $field="frontImage_s" src=(contentModel.frontImage_s!"") alt=""/>
                </div>
              </#if>
              <div class="col-sm-8">
                <@studio.tag $field="introductoryText_html" class="home_text xs-m-top-30">
                  ${contentModel.introductoryText_html!""}
                </@studio.tag>

                <@studio.renderRepeatCollection
                  $field="coverButtons_o"
                  $containerTag="div"
                  $containerAttributes={'class': 'home_btns m-top-40'}
                  $itemTag="span";
                  <#-- Nested content values passed down by the macro: -->
                  item, index
                >
                  <a href="${item.buttonURL_s!"#"}" class="btn ${item.buttonType_s!""} m-top-20">
                    <@studio.span $field="coverButtons_o.label_t" $index=index>
                      ${item.label_t!""}
                    </@studio.span>
                  </a>
                </@studio.renderRepeatCollection>
              </div>
            </div><!-- End off slid item -->
          </div>
        </div>
      </div>
    </div><!--End off row-->
  </div><!--End off container -->
</@studio.componentRootTag>
<!--End off Cover Section-->