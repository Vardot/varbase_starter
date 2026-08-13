# @wip: the Varbase AI stack (a varbase_ai_* recipe) is not applied by Varbase Starter, so the admin pages this checks are absent on the
# installed Starter site and the scenario cannot pass. CI runs --tags
# "not @wip". Re-enable when the recipe is added to Varbase Starter.
@wip @regression @any @ai
Feature: Varbase AI Recipe - AI Base (providers + prompts)
      As a webmaster
      I want this Varbase AI recipe to deliver its admin surface and behaviour
      So that the AI feature keeps working after install or update.

  Background:
    Given I am a logged in user with the "webmaster" user

  @check @ai @recipes @local @development @staging @production
  Scenario: The AI providers and prompts are available
     When I go to "/admin/config/ai/providers"
      And wait
      And I wait for the text "AI Providers" to appear
     Then I should see "AI Providers"
      And I should see "OpenAI"
      And I should see "Anthropic"
     When I go to "/admin/config/ai/providers/openai"
      And wait
      And I wait for the text "Setup OpenAI Authentication" to appear
     Then I should see "Setup OpenAI Authentication"
     When I go to "/admin/config/ai/prompts"
      And wait
      And I wait for the text "Prompt" to appear
     Then I should see "Prompt"
