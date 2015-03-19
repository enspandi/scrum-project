`import DS from 'ember-data'`

attr = DS.attr

Project = DS.Model.extend
  name: attr('string')

  firstLetter: ( ->
    name = @get('name')
    name.charAt(0) if name?
  ).property('name')

`export default Project`
