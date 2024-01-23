import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    setInterval(() => {
      this.element.reload()
    }, 500)
  }
}