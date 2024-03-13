import { Controller } from "@hotwired/stimulus"
import Sortable from "sortablejs"
import { FetchRequest } from '@rails/request.js'

export default class extends Controller {

  static values = {
    url: String,
    test: String
  }

  connect() {
    this.sortable = Sortable.create(this.element, {
      animation: 150,
      onEnd: this.end.bind(this)
    })
  }

  async end(event) {
    let post_id = this.element.dataset.postId
    let elements = Array.from(document.getElementsByClassName("js-element"))
    let dataset = JSON.stringify({
      elements: elements.map((element, index) => {
        return {id: element.dataset.id, position: index + 1 }
      })
    })
    let request = new FetchRequest('patch', `/posts/${post_id}/elements/change_position`, { body: dataset})
    let response = await request.perform()
  }

}