`import DS from 'ember-data'`

ApplicationAdapter = DS.RESTAdapter.extend
  #host: 'http://localhost:3000'
  namespace: 'api/v1'

`export default ApplicationAdapter`
