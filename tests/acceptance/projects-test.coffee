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


PROJECTS     = 'li.project-item'
LAST_PROJECT = 'li.project-item:last'
ALERTS       = 'span.alert'

test 'Project list', ->
  visit '/projects'
  andThen ->
    equal(find(PROJECTS).length, 3, 'A user is able to see a list of projects.')

test 'Add a new project when the new project is valid', ->
  visit '/projects'
  click('button.btn-create')
  andThen ->
    fillIn('#inputName', 'My New Startup')
    click('button.btn-save')
    andThen ->
      equal(find(LAST_PROJECT).text(), 'My New Startup', 'New project with name: "My New Startup".')
      equal(find(PROJECTS).length, 4, 'Project count is now 4.')
      equal(find(ALERTS).length, 0, 'No alert message is shown.')
    ###
    andThen ->
      fillIn('input.form-po', 'productowner@startupxy.com')
      fillIn('input.form-sm', 'scrummaster@startupxy.com')
      fillIn('input.form-dev1', 'dev1@startupxy.com')
      fillIn('input.form-dev2', 'dev2@startupxy.com')
      fillIn('input.form-dev3', 'dev3@startupxy.com')
      click('button.btn-add')
      andThen ->
        fillIn('input.form-dev4', 'dev4@startupxy.com')
        click('button.btn-save')
        andThen ->
    ###

test 'Add a new project when the new project is valid', ->
  visit '/projects'
  click('button.btn-create')
  andThen ->
    fillIn('#inputName', '')
    click('button.btn-save')
    andThen ->
      equal(find(PROJECTS).length, 3, 'Project count is still 3.')
      equal(find(ALERTS).length, 1, 'An alert is shown.')

#test 'Add a new project when the new project is valid', ->
  #Start a New Project!