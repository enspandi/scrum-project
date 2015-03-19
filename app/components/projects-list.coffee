`import Ember from 'ember'`

ProjectsListComponent = Ember.Component.extend
  hasProjects: Em.computed.gt('projects.length', 0)

`export default ProjectsListComponent`
