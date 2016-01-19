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
<script src="http://echarts.baidu.com/build/dist/echarts.js"></script>
<script type="text/javascript">
	require.config({
		paths : {
			echarts : 'http://echarts.baidu.com/build/dist'
		}
	});
	require([ 'echarts', 'echarts/chart/bar' ],
			function(ec) {
				var myChart = ec.init(document.getElementById('graph'));

				option = {
					title : {
						x : 'center',
						text : '차트',
						subtext : '최근 소비 추이',
					},
					tooltip : {
						trigger : 'item'
					},
					calculable : true,
					grid : {
						borderWidth : 0,
						y : 80,
						y2 : 60
					},
					xAxis : [ {
						type : 'category',
						show : false,
						data : [ '교통비', '미용', '주거관리', '카페', '식사', '통신', '문화생활',
								'건강의료', '의류', '자기계발', '기타' ]
					} ],
					yAxis : [ {
						type : 'value',
						show : false
					} ],
					series : [ {
						name : '차트',
						type : 'bar',
						itemStyle : {
							normal : {
								color : function(params) {
									// build a color map as your need.
									var colorList = [ '#C1232B', '#B5C334',
											'#FCCE10', '#E87C25', '#27727B',
											'#FE8463', '#9BCA63', '#FAD860',
											'#F3A43B', '#60C0DD', '#D7504B',
											'#C6E579', '#F4E001', '#F0805A',
											'#26C0C0' ];
									return colorList[params.dataIndex]
								},
								label : {
									show : true,
									position : 'top',
									formatter : '{b}\n{c}'
								}
							}
						},
						data : [ 12, 21, 10, 4, 12, 5, 6, 5, 25, 23, 7 ],
						markPoint : {
							tooltip : {
								trigger : 'item',
								backgroundColor : 'rgba(0,0,0,0)',
								formatter : function(params) {
									return '<img src="'
											+ params.data.symbol.replace(
													'image://', '') + '"/>';
								}
							},
							data : [ {
								xAxis : 0,
								y : 350,
								name : 'Line',
								symbolSize : 20,
								symbol : 'image://../images/icon/Ground Transportation-96.png'
							}, {
								xAxis : 1,
								y : 350,
								name : 'Bar',
								symbolSize : 20,
								symbol : 'image://../images/icon/Hair Brush-96.png'
							}, {
								xAxis : 2,
								y : 350,
								name : 'Scatter',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 3,
								y : 350,
								name : 'K',
								symbolSize : 20,
								symbol : 'image://../images/icon/Cafe-96.png'
							}, {
								xAxis : 4,
								y : 350,
								name : 'Pie',
								symbolSize : 20,
								symbol : 'image://../images/icon/Cutlery-96.png'
							}, {
								xAxis : 5,
								y : 350,
								name : 'Radar',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 6,
								y : 350,
								name : 'Chord',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 7,
								y : 350,
								name : 'Force',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 8,
								y : 350,
								name : 'Map',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 9,
								y : 350,
								name : 'Gauge',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, {
								xAxis : 10,
								y : 350,
								name : 'Funnel',
								symbolSize : 20,
								symbol : 'image://../images/icon/Tent-96.png'
							}, ]
						}
					} ]
				};
				myChart.setOption(option);
			});
</script>
</head>
<body>
	<!-- <div id="chart71"></div>
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
				values : [ [ 56, 10, 56, 10, 56, 10, 56, 10, 56, 10 ],
						[ 58, 20, 11, 23, 45, 67, 8, 64, 2, 1 ],
						[ 60, 30, 22, 33, 44, 55, 66, 77, 88, 99 ],
						[ 58, 40, 22, 33, 44, 55, 66, 77, 88, 99 ],
						[ 85, 50, 11, 22, 33, 44, 55, 66, 77, 88 ],
						[ 86, 60, 34, 55, 12, 56, 78, 89, 66, 43 ],
						[ 82, 70, 11, 33, 23, 23, 68, 90, 98, 65 ] ],
				colorset : [ '#00996B', '#2BC8C9', "#666666", '#B27E95',
						'#E8034A', '#FF8598', '#FFC0A9', '#9BD3F4', '#DAEAF1',
						'#E8F4CB', '#47B7CC' ],
				fields : [ '교통', '카페', 'aa', '123', '23', '456', '65', '1222',
						'123', '000' ]
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
 -->
	<div id="graph" style="height: 400px; width: 600px;"></div>
</body>
</html>