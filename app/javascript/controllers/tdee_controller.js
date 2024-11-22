import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tdee"
export default class extends Controller {

  static targets = ["total", "weight", "height", "age", "activity"]

  connect() {
    this.totalTarget.value = 0
  }

  calculate() {
    if (this.weightTarget.value && this.heightTarget.value && this.ageTarget.value
      && this.activityTarget.value) {
      this.totalTarget.value = Math.round(this.activityTarget.value * (66.47 + (13.75 * this.weightTarget.value) + (5 * this.heightTarget.value) - (6.8 * this.ageTarget.value)))
    }

  }
}
