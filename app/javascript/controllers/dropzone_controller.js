import { Controller } from "@hotwired/stimulus"
import Dropzone from "dropzone"
import { post } from "@rails/request.js"

// Connects to data-controller="dropzone"
export default class extends Controller {
  static targets = [ "input" ]
  static values = { url: String }

  connect() {
    this.inputTarget.disable = true
    this.inputTarget.style.display = "none"

    const dropzone = new Dropzone(this.element, {
      url: '/',
      maxFiles: '30',
      maxFilesize: '30',
      autoQueue: false,
      clickable: true,
      maxThumbnailFilesize: '20',
      addRemoveLinks: true,
    })  

    dropzone.on("addedfile", file => {
      setTimeout(async () => {
        if (file.accepted) {
          const formData = new FormData()
          formData.append('contract[fichier]', file)
          formData.append('contract[name]', file.name)
          const resp = await post(this.urlValue, {body: formData})
          if (resp.ok) {
            dropzone.removeFile(file)
          }
        }  
      }, 500)
    })
    
  }

}
