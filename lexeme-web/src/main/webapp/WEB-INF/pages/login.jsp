
<!--Header--->
<%@ include file="header.jsp"%>
<section id="content">
	<div class="ui center aligned three column grid">
		<br /> <br /> <br />
		<!--  -->
		<div class="left aligned column">
				<h1 align="center">Login</h1>

				<!-- WIll SHOW THE ERROR MESSAGE -->
				<p >
					<c:if test="${!empty errorMsg}">
						<div class="error" style="color:red;">${errorMsg}</div>
					</c:if>

					<c:if test="${!empty msg}">
						<div class="msg" style="color:red;">${msg}</div>
					</c:if>
				</p>

				<form class="ui form "
					action="${pageContext.request.contextPath}/user/login"
					method="POST">

					<!-- Email-address -->
					<div class="field">
						<label>Email</label>

						
							<input placeholder="Email" name="email" type="email"> 
						
					</div>


					<!-- Password -->
					<div class="field">
						<label>Password</label>
						
							<input name="password" type="password" placeholder="Password ">
							
						
					</div>

					<div class="inline field">


						<p>
							<a href="${pageContext.request.contextPath}/user/fp">Forgot
								your password</a>

						</p>

					</div>
					<div class="ui field">
						<input class="ui blue submit button" type="submit" name="SAVE">
					</div>
				</form>
			</div>
		</div>

	</div>

</section>
<%@ include file="footer.jsp"%>
