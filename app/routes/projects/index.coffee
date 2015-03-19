`import Ember from 'ember'`

ProjectsIndexRoute = Ember.Route.extend
  model: ->
    @store.find('project')

`export default ProjectsIndexRoute`
