import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["togglableElement", "profileEdit", "bookingElement", "toolElement", "bookingEdit"]
  static value = {tool: String}
  connect() {
  }
  fire() {
    this.togglableElementTarget.classList.toggle("d-none")

  }
  edit() {
    this.profileEditTarget.classList.toggle("d-none")

  }
  booking(tool){
    // console.log(this.toolValue);
    // const url = tool.currentTarget.dataset.toolUrl;
    // console.log(url);
    // window.open(url, "", "popup")
    this.bookingElementTarget.classList.toggle("d-none")

  }
  tool(){
    this.toolElementTarget.classList.toggle("d-none")
  }

  editBooking(){
    this.bookingEditTarget.classList.toggle("d-none")
  }
}
