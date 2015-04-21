<%@ include file="header.jsp"%>

<br />
<br />
<br />

<div class="main container">
	<div class="ui grid ">
	
	
		<div class="three wide column">
			<!-- User Profile Pictures -->
			<div class="ui fluid card">
				<div class="image">
					<img
						src="${pageContext.request.contextPath}/resources/semantic/images/stevie.jpg">
				</div>
				
				<!-- Brief description about user -->
				<div class="content">
					<a class="header">Shrey Arora</a>
					<div class="meta">
						<span class="date">Create in Sep 2014</span>
					</div>
				</div>
				
				
				<!-- extra information about user -->
				<div class="extra content">
					<a> <i class="users icon"></i>

					</a>
				</div>
			</div>
		</div>
		
		<!-- Profile Information Section -->
		<div class="thirteen wide column">


		<div class="profile">
			<div class="ui pointing secondary menu">
				<a class="active red item" data-tab="first">Student Profile</a>
				<a	class="green item" data-tab="second">Account Information</a> 
				<a	class="yellow item" data-tab="third">Personal Information</a>
				<a	class="yellow item" data-tab="paymenthistory">PayMent History</a>
				<a	class="yellow item" data-tab="solution">Search Solution</a>
				
			</div>


			<div class="ui bottom  attached  active tab" data-tab="first">
				
					<div class="column">Name</div>
					<div class="column">School Name</div>
				
			</div>
			<div class="ui bottom  attached tab " data-tab="second">
				Welcome
			</div>

			
			<div class="ui bottom attached  tab " data-tab="third">
				<!-- Tab Content !-->
				Fuck you!!
			</div>
			
			
			<div class="ui botton attched tab" data-tab="paymenthistory">
			
			</div>
			<div class="ui botton attched tab" data-tab="solution">
			
			</div>
	
	</div>
		</div>
		</div>

</div>

<%@ include file="footer.jsp"%>
