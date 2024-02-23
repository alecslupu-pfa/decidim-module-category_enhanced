window.addEventListener("DOMContentLoaded", () => {

    document.querySelectorAll("input[data-label-preview=true]").forEach((element) => {
        element.addEventListener("change", (event) => {
            const label = document.querySelector(event.target.dataset.target);
            label.style[event.target.dataset.updates] = event.target.value
        })
    })

    document.querySelectorAll("input[data-text-copy=true]").forEach((element) => {
        element.addEventListener("change", (event) => {
            const target = document.querySelector(event.target.dataset.target);
            target.innerText = event.target.value;
        })
    });
})