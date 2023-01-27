<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.item {
		border: 1px solid black;
		padding: 10px;
		margin: 10px 0;
		position: relative;
	}
	.MAIN_IMG_NORMAL {
		position: absolute;
		top: 10px;
		right: 10px;
		
		width: 250px;
		height: 250px;
		
		background-position: center center;
		background-size: auto 100%;
		
	}
</style>
</head>
<body>

<div id="root"></div>
<script src="${cpath }/resources/js/function.js"></script>
<script>
	async function loadHandler() {
		const root = document.getElementById('root')
		const dataList = await getDataList()
		console.log(dataList)
	}
	document.body.onload = loadHandler
	
</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
<script>
	/* const url = 'https://apis.data.go.kr/6260000/FestivalService/getFestivalKr?serviceKey=6KknNi1%2FVVor0lE%2BNkayvlM9arGgKYaX%2FRSxuWw9VBOdQctE9kIoBw38TL1ncQm0jf9B2F380TdvwchWAIPi3g%3D%3D&pageNo=1&numOfRows=20&resultType=json'
	fetch(url)
	.then(resp => resp.json())
	.then(json =>{
		 const arr = json.getFestivalKr.item.map(dto => {
			const ob = {}
			for(let key in dto) {
				if(dto[key] != '') {
					ob[key] = dto[key]
//					delete dto[key] 	// 빈문자열 삭제
				}
			}
			return ob
		})
		console.log(arr) 
		const arr2 = json.getFestivalKr.item.map(dto => {
			const ob = {}
			ob.GUGUN_NM = dto.GUGUN_NM
			ob.PLACE = dto.PLACE
			ob.MAIN_PLACE = dto.MAIN_PLACE	
			ob.ITEMCNTNTS = dto.ITEMCNTNTS
			ob.CNTCT_TEL = dto.CNTCT_TEL
			ob.MAIN_IMG_NORMAL = dto.MAIN_IMG_NORMAL
			return ob
		})
		console.log(json.getFestivalKr.item)
		console.log(arr2)
		
		arr2.forEach(dto => root.innerHTML += getHTMLfromDTO(dto))
		
		
		
		 arr2.forEach(dto => {
			const item = document.createElement('div')
			item.className = 'item'
			
			for(let key in dto) { 

				const div = document.createElement('div')
				div.className = key
				div.innerText = dto[key]
				item.appendChild(div)
			}
			const imgNormal = item.querySelector('.MAIN_IMG_NORMAL')
			imgNormal.style.backgroundImage = 'url(' + imgNormal.innerText + ')'
			imgNormal.innerText = ''
			root.appendChild(item) 
		}) 
	}) */
</script>


</body>
</html>