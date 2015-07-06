
$(document)
  .ready(function() {
	 
/********************************************************************************
 * Define the api for action 
 * 
 ********************************************************************************/
$.fn.api.settings.api = {
	    'login' : '/login',
	    'signup':'/signup'
	  };
	  


 /******************************************************************************
  * Define validation Rules
  * 
  *******************************************************************************/
 validationRules = {
    firstName: {
      identifier  : 'first-name',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter your first name'
        }
      ]
    },
    name: {
      identifier  : 'name',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter you name'
        }
      ]
    },
    gender: {
      identifier  : 'gender',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please select a gender'
        }
      ]
    },
    lastName: {
      identifier  : 'last-name',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter your last name'
        }
      ]
    },
    username: {
      identifier : 'userName',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter a username'
        },
        {
            type   : 'length[6]',
            prompt : 'Username  must be at least 6 characters'
          }

      ]
    },
    email: {
      identifier : 'email',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter your email'
        },
        {
          type   : 'email',
          prompt : 'Please enter a valid email'
        }
      ]
    },
    password: {
      identifier : 'password',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please enter a password'
        },
        {
          type   : 'length[6]',
          prompt : 'Your password must be at least 6 characters'
        }
      ]
    },
    passwordConfirm: {
      identifier : 'password-confirm',
      rules: [
        {
          type   : 'empty',
          prompt : 'Please confirm your password'
        },
        {
          identifier : 'password-confirm',
          type       : 'match[password]',
          prompt     : 'Please verify password matches'
        }
      ]
    },
    terms: {
      identifier : 'terms',
      rules: [
        {
          type   : 'checked',
          prompt : 'You must agree to the terms and conditions'
        }
      ]
    }

      }
    ;

   
/**********************************************************************
 * Apply defined validation rule of form data 
 **********************************************************************/
    $('.ui.form')
      .form(validationRules, {
        on: 'change',
        inline: 'true'
      });


    $('.ui.form')
    .form('submit');

    
 
    /*********************************************************************
     * Card Api
     *********************************************************************/
    
    $icon = $('.card .corner.label'),
    handler
  ;

  handler = {


  };

  $('.ui.rating')
    .rating()
  ;

  $icon
    .state()
  ;
  });
  
  $('.special.cards .image').dimmer({
  on: 'hover'
});
