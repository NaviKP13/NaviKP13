<%@ tag body-content="empty" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="product" tagdir="/WEB-INF/tags/responsive/product"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="ycommerce" uri="http://hybris.com/tld/ycommercetags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
	/*.listItems {
	  display: block;
	  margin-left: 10px;
	  padding: 2rem;
	}
	
	.listItems li {
	  display: flex;
	  position: relative;
	}
	
	.listItems li:not(:last-child) {
	  margin-bottom: 0.5rem;
	}
	
	.listItems li:before {
	  content: "";
	  position: absolute;
	  top: 1.2em;
	  left: -30px;
	  margin-top: -.9em;
	  background: #f69ec4;
	  height: 12px;
	  width: 12px;
	  border-radius: 50%;
	}*/
	
	.listItems {
		list-style-type: none;
		padding: 0;
		margin: 0;
		border: 1px sold #ccc;
		display: flex;
		flex-wrap: wrap;
	}
	
	.listItems li {
		flex: 0 0 25%;
		padding: 8px;
		border-bottom: 1px solid #eee;
		box-sizing: border-box;
	}
	
	.listItems li:nth-child(even) {
		background-color: #f5f5f5;
	}
.product-details {
	font-family: "Dosis", "Courier New", monospace;
	color: green;
}

table {
	border-collapse: collapse;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

table td {
	padding: 8px 6px;
	vertical-align: top;
}
</style>

<div class="product-details page-title" style="color:grey ; font-family: Times New Roman;
  margin: 0;
  position:relative;
  text-align: center;
  font-size: 10px;
  text-shadow: 80px 80px 1px #fff;
  padding: 1rem;
 ">
 
 	
	<ycommerce:testId code="productDetails_productNamePrice_label_${product.code}">
		<div class="name" style="color:black;font-size:40px">${fn:escapeXml(product.name)}<span class="code" style="color:grey;font-size:20px; padding:1rem;">(${fn:escapeXml(product.code)})</span></div>
	</ycommerce:testId>
</div>
<hr/>
<div class="row" style="padding:2rem">
	<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-0 col-lg-4">
		<product:productImagePanel galleryImages="${galleryImages}" />
		<div style="padding:2rem">
			<product:productReviewSummary product="${product}" showLinks="true"/> 
		</div>
	</div>
	<div class="clearfix hidden-sm hidden-md hidden-lg"></div>
	<div class="col-sm-6 col-lg-8">
		<div class="product-main-info">
			<div class="row">
				<div class="col-lg-6">
					<div class="product-details" style="color: black">
						<product:productPromotionSection product="${product}" />
						<ycommerce:testId
							code="productDetails_productNamePrice_label_${product.code}">
							<product:productPricePanel product="${product}" />
						</ycommerce:testId>
						<div class="description"
							style="color: black; font-weight: bold; font-size: 24px">${ycommerce:sanitizeHTML(product.summary)}</div>
							
						<%--  <h5>Languages:${product.languages}</h5> --%>

						<!--<ul>
							<li style="color:black;font-weight:bold">Author:${product.author}</li>
							<li>ISBN:${product.isbn}</li>
							<li style="color:black;font-weight:bold" >No Of Pages:${product.numberOfPages}</li>
							<li>Publisher:${product.publisher}</li>
						  <li style="color:black;font-weight:bold">Publication Date:${product.publicationDate}</li>
						</ul>-->

						<table>

							<tr>

								<td>Author:</td>

								<td>${product.author}</td>

							</tr>

							<tr>

								<td>ISBN:</td>

								<td>${product.isbn}</td>

							</tr>

							<tr>

								<td>ANo Of Pages:</td>

								<td>${product.numberOfPages}</td>

							</tr>

							<tr>

								<td>Publisher:</td>

								<td>${product.publisher}</td>

							</tr>

							<tr>

								<td>Publication Date:</td>

								<td>${product.publicationDate}</td>

							</tr>

						</table>
					</div>
				</div>

				<div class="col-sm-12 col-md-9 col-lg-6">
					<cms:pageSlot position="VariantSelector" var="component" element="div" class="page-details-variants-select">
						<cms:component component="${component}" element="div" class="yComponentWrapper page-details-variants-select-component" style="color:red"/>
					</cms:pageSlot>
					<cms:pageSlot position="AddToCart" var="component" element="div" class="page-details-variants-select">
						<cms:component component="${component}" element="div" class="yComponentWrapper page-details-add-to-cart-component" style="color:grey; font-weight:bold"/>
					</cms:pageSlot>
				</div>
			</div>
		</div>
	</div>
</div>
