const levels = {
    "l1": "Entry-level",
    "l2": "Mid-level",
    "l3": "Senior",
    "l4": "Staff",
    "l5": "Senior Staff",
}

// extract page level based on the current path
const currentLevel = document.location.pathname.replace(/\/$/, "").split("/").pop()
const isALevelPage = levels[currentLevel] != null

const addCompareToAnotherLevelSelector = () => {
    if (isALevelPage) {
        const createOption = (label, compareTo) => {
            let option = document.createElement("option")
            option.innerText = `Compare to ${label}`
            option.dataImage = compareTo != null ? `../assets/${currentLevel}-${compareTo}.png` : `../assets/${currentLevel}.png`
            return option
        }

        const image = document.querySelector(".md-content p img")

        const select = document.createElement("select")
        select.classList.add("md-select")
        select.onchange = (event) => {
            // get selected option on select element
            const selectedOption = event.target.options[event.target.selectedIndex]
            image.src = selectedOption.dataImage
        }
        select.appendChild(createOption("..."))

        for (const [level, name] of Object.entries(levels)) {
            if (level !== currentLevel) {
                select.appendChild(createOption(name, level))
            }
        }

        image.parentNode.insertBefore(select, image.nextElementSibling)
    }
}

addCompareToAnotherLevelSelector()