angular.module("app", ["chart.js"]).controller("LineCtrl", function ($scope,$http) {

	$scope.month=[];
	$scope.subject=[];
	$scope.markJava=[];
	$scope.markWeb=[];
	$scope.markKorean=[];

	//watch until student was assigned value
	$scope.$watch('student',function(){
		getData();
		getMonth();
		
		function getData() {
			$http(
				{
					url : 'http://localhost:2222/api/monthly-result/student-result-each-month/' + $scope.student,
					method : 'POST'
				}).then(function(response) {
					$scope.student_name=response.data.DATA;
					angular.forEach($scope.student_name,function(value,key){
						if(value.SUBJECT_NAME=='Java'){
							$scope.markJava.push(value.MARK);
						}else if(value.SUBJECT_NAME=='Web'){
							$scope.markWeb.push(value.MARK);
						}else{
							$scope.markKorean.push(value.MARK);
						}
					});
			}, function(response) {

			})
		}
		
		function getMonth() {
			$http(
				{
					url : 'http://localhost:2222/api/monthly-result/get-month/' + $scope.student,
					method : 'POST'
				}).then(function(response) {
					$scope.monthly=response.data.DATA;
					angular.forEach($scope.monthly,function(value,key){
						$scope.month.push(value.MONTH);
					});
			}, function(response) {

			})
		}
		
	});
	
	$scope.labels = $scope.month; 
	$scope.series = $scope.subject;
	$scope.data = [$scope.markJava,$scope.markWeb,$scope.markKorean];
	console.log($scope.data);
	console.log($scope.labels);
	console.log($scope.series);
	
	$scope.colors = ['#C2185B', '#6A1B9A', '#0D47A1', '#FDB45C', '#949FB1', '#4D5360', '#00ADF9', '#DCDCDC', '#46BFBD', '#FDB45C', '#949FB1', '#4D5360'];
	$scope.onClick = function (points, evt) 
	{ 
		console.log(points, evt);
	};
	$scope.datasetOverride = [{ yAxisID: 'y-axis-1' }, { yAxisID: 'y-axis-2' }]; 
	$scope.options = 
	{
		scales: { yAxes: [
			{
				id: 'y-axis-1', type: 'linear', display: true, position: 'left'
			}, {
				id: 'y-axis-2', type: 'linear', display: true, position: 'right'
			} ]
		} 
	};
});