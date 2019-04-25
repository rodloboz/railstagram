require('stylesheets/application.scss');
require('turbolinks').start();
require('@rails/ujs').start();
// require('@rails/activestorage').start();

document.addEventListener('turbolinks:load', () => {
  console.log('Hello from webpacker!')
});
