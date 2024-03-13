// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "trix"
import "@rails/actiontext"

document.addEventListener('turbo:load', () => {
  document.addEventListener('click', (event) => {
    let element = event.target.closest('.paragraph-content')
    if (!element) return

    element.classList.add('js-d-none')
    element.nextElementSibling.classList.remove('js-d-none')
  })

  document.addEventListener('click', (event) => {
    if(!event.target.matches('.cancel')) return
    event.preventDefault()
    let element = event.target.closest('.form-content')

    element.classList.add('js-d-none')
    element.previousElementSibling.classList.remove('js-d-none')
  })
})
