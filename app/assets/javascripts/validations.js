function validate(id){
  $(id).bootstrapValidator({
    // feedbackIcons: {
    //   valid: 'glyphicon glyphicon-ok',
    //   invalid: 'glyphicon glyphicon-remove',
    //   validating: 'glyphicon glyphicon-refresh'
    // },
    fields: {
      email: {
        validators: {
          emailAddress: {
            field: 'email',
            // message: 'nie taki email'
          },
          different: {
            field: 'password'
          }
        }
      },
      password: {
        validators: {
          different: {
            field: 'email'
          }
        }
      },
      confirmPassword: {
        validators: {
          identical: {
            field: 'password'
          }
        }
      }
    }
  });
}