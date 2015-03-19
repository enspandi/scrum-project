`import Ember from 'ember'`
`import { module, test } from 'qunit'`
`import startApp from '../helpers/start-app'`

application = null

module 'Acceptance: Projects',
  beforeEach: ->
    application = startApp()
    return

  afterEach: ->
    Ember.run application, 'destroy'


PROJECTS     = 'a.list-group-item'
LAST_PROJECT = 'a.list-group-item:last'
ALERTS       = 'div.alert'

test 'Project list', ->
  visit '/projects'
  andThen ->
    equal(find(PROJECTS).length, 3, 'A user is able to see a list of projects.')

test 'Add a new project when the new project is valid', ->
  visit '/projects'
  click('.js-create-project')
  andThen ->
    fillIn('#inputName', 'My New Startup')
    click('.js-save-project')
    andThen ->
      equal(find(LAST_PROJECT).text(), 'My New Startup', 'New project with name: "My New Startup".')
      equal(find(PROJECTS).length, 4, 'Project count is now 4.')
      equal(find(ALERTS).length, 0, 'No alert message is shown.')
