`import DS from 'ember-data'`

attr = DS.attr

Project = DS.Model.extend
  name: attr('string')

`export default Project`
