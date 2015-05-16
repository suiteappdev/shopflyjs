(function() {
  var myApp;

  myApp = angular.module("myApp", []);

  myApp.controller("myController", function($http, $scope) {});

  myApp.service("DataService", function() {
    return {
      pais: "colombia"
    };
  });

}).call(this);
