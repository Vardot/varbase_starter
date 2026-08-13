# @wip: varbase_i18n_base is not applied by Varbase Starter, so the admin pages this checks are absent on the
# installed Starter site and the scenario cannot pass. CI runs --tags
# "not @wip". Re-enable when the recipe is added to Varbase Starter.
@wip @regression @any @i18n
Feature: Varbase Recipe - i18n Base (languages + translation)
      As a webmaster
      I want this Varbase recipe to deliver its user-facing behaviour
      So that it keeps working after install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @recipes @local @development @staging @production
  Scenario: Language admin and content translation are available
     When I go to "/admin/config/regional/language"
      And wait
      And I wait for the text "Languages" to appear
     Then I should see "Languages"
     When I go to "/admin/config/regional/content-language"
      And wait
      And I wait for the text "Custom language settings" to appear
     Then I should see "Custom language settings"
