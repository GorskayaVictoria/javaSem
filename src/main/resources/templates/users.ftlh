<#include 'base.ftlh'/>

<#macro content>
 <link rel="stylesheet" href="/css/style.css">
<div>
    <table>
        <tr>
            <th>Имя</th>
            <th>email</th>
        </tr>
        <#list users as user>
        <tr>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td><a href="/user/${user.id}">Посмотреть</a></td>
        </tr>
        </#list>
    </table>

</div>
</#macro>
<@main/>