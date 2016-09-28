angularApp = angular.module('angularApp',[
  'templates',
  'ngRoute',
  'ngResource',
])

angularApp.config([ '$routeProvider', '$locationProvider',
  ($routeProvider,$locationProvider)->
    $routeProvider
      .when('/',
        templateUrl: "angular-app/templates/main/index.html"
        controller: 'MainController'
      )
      .when('/chapter',
        templateUrl: "angular-app/templates/main/show.html"
        controller: 'MainController'
      )

    $locationProvider.html5Mode({
      enabled: false,
      rewriteLinks: false
    });
])
