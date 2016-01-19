<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
	type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"
	type="text/javascript"></script>
<link rel='stylesheet'
	href='${pageContext.request.contextPath}/resources/Nwagon/Nwagon.css'
	type='text/css'>
<script
	src='${pageContext.request.contextPath}/resources/Nwagon/Nwagon.js'></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="chart71"></div>
	<script>
		console.log("test");

		var dt = [];

		for (var i = 0; i < 7; i++) {
			dt[i] = new Date();
			dt[i].setDate(dt[i].getDate() - i);
			dt[i] = dt[i].toLocaleDateString();
		}

		var options = {
			'legend' : {
				names : [ dt[6], dt[5], dt[4], dt[3], dt[2], dt[1], dt[0] ]
			},
			'dataset' : {
				title : 'Playing time per day',
				values : [ [ 56 ], [ 58 ], [ 60 ], [ 58 ], [ 85 ], [ 86 ],
						[ 82 ] ],
				colorset : [ '#0072b2' ],
				fields : [ '교통' ]
			},
			'chartDiv' : 'chart71',
			'chartType' : 'line',
			'leftOffsetValue' : 40,
			'bottomOffsetValue' : 60,
			'chartSize' : {
				width : 700,
				height : 300
			},
			'minValue' : 0,
			'maxValue' : 100,
			'increment' : 20,
			'isGuideLineNeeded' : true
		//default set to false
		};
		Nwagon.chart(options);
	</script>
</body>
</html>