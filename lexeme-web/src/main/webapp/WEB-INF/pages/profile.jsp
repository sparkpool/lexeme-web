<%@ include file="header.jsp"%>

<br />
<br />
<br />

<div class="main container">

	<div class="ui grid ">
		<div class="three wide column">
		
			<div class="ui fluid card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/resources/semantic/images/stevie.jpg">
				</div>
				<div class="content">
					<a class="header">Shrey Arora</a>
					<div class="meta">
						<span class="date">Create in Sep 2014</span>
					</div>
				</div>
				<div class="extra content">
					<a> <i class="users icon"></i>

					</a>
				</div>
			</div>
		</div>
		<div class="thirteen wide column">

			<div class="ui pointing secondary menu">
				<a class="active red item" data-tab="first">Student Profile</a> <a
					class="item" data-tab="second">Account Information</a> 
				<a
					class="item" data-tab="third">Personal Information</a>

			</div>


			<div class="ui active tab" data-tab="first">
				
				Hello
			</div>
			<div class="ui bottom attached tab segment" data-tab="second">
				<!-- Tab Content !-->
				Welcome
			</div>
			
			<div class="ui bottom attached  tab segment" data-tab="second">
				<!-- Tab Content !-->
				Fuck you!!
			</div>

		</div>
		</div>

</div>
<%@ include file="footer.jsp"%>
