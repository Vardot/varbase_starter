@regression @any @i18n
Feature: Website Base Requirements - Website Languages - Internationalization
      As a site admin user
      I want to be able to check the language configuration
      So that I can manage content in multiple languages.

  # @wip: the language + content_translation modules are not enabled on
  #   Varbase Starter (no varbase_i18n_base recipe), so this page is absent.
  @wip @check @local @development @staging @production
  Scenario: Check if the language configuration page is accessible
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/language"
      And wait
     Then I should see "Languages"

  # @wip: the language + content_translation modules are not enabled on
  #   Varbase Starter (no varbase_i18n_base recipe), so this page is absent.
  @wip @check @local @development @staging @production
  Scenario: Check if Content translation settings page is accessible
    Given I am a logged in user with the "webmaster" user
     When I go to "/admin/config/regional/content-language"
      And wait
     Then I should see "Content language and translation"

  @check @local @development @staging @production
  Scenario: Check that the Site admin can not access the language configuration page
    Given I am a logged in user with the "Site admin" user
     When I go to "/admin/config/regional/language"
      And wait
     Then I should not see "Languages"
