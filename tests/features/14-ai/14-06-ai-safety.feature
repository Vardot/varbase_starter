# @wip: the Varbase AI stack (a varbase_ai_* recipe) is not applied by Varbase Starter, so the admin pages this checks are absent on the
# installed Starter site and the scenario cannot pass. CI runs --tags
# "not @wip". Re-enable when the recipe is added to Varbase Starter.
@wip @regression @exploratory @any @ai
Feature: Varbase AI Recipe - AI Safety (logging + observability)
      As a webmaster
      I want this Varbase AI recipe to deliver its admin surface and behaviour
      So that the AI feature keeps working after install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @ai @recipes @local @development @staging @production
  Scenario: AI logging and observability are available
     When I go to "/admin/config/ai/safety-compliance"
      And wait
      And I wait for the text "Safety & Compliance" to appear
     Then I should see "Safety & Compliance"
     When I go to "/admin/config/ai/logging"
      And wait
      And I wait for the text "AI Logging" to appear
     Then I should see "AI Logging"
     When I go to "/admin/config/ai/observability"
      And wait
      And I wait for the text "AI Observability Settings" to appear
     Then I should see "AI Observability Settings"
