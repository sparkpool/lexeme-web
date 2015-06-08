
<!-- WIll SHOW THE ERROR MESSAGE -->
<div>
	<p>
		<c:if test="${!empty errorMsg}">
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="error" style="color: red;">${errorMsg}</div>
			</div>
		</c:if>

		<c:if test="${!empty msg}">
			<div class="alert alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>

				<div class="msg" style="color: red;">${msg}</div>
			</div>
		</c:if>
	</p>

</div>
