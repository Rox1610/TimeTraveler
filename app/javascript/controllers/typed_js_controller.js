import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Do not be stuck by exploring the world, explore also the time!"],
      typeSpeed: 100,
      backDelay: 4000,
      loop: true
    })
  }
}
