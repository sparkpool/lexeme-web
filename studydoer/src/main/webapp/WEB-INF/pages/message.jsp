
<!-- WIll SHOW THE ERROR MESSAGE -->
<div>
	<p>
		<c:if test="${!empty errorMsg}">
			<div class="ui green message">
			<i class="close icon"></i>
			<div class="header">${errorMsg}</div>
		</div>
		</c:if>

		<c:if test="${!empty msg}">
			<div class="ui green message">
			<i class="close icon"></i>
			<div class="header">${msg}</div>
		</div>
		</c:if>
	</p>

</div>
