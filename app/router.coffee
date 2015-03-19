`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'projects', ->
    @route 'new'
  
  @resource 'project', { path: '/project/:project_id' }




  



`export default Router;`
