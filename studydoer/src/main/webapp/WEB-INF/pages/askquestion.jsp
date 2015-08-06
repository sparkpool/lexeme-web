<%@ include file="header.jsp"%>
	
	
	<!-- Form
		1. Description
		2. Deadline
		3. Price 
		4. Subject
		5. Additional Information
	 -->
<div class="container">
	<div class="col-lg-12 col-md-12 col-sm-12" >
	<blockquote><h1>Get Help | HomeWork Help</h1></blockquote>
	<form  class="form-group" action="comments.php" method="post">	
		<div class="col-lg-12" >
			<textarea class="form-control" placeholder="Ask Question | Request Any Help" rows="6" name="description">
			</textarea>
		</div>
		
		<div class="span10" style="padding-top:20px; border-color:#006666; border:thin;">
			
			<div class="col-lg-2">
				<blockquote>Subject </blockquote>
				<select id="qa_subject_id"  class="form-control" name="subject">
					<option>choose any subject?</option>
					<option value="5">Accounting</option>
					<option value="Computer Science">Computer Science</option>
					<option value="Computer Science">Writing Help</option>
					<option value="10">Business</option>
					<option value="12">Math</option>
					<option value="19">Physics</option>
		    	</select>
			</div>	

<!--- Date And Time-->
			<div class="col-lg-3">
				<blockquote> Date & Time</blockquote>
	 		 	<div class="input-group date">
            	<input type="text" class="form-control" name="deadline">
				<span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
			
				</div>
			</div>
			
			<div class="col-lg-4">
				<blockquote>Attachment</blockquote>
			  	<span class="glyphicon glyphicon-file"> Attach file </span> 	
				<input name="Upload Files:" id="file" type="file" name="Attach Files:" class="form-group" id="file">
			</div>

			<div class="col-lg-3">
				<blockquote>Min Price</blockquote>

			  <span class="glyphicon glyphicon-usd"></span> 
			     <input type="text" class="form-control" name="price" width="20%">

			</div>
			<div class="col-lg-5">	
				<blockquote> Get Answer</blockquote>
			<div class="btn-group" align="left">
				<button class="btn btn-warning btn-lg"  data-toggle="modal" data-target="#makePayment" onClick="addQuestion()">Get Solution</button>
			</div>
			</div> <!--span2-->
	</div>	
	</form>	

</div>
</div>

<div class="modal fade" id="makePayment" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header">
        		<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span>		
					</button>
        		<h4 class="modal-title" id="myModalLabel">Payment</h4>
      		</div>
	  	<div class="alert alert-info" >
      
	  		<div class="modal-body">
				<div class="checkbox-inline">
				</div>
				<form class="form-group" >
		   				
							 <div class="input-group date" style="padding-bottom:10px;">
           						<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>			
								<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Name of Card" name="cardName" 
								width="100px">		 	
							</div>
		   			 		<div class="input-group date" style="padding-bottom:10px;">
           						<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>			
							<input type="text" class="form-control" id="exampleInputEmail1" placeholder="Name of Card" name="cardName" 
							width="100px">		 	
							</div>
 		   	
					 		<div class="input-group date" style="padding-bottom:10px;">
           						<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>			
				 		   <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Expiry Date" name="exampleInputEmail1" 
						   width="50px">
						 	<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>			
						   <input type="text" class="form-control" id="exampleInputEmail1" placeholder="CVV" name="exampleInputEmail1" 
						   width="50px">
			  				</div>
				
					 		<div class="input-group date" style="padding-bottom:10px;">
         						<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>			
					 		   <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Zip Code" name="exampleInputEmail1" 
							   width="50px">

							<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>			
							<select id="qa_subject_id"  class="form-control" name="subject">
					                    <option value="AF">Afghanistan</option>
										<option value="AX">ALand Islands</option>
										<option value="AL">Albania</option>
										<option value="DZ">Algeria</option>
										<option value="AS">American Samoa</option>
										<option value="AD">Andorra</option>
										<option value="AO">Angola</option>
										<option value="AI">Anguilla</option>
										<option value="AQ">Antarctica</option>
										<option value="AG">Antigua And Barbuda</option>
										<option value="AR">Argentina</option>
										<option value="AM">Armenia</option>
										<option value="AW">Aruba</option>
										<option value="AU">Australia</option>
										<option value="AT">Austria</option>
										<option value="AZ">Azerbaijan</option>
										<option value="BS">Bahamas</option>
										<option value="BH">Bahrain</option>
										<option value="BD">Bangladesh</option>
										<option value="BB">Barbados</option>
										<option value="BY">Belarus</option>
										<option value="BE">Belgium</option>
										<option value="BZ">Belize</option>
										<option value="BJ">Benin</option>
										<option value="BM">Bermuda</option>
										<option value="BT">Bhutan</option>
										<option value="BO">Bolivia</option>
										<option value="BA">Bosnia And Herzegovina</option>
										<option value="BW">Botswana</option>
										<option value="BV">Bouvet Island</option>
										<option value="BR">Brazil</option>
										<option value="IO">British Indian Ocean Territory</option>
										<option value="BN">Brunei Darussalam</option>
										<option value="BG">Bulgaria</option>
										<option value="BF">Burkina Faso</option>
										<option value="BI">Burundi</option>
										<option value="KH">Cambodia</option>
										<option value="CM">Cameroon</option>
										<option value="CA">Canada</option>
										<option value="CV">Cape Verde</option>
										<option value="KY">Cayman Islands</option>
										<option value="CF">Central African Republic</option>
										<option value="TD">Chad</option>
										<option value="CL">Chile</option>
										<option value="CN">China</option>
										<option value="CX">Christmas Island</option>
										<option value="CC">Cocos (Keeling) Islands</option>
										<option value="CO">Colombia</option>
										<option value="KM">Comoros</option>
										<option value="CG">Congo</option>
										<option value="CD">Congo, The Democratic Republic Of The</option>
										<option value="CK">Cook Islands</option>
										<option value="CR">Costa Rica</option>
										<option value="CI">Cote D'Ivoire</option>
										<option value="HR">Croatia</option>
										<option value="CU">Cuba</option>
										<option value="CY">Cyprus</option>
										<option value="CZ">Czech Republic</option>
										<option value="DK">Denmark</option>
										<option value="DJ">Djibouti</option>
										<option value="DM">Dominica</option>
										<option value="DO">Dominican Republic</option>
										<option value="EC">Ecuador</option>
										<option value="EG">Egypt</option>
										<option value="SV">El Salvador</option>
										<option value="GQ">Equatorial Guinea</option>
										<option value="ER">Eritrea</option>
										<option value="EE">Estonia</option>
										<option value="ET">Ethiopia</option>
										<option value="FK">Falkland Islands (Malvinas)</option>
										<option value="FO">Faroe Islands</option>
										<option value="FJ">Fiji</option>
										<option value="FI">Finland</option>
										<option value="FR">France</option>
										<option value="GF">French Guiana</option>
										<option value="PF">French Polynesia</option>
										<option value="TF">French Southern Territories</option>
										<option value="GA">Gabon</option>
										<option value="GM">Gambia</option>
										<option value="GE">Georgia</option>
										<option value="DE">Germany</option>
										<option value="GH">Ghana</option>
										<option value="GI">Gibraltar</option>
										<option value="GR">Greece</option>
										<option value="GL">Greenland</option>
										<option value="GD">Grenada</option>
										<option value="GP">Guadeloupe</option>
										<option value="GU">Guam</option>
										<option value="GT">Guatemala</option>
										<option value="Gg">Guernsey</option>
										<option value="GN">Guinea</option>
										<option value="GW">Guinea-Bissau</option>
										<option value="GY">Guyana</option>
										<option value="HT">Haiti</option>
										<option value="HM">Heard Island And Mcdonald Islands</option>
										<option value="VA">Holy See (Vatican City State)</option>
										<option value="HN">Honduras</option>
										<option value="HK">Hong Kong</option>
										<option value="HU">Hungary</option>
										<option value="IS">Iceland</option>
										<option value="IN">India</option>
										<option value="ID">Indonesia</option>
										<option value="IR">Iran, Islamic Republic Of</option>
										<option value="IQ">Iraq</option>
										<option value="IE">Ireland</option>
										<option value="IM">Isle Of Man</option>
										<option value="IL">Israel</option>
										<option value="IT">Italy</option>
										<option value="JM">Jamaica</option>
										<option value="JP">Japan</option>
										<option value="JE">Jersey</option>
										<option value="JO">Jordan</option>
										<option value="KZ">Kazakhstan</option>
										<option value="KE">Kenya</option>
										<option value="KI">Kiribati</option>
										<option value="KP">Korea, Democratic People'S Republic Of</option>
										<option value="KR">Korea, Republic Of</option>
										<option value="KW">Kuwait</option>
										<option value="KG">Kyrgyzstan</option>
										<option value="LA">Lao People'S Democratic Republic</option>
										<option value="LV">Latvia</option>
										<option value="LB">Lebanon</option>
										<option value="LS">Lesotho</option>
										<option value="LR">Liberia</option>
										<option value="LY">Libyan Arab Jamahiriya</option>
										<option value="LI">Liechtenstein</option>
										<option value="LT">Lithuania</option>
										<option value="LU">Luxembourg</option>
										<option value="MO">Macao</option>
										<option value="MK">Macedonia, The Former Yugoslav Republic Of</option>
										<option value="MG">Madagascar</option>
										<option value="MW">Malawi</option>
										<option value="MY">Malaysia</option>
										<option value="MV">Maldives</option>
										<option value="ML">Mali</option>
										<option value="MT">Malta</option>
										<option value="MH">Marshall Islands</option>
										<option value="MQ">Martinique</option>
										<option value="MR">Mauritania</option>
										<option value="MU">Mauritius</option>
										<option value="YT">Mayotte</option>
										<option value="MX">Mexico</option>
										<option value="FM">Micronesia, Federated States Of</option>
										<option value="MD">Moldova, Republic Of</option>
										<option value="MC">Monaco</option>
										<option value="MN">Mongolia</option>
										<option value="MS">Montserrat</option>
										<option value="MA">Morocco</option>
										<option value="MZ">Mozambique</option>
										<option value="MM">Myanmar</option>
										<option value="NA">Namibia</option>
										<option value="NR">Nauru</option>
										<option value="NP">Nepal</option>
										<option value="NL">Netherlands</option>
										<option value="AN">Netherlands Antilles</option>
										<option value="NC">New Caledonia</option>
										<option value="NZ">New Zealand</option>
										<option value="NI">Nicaragua</option>
										<option value="NE">Niger</option>
										<option value="NG">Nigeria</option>
										<option value="NU">Niue</option>
										<option value="NF">Norfolk Island</option>
										<option value="MP">Northern Mariana Islands</option>
										<option value="NO">Norway</option>
										<option value="OM">Oman</option>
										<option value="PK">Pakistan</option>
										<option value="PW">Palau</option>
										<option value="PS">Palestinian Territory, Occupied</option>
										<option value="PA">Panama</option>
										<option value="PG">Papua New Guinea</option>
										<option value="PY">Paraguay</option>
										<option value="PE">Peru</option>
										<option value="PH">Philippines</option>
										<option value="PN">Pitcairn</option>
										<option value="PL">Poland</option>
										<option value="PT">Portugal</option>
										<option value="PR">Puerto Rico</option>
										<option value="QA">Qatar</option>
										<option value="RE">Reunion</option>
										<option value="RO">Romania</option>
										<option value="RU">Russian Federation</option>
										<option value="RW">Rwanda</option>
										<option value="SH">Saint Helena</option>
										<option value="KN">Saint Kitts And Nevis</option>
										<option value="LC">Saint Lucia</option>
										<option value="PM">Saint Pierre And Miquelon</option>
										<option value="VC">Saint Vincent And The Grenadines</option>
										<option value="WS">Samoa</option>
										<option value="SM">San Marino</option>
										<option value="ST">Sao Tome And Principe</option>
										<option value="SA">Saudi Arabia</option>
										<option value="SN">Senegal</option>
										<option value="CS">Serbia And Montenegro</option>
										<option value="SC">Seychelles</option>
										<option value="SL">Sierra Leone</option>
										<option value="SG">Singapore</option>
										<option value="SK">Slovakia</option>
										<option value="SI">Slovenia</option>
										<option value="SB">Solomon Islands</option>
										<option value="SO">Somalia</option>
										<option value="ZA">South Africa</option>
										
										<option value="GS">South Georgia And The South Sandwich Islands</option>
										<option value="ES">Spain</option>
										<option value="LK">Sri Lanka</option>
										<option value="SD">Sudan</option>
										<option value="SR">Suriname</option>
										<option value="SJ">Svalbard And Jan Mayen</option>
										<option value="SZ">Swaziland</option>
										<option value="SE">Sweden</option>
										<option value="CH">Switzerland</option>
										<option value="SY">Syrian Arab Republic</option>
										<option value="TW">Taiwan, Province Of China</option>
										<option value="TJ">Tajikistan</option>
										<option value="TZ">Tanzania, United Republic Of</option>
										<option value="TH">Thailand</option>
										<option value="TL">Timor-Leste</option>
										<option value="TG">Togo</option>
										<option value="TK">Tokelau</option>
										<option value="TO">Tonga</option>
										<option value="TT">Trinidad And Tobago</option>
										<option value="TN">Tunisia</option>
										<option value="TR">Turkey</option>
										<option value="TM">Turkmenistan</option>
										<option value="TC">Turks And Caicos Islands</option>
										<option value="TV">Tuvalu</option>
										<option value="UG">Uganda</option>
										<option value="UA">Ukraine</option>
										<option value="AE">United Arab Emirates</option>
										<option value="GB">United Kingdom</option>
										<option value="US" selected="selected">United States</option>
										<option value="UM">United States Minor Outlying Islands</option>
										<option value="UY">Uruguay</option>
										<option value="UZ">Uzbekistan</option>
										<option value="VU">Vanuatu</option>
										<option value="VE">Venezuela</option>
										<option value="VN">Viet Nam</option>
										<option value="VG">Virgin Islands, British</option>
										<option value="VI">Virgin Islands, U.S.</option>
										<option value="WF">Wallis And Futuna</option>
										<option value="EH">Western Sahara</option>
										<option value="YE">Yemen</option>
										<option value="ZM">Zambia</option>
										<option value="ZW">Zimbabwe</option>		        
		    						</select>
			  				</div>
					
				
			  </form>
			</div>
			
		</div>
		
      <div class="modal-footer" align="center">
        <button type="button" class="btn btn-warning" data-dismiss="modal">Make Payment</button>
      </div>
    </div>
</div>
</div>



   
   
<!---
=================================================================================================================================
								Script Area

==================================================================================================================================-->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
   <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
    <script>
    $('.input-group.date').datepicker({
    format: "yyyy/mm/dd",
    startDate: "2012-01-01",
    endDate: "2019-01-01",
    todayBtn: "linked",
    autoclose: true,
    todayHighlight: true
    });
    </script>
	
	
	<div class="feedback">
		
	</div>
<%@ include file="footer.jsp"%>
