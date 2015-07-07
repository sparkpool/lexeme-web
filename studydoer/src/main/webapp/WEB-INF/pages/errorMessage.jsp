
<!-- WIll SHOW THE ERROR MESSAGE -->
<div>
	<p>
		<div ng-show="errorMsg">
			<div class="alert alert-success" role="alert">
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			<div  style="
			    background-repeat: no-repeat;
				color: red; ">{{errorMsg}}</div>
				</div>
		</div>

		<div ng-show="successMsg" style="background-color: green;">
			<div class="alert alert-success" role="alert" >
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			<div  style="
			    background-repeat: no-repeat;
				color: #4F8A10;  ">{{successMsg}}</div>
				</div>
		</div>
	</p>

</div>
