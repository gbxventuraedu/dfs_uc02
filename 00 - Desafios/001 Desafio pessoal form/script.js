const form = document.getElementById('neonForm');
form.addEventListener('submit', function(event) {
    event.preventDefault();
    alert('Form submitted!');
    form.reset();
});