$(document).ready(function () {
    $(".alert-dange").hide();
    var regexFn = /^[a-zA-Z]{1,7}$/;
    var regexNumber = /^[0-9]+$/;
    var regexPhone = /^[0-9]{10}$/
    var regexEmail = /^[\w]+@[a-zA-Z.]*(\.[a-zA-Z]{2,3})+$/;
    var errorMessage = 'Data invalid';
    function validate() {
        var firstName = $('#firstName').val();
        var lastName = $('#lastName').val();
        var nameOfCard = $('#nameOfCard').val();
        var email = $('#email').val();
        var phone = $('#phone').val();
        var cardNumber = $('#cardNumber').val().split("-");
        // var address = $('#address').val();
        // var zipcode = $('#zipcode').val();
        // var state = $('#state').val();
        $(".text-muted").text("");
        if (!regexFn.test(firstName)) {
            $("#errorFn").text(errorMessage)
        }
        if (!regexFn.test(lastName)) {
            $("#errorLn").text(errorMessage)
        }
        if (!regexFn.test(nameOfCard)) {
            $("#errorNOC").text(errorMessage)
        }
        if (!regexPhone.test(phone)) {
            $("#errorPhone").text(errorMessage)
        }
        if (!regexEmail.test(email)) {
            $("#errorEmail").text(errorMessage)
        }
        for (let index = 0; index < cardNumber.length; index++) {
            if (cardNumber[index].length != 4) {
                $("#errorCardNumber").text(errorMessage);
                break;
            }

        }

    }
    $("#signIn").on("click", function (e) {
        e.preventDefault();
        validate()
    });
    $("#cardNumber").on("keydown", function () {
        var cardNumber = $('#cardNumber').val();
        var arr = cardNumber.split('-');
        if (arr[arr.length - 1].length == 4) {
            $("#cardNumber").val(cardNumber + '-')
        }
    });
});