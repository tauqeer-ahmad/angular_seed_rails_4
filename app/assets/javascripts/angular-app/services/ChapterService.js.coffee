angular.module('angularApp').factory 'Chapter', [
  '$resource'
  ($resource) ->
    $resource 'api/chapters/:id', {},
      show:
        method: 'GET'
      update:
        method: 'PUT'
        params: {id: @id}
      delete:
        method: 'DELETE'
        params: {id: @id}
]
