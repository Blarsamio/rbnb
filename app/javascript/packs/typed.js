import Typed from 'typed.js';

// var options = {
//   strings: [' start today and find the best dev for your project', 'browse between everyone we have in stock'],
//   typeSpeed: 100
// };

// var typed = new Typed('.element', options);

const element = document.querySelector(".element")

if (element) {
  var options = {
    strings: [' start today and find the best dev for your project', 'browse between everyone we have in stock'],
    typeSpeed: 100
  };

  var typed = new Typed('.element', options);
}

const element2 = document.querySelectorAll(".element2")

if (element2) {
  const details = document.querySelectorAll(".about-main p")
  const strings = [details[0].innerText, details[1].innerText, details[2].innerText, details[3].innerText]
  var options2 = {
    strings: ['this is me', 'these are my details'],
    typeSpeed: 100,
    smartBackspace: false
  };
  var typed2 = new Typed('.element2', options2);
}


// Web Developer, expert in: @developer.language
//               <p class="font-italic mb-0">Lives in: <%= @developer.address %></p>
//               <p class="font-italic mb-0"><%= @developer.user.email %></p>
//               <p class="font-italic mb-0"><%= @developer.description
