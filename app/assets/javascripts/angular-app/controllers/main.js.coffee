MainController = (Chapters, Chapter) ->
  vm = this

  vm.chapters = Chapters.query()
  vm.chapter = {}

  CreateChapter = ->
    console.log Chapter.get({id: 1})
    Chapters.create {chapter: vm.chapter}
    vm.chapters.push vm.chapter
    vm.chapter = {}

  vm.CreateChapter = CreateChapter


angular.module('angularApp').controller 'MainController', MainController
MainController.$inject = [
  'Chapters'
  'Chapter'
]
