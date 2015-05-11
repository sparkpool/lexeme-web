				<!-- WIll SHOW THE ERROR MESSAGE -->
				<p >
					<c:if test="${!empty errorMsg}">
				<div class="ui ignored error message" id="testdiv">
				
						<div class="error" style="color:red;">${errorMsg}</div>
				</div>
					</c:if>

					<c:if test="${!empty msg}">
						<div class="msg" style="color:red;">${msg}</div>
					</c:if>
				</p>
