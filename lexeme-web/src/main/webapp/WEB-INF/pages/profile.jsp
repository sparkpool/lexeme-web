<%@ include file="header.jsp"%>

<section id="content">
<div class=" container">
	<div class="ui grid ">
		<br>
		<br/>
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
			

			</div>
		
		
		</div>

		<!-- Profile Information Section -->

		<div class="thirteen wide column">

			<div class="profile">
				<div class="ui pointing secondary menu">
					<a class="active red item" data-tab="first">Profile</a> <a
						class="blue item" data-tab="second">Account Information</a> <a
						class="blue item" data-tab="third">Personal Information</a> <a
						class="yellow item" data-tab="paymenthistory">PayMent History</a>
						<a class="yellow item" data-tab="solution">Search Solution</a>

				</div>


				<div class="ui bottom  attached  active tab" data-tab="first">
					<h1>User Information</h1>
					<hr>
					<div class="green field">Name</div>
					<br />
					<div class="field">School/University</div>
					<br />
					<div class="field">Joined Year</div>
					<br />



				</div>
				<div class="ui bottom  attached tab " data-tab="second">
					<h1>Pay Pal Account</h1>
					<hr>
					<div class="four wide column">

						<div class="one column">
						<label>Add pay pal email id</label>
							<form action="" class="ui form">
								<div class="field">
									<input type="email" name="paypalid" />
								</div>
								<div class="field" align="right">

									<input type="submit" name="Add" />
								</div>

							</form>
						</div>


						<div class="second field orange segment">
							<h1>Credit car information</h1>
							<hr>
							
						</div>

						<div class="column"></div>
					</div>

				</div>


				<div class="ui bottom attached  tab " data-tab="third">
					<!-- Tab Content !-->
					<div class="column">
						Acedmic
					</div>
					<div class="column">
						Acedmic
					</div>
					<div class="column">
						Acedmic
					</div>
					
				</div>


				<div class="ui botton attched tab" data-tab="paymenthistory">
					<h1>Payment history</h1>
					<hr>

					<table class="ui sortable celled table">
						<thead>
							<tr>
								<th class="ascending">ID</th>
								<th class="ascending">Date</th>
								<th class="ascending">Title</th>
								<th class="ascending"> Subject</th>
								<th class="ascending">Amount</th>
								<th class="ascending">Status</th>


							</tr>
						</thead>
						<tbody>
							<tr>
								<td>John</td>
								<td>No Action</td>
								<td>None</td>
							</tr>
							<tr>
								<td>Jamie</td>
								<td class="positive">Approved</td>
								<td class="warning">Requires call</td>
							</tr>
							<tr>
								<td>Jill</td>
								<td class="negative">Denied</td>
								<td>None</td>
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<th>3 People</th>
								<th>2 Approved</th>
								<th></th>
							</tr>
						</tfoot>
					</table>

				</div>
				<div class="ui botton attched tab" data-tab="solution">
					<h1>Download Solution</h1>
					<hr>

					<div class="three column">

						<div class="column">
							<form action="" class="ui form">
								<div class="field">
									<input type="email" name="paypalid" />
								</div>
								<div class="field" align="center">

									<input type="submit" name="Add" />
								</div>

							</form>
						</div>


						<div class="column"></div>

						<div class="column"></div>
					</div>


				</div>


</div>
</div>
	</div>

</div>
</section>
<%@ include file="footer.jsp"%>
