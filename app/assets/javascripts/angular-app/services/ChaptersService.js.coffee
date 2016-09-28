angular.module('angularApp').factory 'Chapters', [
  '$resource'
  ($resource) ->
    $resource 'api/chapters', {},
      query:
        method: 'GET'
        isArray: true
      create:
        method: 'POST'
]
