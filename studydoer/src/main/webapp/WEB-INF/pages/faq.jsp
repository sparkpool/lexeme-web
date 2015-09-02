<!DOCTYPE html>
<%@ include file="header.jsp"%>

<main>


<section class="page page--support">
	<div class="container container--large">
		<div class="container container--small container--centered">
			<h1 class="title--large">FAQ</h1>

			<p>This is our frequently asked questions. Search or browse to
				find what you’re looking for.</p>

		</div>



		<div class="support__nav">
			<div class="support__nav-inner">
				<a class="button button--small button--round button--blue"
					ng-class="{'button--blue':!category}" href="#/"> All </a>
				<!-- ngRepeat: (cat, val) in qaByCat | orderBy:val -->
				<a class="button button--small button--round ng-binding ng-scope"
					ng-class="{'button--blue':cat == category}" href="#/Android">
					Experts </a><a
					class="button button--small button--round ng-binding ng-scope"
					ng-class="{'button--blue':cat == category}" href="#/BlackBerry">
					Students </a><a
					class="button button--small button--round ng-binding ng-scope"
					ng-class="{'button--blue':cat == category}" href="#/BlackBerry 10">
					Other</a>
			</div>
		</div>

		<div class="support__nav-mobile">
			<div class="select">
				<select ng-model="select_path"
					ng-change="faq.selectbar(select_path)"
					style="opacity: 0; -webkit-appearance: menulist-button; width: 100px; position: absolute; height: 100px; font-size: 11.1999998092651px;"
					class="hasCustomSelect ng-pristine ng-untouched ng-valid">
					<option value="" ng-selected="!category" selected="selected">All</option>
					<!-- ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Android"
						class="ng-binding ng-scope">Android</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="BlackBerry"
						class="ng-binding ng-scope">BlackBerry</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="BlackBerry 10"
						class="ng-binding ng-scope">BlackBerry 10</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="General"
						class="ng-binding ng-scope">General</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Nokia X"
						class="ng-binding ng-scope">Nokia X</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Premium"
						class="ng-binding ng-scope">Premium</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Series 40"
						class="ng-binding ng-scope">Series 40</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Symbian"
						class="ng-binding ng-scope">Symbian</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Tizen"
						class="ng-binding ng-scope">Tizen</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Truedialer"
						class="ng-binding ng-scope">Truedialer</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Truemessenger"
						class="ng-binding ng-scope">Truemessenger</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="Windows Phone 8"
						class="ng-binding ng-scope">Windows Phone 8</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="firefoxos"
						class="ng-binding ng-scope">Firefox OS</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
					<option ng-repeat="(cat, val) in qaByCat"
						ng-selected="category == cat" value="iPhone"
						class="ng-binding ng-scope">iPhone</option>
					<!-- end ngRepeat: (cat, val) in qaByCat -->
				</select><span class="customSelect"
					style="opacity: 1; display: inline-block;"><span
					class="customSelectInner"
					style="width: 100px; display: inline-block;">All</span></span>
			</div>
		</div>
		<hr>

	</div>
</section>
</main>

<%@ include file="footer.jsp"%>
