<#include 'base.ftlh'/>

<#macro content>
<link rel="stylesheet" href="/css/styleProfile.css" type="text/css">




<section class="l-page">

    <div class = "efg" style="background-color: #ffffff;" >

<div class="information">
			<span class="avatar">
				<img src="/img.jpg" alt="${user.name}" width="200" height="200">
			</span>
        <span class="info">
				<td>${user.email}</td>
			</span>

    <span class="settings_button">
				<table align="center">
                            <tr>
                                <td></td>
                            </tr>
                </table>

                        <div class = "button2">
                            <a href="/logout" class="btn btn-secondary"><@spring.message 'otherProfile.page.logout'/></a>
                        </div>

	</span>
</div>

</section>





</#macro>
<@main/>