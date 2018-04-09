


$(document).ready(function() {
    $('[data-email-submit-form]').on("ajax:success", function(event, data, status, xhr){

        $.notify({
            title: '<strong>Heads up!</strong>',
            message: 'You can use any of bootstraps other alert styles as well by default.'
        },{
            type: 'success'
        });


    });
});
