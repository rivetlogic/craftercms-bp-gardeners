<#import "/templates/system/common/cstudio-support.ftl" as studio/>

<!--Statement section-->
<section id="dialogue" class="dialogue bg-white roomy-80" <@studio.componentAttr path=contentModel.storeUrl />>    
    <div class="container">
        <div class="row">
            <div class="main_dialogue text-center">
            	<!-- Edit Text -->
				<div <@studio.iceAttr iceGroup="statementText" path=contentModel.storeUrl label="Statement Text"/> ></div>
                <div class="col-md-12">
                    <h3>${contentModel.text}</h3>
                </div>
            </div>
        </div>
    </div>
</section>
<!--End Statement section-->