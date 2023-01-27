function getHTMLfromDTO(dto) {
	let tag = ``
		tag += `<details class="item">`
			
		for(let key in dto) {
			if(key == 'TITLE') {
				tag += `<summary class="${key}">${dto[key]}</summary>`
			}
			else {
				tag += `<div class="${key}">${dto[key]}</div>`
			}
		}
		tag += `</details>`
		return tag
}

async function getDataList() {
	const url = 'https://apis.data.go.kr/6260000/FestivalService/getFestivalKr?serviceKey=6KknNi1%2FVVor0lE%2BNkayvlM9arGgKYaX%2FRSxuWw9VBOdQctE9kIoBw38TL1ncQm0jf9B2F380TdvwchWAIPi3g%3D%3D&pageNo=1&numOfRows=20&resultType=json'
	return awit fetch(url)
	.then(resp => resp.json())
	.then(json => {
		const arr = json.getFestivalKr.item
		return arr
	})
}