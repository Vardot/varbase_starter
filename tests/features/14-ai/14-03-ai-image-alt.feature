# @wip: the Varbase AI stack (a varbase_ai_* recipe) is not applied by Varbase Starter, so the admin pages this checks are absent on the
# installed Starter site and the scenario cannot pass. CI runs --tags
# "not @wip". Re-enable when the recipe is added to Varbase Starter.
@wip @regression @any @ai
Feature: Varbase AI Recipe - AI Image Alt (automatic alt text)
      As a webmaster
      I want this Varbase AI recipe to deliver its admin surface and behaviour
      So that the AI feature keeps working after install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @ai @recipes @local @development @staging @production
  Scenario: The automatic image alt-text settings are available
     When I go to "/admin/config/ai/ai_image_alt_text"
      And wait
      And I wait for the text "AI Image Alt Text Settings" to appear
     Then I should see "AI Image Alt Text Settings"
