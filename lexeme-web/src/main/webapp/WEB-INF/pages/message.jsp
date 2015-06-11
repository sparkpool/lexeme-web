
<!-- WIll SHOW THE ERROR MESSAGE -->
<div>
	<p>
		<c:if test="${!empty errorMsg}">
			<div class="alert alert-danger" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div style="
			    background-repeat: no-repeat;
				color: red; ">${errorMsg}</div>
			</div>
		</c:if>

		<c:if test="${!empty msg}">
			<div class="alert alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>

				<div  style="
			    background-repeat: no-repeat;
				color: #4F8A10; ">${msg}</div>
			</div>
		</c:if>
	</p>

</div>
