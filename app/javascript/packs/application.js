require('stylesheets/application.scss');
require('@rails/ujs').start();
require('turbolinks').start();
// require('@rails/activestorage').start()
// require('channels')

import 'controllers';

document.addEventListener('turbolinks:load', () => {
  console.log('Hello from webpacker!');
});
