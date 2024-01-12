const updateElement = (element, dark) => {
    if (dark) {
        element.classList.remove('is-dark')
    } else {
        element.classList.add('is-dark')
    }
}

const updateStyles = () => {
    const dark = getComputedStyle(document.body).backgroundColor === 'rgb(255, 255, 255)'
    document.querySelectorAll('.md-content p img').forEach(image => updateElement(image, dark))
}

document.querySelectorAll('form input.md-option').forEach((value) => {
    value.onchange = () => {
        updateStyles()
    }
})

updateStyles()