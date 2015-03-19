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


##
# As a user,
# I should be able to see a list of all projects,
# so I can choose my current workspace project.
#
# Scenario: Display list of projects
#   When I navigate to the projects list
#   Then I should see the list of projects.
test 'Project List', (assert) ->
  visit '/projects'
  andThen ->
    listOfProjects = Em.$('li.project-item').length
    assert.equal(listOfProjects, 3, 'should display list of projects')
