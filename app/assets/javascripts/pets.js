$( document ).on('turbolinks:load', function() {

  if ($('div').data('controller')=="pets")
    $('input[type="file"]').change(load);

});

const load = (input) => {
    const reader = new FileReader();
    reader.readAsDataURL(input.target.files[0]);
    reader.onload = () => displayImage(reader.result);
}

const displayImage = file => {
  document.getElementsByClassName('card-img-top')[0].src = file;

}
