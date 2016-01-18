<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="path/to/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" media="all" />
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
	<form action="">
		<div>
			<input type="text" id="from" name="from" />~ <input type="text"
				id="to" name="to" /> <input type="submit" value="조회"> <br>
		</div>
	</form>
	<div id="graph"></div>
	<script>
		var options = {
			'dataset' : {
				title : 'aaa',
				values : [ 10, 3, 3, 5, 5, 3, 3, 3, 3, 3 ],
				hrefs : [ 'http://nuli.navercorp.com//sharing/a11y#k1',
						'http://nuli.navercorp.com//sharing/a11y#k2',
						'http://nuli.navercorp.com//sharing/a11y#k3',
						'http://nuli.navercorp.com//sharing/a11y#k4',
						'http://nuli.navercorp.com//sharing/a11y#k5',
						'http://nuli.navercorp.com//sharing/a11y#k6',
						'http://nuli.navercorp.com//sharing/a11y#k7',
						'http://nuli.navercorp.com//sharing/a11y#k8',
						'http://nuli.navercorp.com//sharing/a11y#k9',
						'http://nuli.navercorp.com//sharing/a11y#k10'

				],
				colorset : [ '#00996B', '#2BC8C9', "#666666", '#B27E95',
						'#E8034A', '#FF8598', '#FFC0A9', '#9BD3F4', '#DAEAF1',
						'#E8F4CB', '#47B7CC' ],
				fields : [ '문화생활', '건강의료', '주거관리', '기타', '카페', '식사', '통신',
						'의류', '미용', '자기계발' ],
			},
			'donut_width' : 40,
			'core_circle_radius' : 60,
			'chartDiv' : 'graph',
			'chartType' : 'donut',
			'chartSize' : {
				width : 700,
				height : 400
			}
		};
		Nwagon.chart(options);
	</script>
	<div>Top 3</div>
	<div>1.</div>
	<div>2.</div>
	<div>3.</div>
</body>
</html>