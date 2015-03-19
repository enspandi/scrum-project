`import Ember from 'ember'`

FormCreateProjectComponent = Ember.Component.extend
  projectName: null

  actions:
    create: ->
      @sendAction 'create',
        name: @get('projectName')
      @set('projectName', null)

`export default FormCreateProjectComponent`
