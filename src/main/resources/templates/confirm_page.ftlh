<#include 'base.ftlh'/>

<#macro content>

<#if isConfirmed == true>
    <h1><@spring.message 'confirm_page.page.submit'/></h1>
<#else>
    <h1><@spring.message 'confirm_page.page.nosubmit'/>/h1>
</#if>

</#macro>
<@main/>