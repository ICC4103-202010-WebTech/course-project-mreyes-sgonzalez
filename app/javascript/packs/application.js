// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

(() => {
    document.addEventListener("turbolinks:load", () => {
        const links = document.querySelectorAll("#notice");
        links.forEach((element) => {
            element.addEventListener("ajax:success", () => {
                let notice = document.querySelector("#notice");
                let newnotice = document.createElement("div")
                newnotice.setAttribute("id", "notice")
                newnotice.innerHTML = `
                <div class="row ml-0 mt-3" role="alert">
                    <div id="notice" class="alert alert-success">Event deleted successfully.</div>
                </div>
                `;

                if (notice) {
                    let parent = notice.parentNode;
                    parent.replaceChild(newnotice, notice);
                }
                else {
                    let main_content = document.querySelector("#main_content");
                    main_content.insertBefore(newnotice, main_content.firstChild);
                }

                element.closest("tr").remove();
                window.setTimeout( () => newnotice.remove(), 3000);
            })
        })
    })
})()
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
