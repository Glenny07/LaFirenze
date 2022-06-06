$(document).ready(function(){
            $('#staticBackdrop').modal('show');
        });

// Animation on-scroll
AOS.init({
    offset: 300,
    duration: 2000,
});
// BACK TO TOP BUTTON
const showOnPx = 100; /*Button reveals when it reach the 100 pixels of the screen*/
const backToTopButton = document.querySelector(".back-to-top");
const scrollContainer = () => {
    return document.documentElement || document.body;
};
document.addEventListener("scroll", () => {
    if (scrollContainer().scrollTop > showOnPx) {
        backToTopButton.classList.remove("hidden");
    } else {
        backToTopButton.classList.add("hidden");
    }
});
const goToTop = () => {
    document.body.scrollIntoView({
        behavior: "smooth",
    });
};
backToTopButton.addEventListener("click", goToTop);

// FORM VALIDATION
(function () {
    'use strict';

    var forms = document.querySelectorAll('.needs-validation');

    Array.prototype.slice.call(forms)
        .forEach(function (form) {
            form.addEventListener('submit', function (event) {
                if (!form.checkValidity()) {
                    event.preventDefault();
                    event.stopPropagation();
                }

                form.classList.add('was-validated')
            }, false)
        })
})()

// Date picker js
$(function () {

    var from_$input = $('#input_from').pickadate(),
        from_picker = from_$input.pickadate('picker')

    var to_$input = $('#input_to').pickadate(),
        to_picker = to_$input.pickadate('picker')


    // Check if there’s a “from” or “to” date to start with.
    if (from_picker.get('value')) {
        to_picker.set('min', from_picker.get('select'))
    }
    if (to_picker.get('value')) {
        from_picker.set('max', to_picker.get('select'))
    }

    // When something is selected, update the “from” and “to” limits.
    from_picker.on('set', function (event) {
        if (event.select) {
            to_picker.set('min', from_picker.get('select'))
        }
        else if ('clear' in event) {
            to_picker.set('min', false)
        }
    })
    to_picker.on('set', function (event) {
        if (event.select) {
            from_picker.set('max', to_picker.get('select'))
        }
        else if ('clear' in event) {
            from_picker.set('max', false)
        }
    })

});