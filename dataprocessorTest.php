<!-- -----BASE CODE FOR THE TRACKERS----- -->
<!-- -----BASE CODE FOR THE TRACKERS----- -->
<!-- -----BASE CODE FOR THE TRACKERS----- -->

<?php
        include("dashboard.php");
?>
<head>
    <style>
      .addTaskBtn{
          background-color: #00d200;
          color:white;
      }
    </style>
</head>
<body ng-app="taskFieldsApp" >
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Daily Tracker
        <small>Role in the Company (Im an OJT)</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Your Page Content Here -->
      <div ng-controller="taskFieldsController">
        <form action="#" method="GET">
          <div id="taskHolderOjt" class="container">
              <div class="jumbotron">
                  <p style="font-size:30px;">Tasks for today <md-button id="addTaskBtn" class="btn md-raised" ng-click="addNewTask()" style=" background-color: #00d200; color:white;">Add Task <span class="fa fa-plus"></span></md-button></p>
                  <div class="task-group">
                  <fieldset data-ng-repeat = "field in statusSet.status track by $index">
                    <md-card>
                        <md-card-title>
                            <md-card-title-text>
                                <span class="md-headline" style="30px">Task <md-button id="addTaskBtn" class="btn md-raised" ng-click="removeTask($index)" style=" background-color: #950000; color:white; float:right;">Delete Task <span class="fa fa-trash"></span></md-button></span>
                                <!--<span class="md-subhead">Tell us a little about you.</span>-->
                            </md-card-title-text>
                            </md-card-title>
                        <md-card-content>
                            <md-input-container>
                                <label style="color:grey; font-size:15px">Status</label>
                                <input type="text" style="font-size:15px;" name="statusList" ng-model="statusSet.status[$index]" required>
                            </md-input-container>
                            <textarea ng-model="taskDescSet.taskDesc[$index]" placeholder="Task Description 

    Ex: I did this today..." rows="15" name="taskDescList" id="comment_text" cols="20" class="area ui-autocomplete-input" autocomplete="off" role="textbox" aria-autocomplete="list" aria-haspopup="true" maxlength="2500" style="border:solid 1px lightgrey; margin-left:5%;" required></textarea>
                        </md-card-content>

                     </md-card>
                  </fieldset>
                  </div>
                  <div class="footer" align="center">
                        <md-button ng-show="show" id="submitBtn" type="submit" class=" md-raised md-primary" ng-model="submitBtn" style="width:60%; margin-right:10%">Submit</md-button>
                  </div>
              </div>
          </div>
        </form>
      </div>
      </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      Marketing Department Daily Tracker
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; <span id="year"></span> <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                  <span class="label label-danger pull-right">70%</span>
                </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->
<script>
$(document).ready(function(){
    document.getElementById("year").innerHTML = new Date().getFullYear();
    $('#homeTab').removeClass('active');
    $('#trackerTab').addClass('active');
});
</script>

<script>
    var app = angular.module('taskFieldsApp', ['ngMaterial']);
    var x=0;
    app.config(['$qProvider', function ($qProvider) {
      $qProvider.errorOnUnhandledRejections(false);
    }]);
    app.controller('taskFieldsController', function($scope, $http, $mdDialog) {
        $scope.data = {};
        $scope.items= [];
        $scope.selected = [];
        $scope.init = function () {
          $scope.items.splice(0, $scope.items.length);
          $http.get("queries/getMyDailyTrackerTodayDataProcessorTracker.php").then(function (response) {
            $scope.today = response.data.records;
            $scope.deleteList = [];
            for($x=0; $x<$scope.today.length; $x++){
              $scope.deleteList[$x] = false;
              $scope.items.push($scope.today[$x].DataProcessorId);
            }
          });  
        };
        $scope.taskDescSet = {taskDesc: []};
        $scope.statusSet = {status: []};

        $scope.taskDescSet.taskDesc = [];
        $scope.statusSet.status = [];
        $scope.addNewTask = function() {
          $scope.taskDescSet.taskDesc.push('');
          $scope.statusSet.status.push('');
          x++;
          if(x>0){
            $scope.show = true;
          }
        };

        $scope.removeTask = function(z) {
            $scope.taskDescSet.taskDesc.splice(z, 1);
            $scope.statusSet.status.splice(z, 1);
            if(x>0){
              x--;
            }
            if(x==0){
              $scope.show = false;
            }
        };
    });

</script>