<#include 'base.ftlh'/>

<#macro content>

    <link rel="stylesheet" href="/css/product_page_style.css">

<div class="content">
    <div class="product">
        <img src="/img/${transport.filePath}" class="card-img1" alt="${transport.name}" >
        <h5 class="card-title">${transport.name}</h5>
        <small class="card-title">${transport.info}</small>
        <small class="card-title">${transport.city}</small>
    </div>
    <div class="buy-button">
        <a href="/sell?idtrans=${transport.id}" class="btn btn-secondary buy-button">
            <div class = "whiteRent"><@spring.message 'transport_page.page.rent'/></div></a>
    </div>
    <#--<div class="reviews">-->
        <#--<form method="post">-->
            <#--<div>-->
                <#--<input type="text" name="text" id="text" placeholder="Send review">-->
            <#--</div>-->
            <#--<div>-->
                <#--<button type="submit" class="btn btn-secondary">Send review</button>-->
            <#--</div>-->
        <#--</form>-->

				<#--<#if magazin?has_content>-->
                <#--<div class="all_reviews">-->
                    <#--<h2>Трапнспорт в наличии: </h2>-->

					<#--<#list magazin as mag>-->

                        <#--<div class="review">-->
                            <#--<a href="/magazin?idmag=${mag.idmag}"><h5>${mag.namemag} </h5></a>-->
                            <#--<text>${mag.loc}</text>-->
                        <#--</div>-->


                    <#--</#list>-->

                <#--</div>-->

                <#--</#if>-->
				<#--<#if magazin?has_content>-->
				<#--<div class="all_reviews">-->
                    <#--<h2> ОТЗЫВЫ: </h2>-->

					<#--<#list messages as mes>-->

					<#--<div class="review">-->
                        <#--<a href="/profile?id=${mes.iduser}"><h5>${mes.nickname} </h5></a>-->
                        <#--<text>${mes.text}</text>-->
                    <#--</div>-->


                    <#--</#list>-->

                <#--</div>-->
                <#--</#if>-->
    <#--</div>-->
</#macro>
    <@main/>