const addSelector = () => {
    const image = document.querySelector('.md-content p img')
    if (image != null) {
        const createOption = (label) => {
            let option = document.createElement('option')
            option.innerText = label
            return option
        }

        const select = document.createElement('select')
        select.onchange = (event) => {
            image.src = 'assets/l1-l2.png'
        }
        select.appendChild(createOption('Mid-Level'))
        select.appendChild(createOption('Senior'))
        image.parentNode.insertBefore(select, image.nextElementSibling)
    }
}

addSelector()