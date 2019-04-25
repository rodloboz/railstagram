import 'bootstrap';
import Turbolinks from 'turbolinks';
import Rails from 'rails-ujs';

const turbolinks = Turbolinks.start();
const rails = Rails.start();

document.addEventListener('turbolinks:load', () => {
  console.log('Hello from webpacker!')
});
