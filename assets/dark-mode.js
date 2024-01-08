const updateElement = (element, dark) => {
    if (dark) {
        element.classList.remove('is-dark')
    } else {
        element.classList.add('is-dark')
    }
}

const updateStyles = () => {
    const iframe = document.getElementById('stairs-chart')
    const images = document.querySelectorAll('.md-content p img')
    const dark = getComputedStyle(document.body).backgroundColor === 'rgb(255, 255, 255)'
    if (iframe !== null) {
        updateElement(iframe, dark)
    }
    if (images !== null) {
        images.forEach(image => updateElement(image, dark))
    }
}

document.querySelectorAll('form input.md-option').forEach((value) => {
    value.onchange = () => {
        updateStyles()
    }
})

updateStyles()