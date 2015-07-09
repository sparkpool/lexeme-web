$(document).ready(function() {



	/***************************************************************************
	 * Define validation Rules
	 * 
	 **************************************************************************/
	validationRules = {

		courseID:{
			identifier : 'courseID',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter Couser ID '

			} ]
		},
		courseId : {
			identifier : 'courseId',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter Couser ID '

			} ]

		},
		firstName : {
			identifier : 'first-name',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your first name'
			},

			{
				type : 'maxLength[50]',
				prompt : 'Your first Name  can not be more than 50.'

			} ]
		},
		school : {
			identifier : 'school',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your school name'
			}, {
				type : 'maxLength[50]',
				prompt : 'Your School Name  can not be more than 50.'
			}

			]
		},
		subject : {
			identifier : 'subject',
			rules : [

			{
				type : 'empty',
				prompt : 'Enter your subject name'
			}, {
				type : 'maxLength[50]',
				prompt : 'Your Subject Name  can not be more than 50.'
			}

			]
		},
		degree : {
			identifier : 'degree',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your degree name'
			}, {
				type : 'maxLength[50]',
				prompt : 'Degree Name  can not be more than 50.'
			}

			]

		},
		year : {
			identifier : 'year',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your degree name'
			},

			{
				type : 'maxLength[50]',
				prompt : 'Year length  can not be more than 50.'
			}

			]
		},
		location : {
			identifier : 'location',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your company location'
			}, {
				type : 'maxLength[50]',
				prompt : 'Location Name length can not be more than 50.'
			}

			]

		},

		middleName : {
			identifier : 'middle-name',
			rules : [ {
				type : 'maxLength[50]',
				prompt : 'Your middle Name  can not be more than 50.'

			} ]
		},
		dob : {

			identifier : 'dob',
			rules : [

			{
				type : 'empty',
				prompt : 'DOB can not be emplty'

			} ]

		},
		country : {
			identifier : 'country',
			rules : [

			{
				type : 'empty',
				prompt : 'Country can not be emplty'

			}, {
				type : 'maxLength[30]',
				prompt : 'Country Name  can not be more than 30.'

			} ]

		},
		state : {
			identifier : 'state',
			rules : [

			{
				type : 'empty',
				prompt : 'State can not be emplty'

			},

			{
				type : 'maxLength[50]',
				prompt : 'State Name  can not be more than 30.'

			} ]

		},
		city : {
			identifier : 'city',
			rules : [

			{
				type : 'empty',
				prompt : 'City can not be emplty'

			}, {
				type : 'maxLength[50]',
				prompt : 'City Name  can not be more than 30.'

			} ]

		},
		zip : {
			identifier : 'zip',
			rules : [ {
				type : 'empty',
				prompt : 'Zip can not be emplty'
			}, {
				type : 'maxLength[50]',
				prompt : 'Zip Code  can not be more than 18.'

			} ]

		},
		address : {
			identifier : 'address',
			rules : [

			{
				type : 'empty',
				prompt : 'Address can not be emplty'
			}, {
				type : 'maxLength[50]',
				prompt : 'Address  can not be more than 100.'

			} ]

		},

		name : {
			identifier : 'name',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter you name'
			} ]
		},
		gender : {
			identifier : 'gender',
			rules : [ {
				type : 'empty',
				prompt : 'Please select a gender'
			} ]
		},
		lastName : {
			identifier : 'last-name',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your last name'
			} ]
		},

		university : {
			identifier : 'university',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your university'
			} ]
		},
		company : {
			identifier : 'company',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your Company'
			} ]
		},

		jobTitle : {
			identifier : 'jobTitle',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your Job Tile'

			} ]
		},
		toTime : {
			identifier : 'toTime',
			rules : [ {
				type : 'empty',
				prompt : 'Field can not be empty!'

			}

			]

		},
		fromTime : {
			identifier : 'fromTime',
			rules : [ {
				type : 'empty',
				prompt : 'Field can not be empty!'

			}

			]

		},
		userName : {
			identifier : 'userName',

			rules : [ {
				type : 'empty',
				prompt : 'Please enter a username'
			},

			{
				type : 'length[6]',
				prompt : 'User name must be between 6  to 12 charcters long'

			},

			{
				type : 'maxLength[12]',
				prompt : 'User name must be between 6  to 12 charcters long'

			}

			]
		},
		email : {
			identifier : 'email',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your email'
			}, {
				type : 'email',
				prompt : 'Please enter a valid email'
			} ]
		},
		password : {
			identifier : 'password',
			
			rules : [ {
				type : 'empty',
				prompt : 'Please enter a password'
			}, {
				type : 'length[6]',
				prompt : 'Your password must be between 6 to 18 characters'
			}, {
				type : 'maxLength[18]',
				prompt : 'Your password must be between 6 to 18 characters'
			} ]
		},
		confirmPassword : {
			identifier : 'password-confirm',
			rules : [ {
				type : 'empty',
				prompt : 'Please confirm your password'
			}, {
				identifier : 'password-confirm',
				type : 'match[password]',
				prompt : 'Please verify password matches'
			} ]
		},
		terms : {
			identifier : 'terms',
			rules : [ {
				type : 'checked',
				prompt : 'You must agree to the terms and conditions'
			} ]
		},

		phoneNo : {
			identifier : 'phoneNo',
			rules : [ {
				type : 'empty',
				prompt : 'Please enter your Phone Number'
			}, {
				type : 'length[6]',
				prompt : 'Your Phone Number must be between 6 to 15 characters'
			}, {
				type : 'maxLength[15]',
				prompt : 'Your Phone Number must be between 6 to 18 characters'
			} ]

		}

	};

	/***************************************************************************
	 * Apply defined validation rule of form data
	 **************************************************************************/
	$('.ui.form').form({
		fields : validationRules,
		on : 'change',
		inline : 'true',
		
		
	});
	
	/***
	 * Message
	 */
	
	$('.message .close')
	  .on('click', function() {
	    $(this)
	      .closest('.message')
	      .transition('fade')
	    ;
	  })
	;

	/***
	 * Work Around: 
	 * Bug:
	 */
	
	$( "input" ).mouseenter(function(  ) {
	}).mouseleave(function() {
	    this.blur()  ;      
	});


});
