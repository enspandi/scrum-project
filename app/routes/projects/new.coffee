`import Ember from 'ember'`

ProjectsNewRoute = Ember.Route.extend

  transitionToProjects: ->
    @transitionTo('projects.index')

  failure: (errorXhr) ->
    error = errorXhr.errorThrown
    @controllerFor("application")
      .set('alertMessage', error.message) if error?

  actions:
    createProject: (properties) ->
      project = @store.createRecord('project', properties)
      project.save()
        .then(@transitionToProjects.bind(@))
        .catch(@failure.bind(@))

`export default ProjectsNewRoute`
