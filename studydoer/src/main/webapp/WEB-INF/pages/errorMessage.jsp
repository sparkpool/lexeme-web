
<!-- WIll SHOW THE ERROR MESSAGE -->
	<div ng-show="errorMsg">
		<div class="ui green message">
			<i class="close icon"></i>
			<div class="header">{{errorMsg}}</div>
		</div>
	</div>


	<!-- Show Successful response  -->
	<div ng-show="successMsg">
		<div class="ui green message">
			<i class="close icon"></i>
			<div class="header">{{successMsg}}</div>
		</div>
	</div>