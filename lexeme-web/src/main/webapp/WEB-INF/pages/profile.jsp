<%@ include file="header.jsp"%>

<br />
<br />
<br />

<div class="main container">

	<div class="ui three column grid">
		<div class="column">
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
		<div class="column">
			<div class="ui pointing menu">
				<a class="active item"> <i class="home icon"></i> Profile
				</a> <a class="item"> <i class="mail icon"></i> Account info
				</a> <a class="item"> <i class="user icon"></i> Edit infor
				</a>
			</div>
		</div>
		<div class="column">
			<div class="ui fluid card"></div>
		</div>
	</div>
</div>
<%@ include file="footer.jsp"%>
