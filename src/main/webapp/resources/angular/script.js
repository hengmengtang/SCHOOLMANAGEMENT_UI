angular.module("app", ["chart.js"]).controller("BarCtrl", function ($scope,$http) {
	
	getList();
	getYear();
	getCourse();	
	getTotalStudentEachGen();
	$scope.gen_name=[];
	$scope.total_student=[];
	
	/*
	 get total student in generation
	*/
	function getList(){
		$http({
				url:'http://localhost:2222/api/generation/count-student-in-generation',
				method:'GET'
			}).then(function(response){
				$scope.list = response.data.DATA;
				//console.log($scope.gen_name);
				angular.forEach($scope.list,function(value,key){
					$scope.gen_name.push(value.GENERATION_NAME);	
					$scope.total_student.push(parseInt(value.TOTAL_STUDENT));
				}) 
				//console.log($scope.gen_name);
				//console.log($scope.total_student); 
			}, function(response){
				/* alert("error"); */
			});
	};
	
	/*
		get all course 
	*/
	$scope.course_name=[];
	function getCourse(){
		$http({
				url:'http://localhost:2222/api/course/find-all-course',
				method:'GET'
			}).then(function(response){
				$scope.list = response.data.DATA;
				angular.forEach($scope.list,function(value,key){
					$scope.course_name.push(value.COURSE_NAME);	
				}) 
				//console.log($scope.course_name);
			}, function(response){
				/* alert("error"); */
			});
	};
	/*
		get generation year
	*/
	$scope.year=[];
	function getYear(){
		$http({
				url:'http://localhost:2222/api/generation/generation-year',
				method:'GET'
			}).then(function(response){
				$scope.list = response.data.DATA;
				angular.forEach($scope.list,function(value,key){
					$scope.year.push(value.GENERATION_START_DATE);	
				}) 
				//console.log($scope.year);
			}, function(response){
				/* alert("error"); */
			});
	};
	/*
		get total student in each generations and each courses in those generation
	*/
	$scope.student_in_basic=[];
	$scope.student_in_advance=[];
	
	function getTotalStudentEachGen(){
		$http({
				url:'http://localhost:2222/api/generation/count-student-in-each-generation',
				method:'GET'
			}).then(function(response){
				$scope.list = response.data.DATA;
				angular.forEach($scope.list,function(value,key){
					if(value.COURSE_NAME=='Basic Course'){
						$scope.student_in_basic.push(parseInt(value.TOTAL_STUDENT));	
					}else{
						$scope.student_in_advance.push(parseInt(value.TOTAL_STUDENT));	
					}						
				}) 
				//console.log($scope.student_in_basic);
				//console.log($scope.student_in_advance);
			}, function(response){
				/* alert("error"); */
			});
	};

  $scope.labels = $scope.year;
  console.log($scope.labels);
  $scope.series = [$scope.gen_name,' Basic Course','Advance Course'];
  //console.log($scope.total_student);
  $scope.data = [
    $scope.total_student,
    $scope.student_in_basic,
    $scope.student_in_advance
  ];
  console.log( $scope.data );
});
       