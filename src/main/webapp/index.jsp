<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
* {
	margin: 0;
	padding: 0;
}

div {
	padding: 0px;
	overflow: hidden;
	height: auto;
}

.hgroup {
	padding: 20px;
	background-color: #e9e9e9;
}

.hgroup h1 {
	font-family: Tahoma;
}

.hgroup p {
	margin: 10px 0;
	font-size: 10px
}

h2 {
	margin: 0;
	padding: 20px;
	border: 1px solid #000;
	background-color: #f9f9f9;
	border-width: 1px 0;
	font-family: Tahoma;
}
</style>

<link rel='stylesheet'
	href='${pageContext.request.contextPath}/resources/Nwagon/Nwagon.css'
	type='text/css'>
<script
	src='${pageContext.request.contextPath}/resources/Nwagon/Nwagon.js'></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="Nwagon1"></div>
	<script>
		var options = {
			'dataset' : {
				title : 'Web accessibility status',
				values : [ 10, 3, 3, 5, 5 ],
				colorset : [ '#2EB400', '#2BC8C9', "#666666", '#f09a93',
						'#f09a93' ],
				fields : [ '교통', '음료', '술', '치킨', '밥' ],
			},
			'donut_width' : 85,
			'core_circle_radius' : 0,
			'chartDiv' : 'Nwagon1',
			'chartType' : 'pie',
			'chartSize' : {
				width : 700,
				height : 400
			}
		};
		Nwagon.chart(options);
	</script>
	<div id="chart7"></div>
	<script>
		var options = {
			'legend' : {
				names : [ '08-12', '08-19', '08-26', '09-02', '09-09', '09-16',
						'9-23' ]
			},
			'dataset' : {
				title : 'Playing time per day',
				values : [ [ 77, 10, 66 ], [ 76, 20, 66 ], [ 49, 10, 45 ],
						[ 58, 10, 76 ], [ 48, 10, 76 ], [ 56, 20, 83 ],
						[ 56, 10, 83 ] ],
				colorset : [ '#DC143C', '#FF8C00', '#2EB400' ],
				fields : [ '교통', '식사', '미용' ]
			},
			'chartDiv' : 'chart7',
			'chartType' : 'line',
			'leftOffsetValue' : 50,
			'bottomOffsetValue' : 60,
			'chartSize' : {
				width : 700,
				height : 300
			},
			'minValue' : 10,
			'maxValue' : 100,
			'increment' : 10
		};
		Nwagon.chart(options);
	</script>

</body>
</html>