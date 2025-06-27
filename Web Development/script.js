let menu = document.querySelector('#menu-icon');
let navbar = document.querySelector('.navbar');

menu.onclick = () => {
    menu.classList.toggle('bx-x');
    navbar.classList.toggle('active');
}

window.onscroll = () => {
    menu.classList.remove('bx-x');
    navbar.classList.remove('active');
}

const typed = new Typed('.multiple-text', {
    strings: ['Backend Developer'],
    typeSpeed: 80,
    backSpeed: 80,
    backDelay: 1200,
    loop: true

});




function splitIntoWords(selector) {
    document.querySelectorAll(selector).forEach(element => {
        const words = element.innerText.trim().split(/\s+/);
        element.innerHTML = words.map(word => `<span class="word">${word} </span>`).join('');
    });
}
// splitIntoWords('.animated-title');
// splitIntoWords('.animated-paragraph');
splitIntoWords('.animated-title');
splitIntoWords('.animated-paragraph');
