<#include "../include/imports.ftl">

<#-- @ftlvariable name="document" type="org.example.beans.FaqList" -->
<#if document??>
  <#if document.FAQ??>
    <div class="has-edit-button">
      <@hst.cmseditlink hippobean=document/>
      <h1>${document.title?html}</h1>
      <div>
        <@hst.html hippohtml=document.description/>
      </div>
      <#list document.faqItems as faq>
        <div>
          <h3><a href="<@hst.link hippobean=faq />">${faq.question?html}</a></h3>
          <@hst.html hippohtml=faq.answer/>
        </div>
      </#list>
    </div>
  <#else>
    <div class="alert alert-danger">The selected document should be of type FAQ list.</div>
  </#if>
<#elseif editMode>
  <div>
    <img src="<@hst.link path="/images/essentials/catalog-component-icons/faq.png" />"> Click to edit FAQ
  </div>
</#if>