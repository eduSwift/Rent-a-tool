import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "profileEdit"]
  connect() {
  }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none")

  }
  edit() {
    this.profileEditTarget.classList.toggle("d-none")

  }
}
