<%@include file="header.jsp"%>

<nav></nav>
<main>
<section class="page page--home">
	<div class="truecaller-land" style="display: block;">
		<div class="TruecallerLand"></div>
	</div>
	<div class="container container--medium">
		<h1 class="title--large">Search Doument/Answer from library</h1>
		<div class="search-form">
			<form action="" method="POST"
				autocomplete="off" name="search_form">
				<div class="search-form__number-field">
					<input class="search-form__input" name="phone_number"
						data-validate="required|phone_number|min:4|max:20" type="tel"
						placeholder="Search Solution" value="" autofocus="">
					
				</div>

			</form>
		</div>
		<p class="align-center">
			Earn Money by uploading Documents <br> 
		</p>

		<p class="align-center"></p>
		<p class="align-center">
			<a href="${pageContext.request.contextPath}/doc/upload"
				class="button button--white button--medium">Earn Money</a>
		</p>
	</div>

</section>

</main>


<%@include file="footer.jsp"%>