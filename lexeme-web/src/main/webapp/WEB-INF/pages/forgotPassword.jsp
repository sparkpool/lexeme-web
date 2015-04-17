
<!--Header--->
<%@ include file="header.jsp"%>
<br />
<br />
<div class="ui center aligned three column grid">

	<div class="column">

				<h1>Forgot Password</h1>

			<form class="ui form" action="${pageContext.request.contextPath}/user/fp" method="POST">

				<!-- Email-address -->
				<div class="field">
					<input placeholder="Email" name="email"
						type="email">
				</div>


				
			

				<div class="two field">
				
				<div class="field">
				</div>
				<div class="field" align="right">
					<input class="ui blue submit button" type="submit" name="SAVE"/>
 				</div>
 				</div>

			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>