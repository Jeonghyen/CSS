<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/3808a8762d.js" crossorigin="anonymous"></script>

<style>
	table, th, td{
		
		border: 1px solid grey;
		border-collapse: collapse;
	
	}
	
	table{
		 
		 width: 800px;

	}
	
	th {
		width: 100px;
		height: 50px;
		padding: 10px;
	}
	
	#bd{
		padding: 10px;
		border: 1px solid grey;
	}

</style>
</head>
<body>

	<form method="POST" action="ex11_ok.jsp">
		<table>
			<tr>
				<th>너비(px)</th>
				<td><input type="text" name="width" /></td>			
			</tr>
			<tr>
				<th>높이(px)</th>
				<td><input type="text" name="height" /></td>			
			</tr>
			<tr>
				<th>텍스트</th>
				<td><input type="text" name="txt" /></td>			
			</tr>
			<tr>
				<th>배경색</th>
				<td><input type="color" name="bcolor" value="#ffffff" /></td>			
			</tr>
			<tr>
				<th>글자색</th>
				<td><input type="color" name="fcolor" /></td>			
			</tr>
			<tr>
				<th>글자 크기(px)</th>
				<td><input type="text" name="fsize" /></td>			
			</tr>
			<tr>
				<th>버튼 개수(ea)</th>
				<td><input type="text" name="num" /></td>			
			</tr>
			<tr>
				<th>버튼 간격</th>
				<td>
				좌우간격: <input type="range"  name="mside" min="0" max="100" value="0"/><br>
				상하 간격: <input type="range" name="mtop" min="0" max="100" value="0"/><br>				
				</td>			
			</tr>
			<tr>
				<th>아이콘</th>
				<td>
					<label>
					<input type="radio" name="emo" value="" />없음
					</label>
					<label>
					<input type="radio" name="emo" value="fa-solid fa-apple-whole"/>
					<i class="fa-solid fa-apple-whole"></i>
					</label>
					<label><input type="radio" name="emo" value="fa-solid fa-leaf" />
					<i class="fa-solid fa-leaf"></i>
					</label>
					<label>
					<input type="radio" name="emo" value="fa-solid fa-cookie"/>
					<i class="fa-solid fa-cookie"></i>
					</label>
					<label>
					<input type="radio" name="emo" value="fa-solid fa-cake-candles""/>
					<i class="fa-solid fa-cake-candles"></i>
					</label>
				</td>			
			</tr>
			<tr>
				<th>테두리</th>
				<td>
					<select name="sborder" id="sborder">
						<option value="1">보이기</option>
						<option value="2">숨기기</option>
						
					</select>
						<div id="bd" >
							두께(px) : <input type="text" name="width2"/><br>
							색상 : <input type="color" name="color2"/><br>
							스타일 : <select name="style1">
									<option value="solid">실선</option>
									<option value="dashed">쇄선</option>
									<option value="dotted">점선</option>
									</select><br>
							모서리(px) : <input type="text" name="radius"/><br>
						</div>
				</td>			
			</tr>
		</table>
		
		
		<input type="submit" value="만들기" />
	</form>
	
	<script>
		
		const sb = document.getElementById('sborder');
		const bd = document.getElementById('bd');
		
		//bd.style.display = 'none';
		
		sb.onclick = function(){
			
			//alert(sb.selectedIndex);
				//lert(sb.value);

			if(sb.value == 1){
				
				bd.style.display = 'block';
				
				
			}else{
				//$('#bd').css('dispaly', 'none');
				bd.style.display = 'none';
			}
			
		}
	
	</script>	
	
</body>
</html>






