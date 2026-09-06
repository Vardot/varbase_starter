# Changelog

All notable changes to the Varbase Starter recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [1.0.0] - 2026-09-06
### Changed
- Set the recipe version to `1.0.0` for the first stable release.
- Require every Varbase base recipe at its stable release (`~1.0.0`) instead of
  `1.0.x-dev`: `varbase_admin_base`, `varbase_users_base`,
  `varbase_security_base`, `varbase_performance_base`, `varbase_media_base`,
  `varbase_editor_base`, `varbase_content_base`, `varbase_canvas_base`,
  `varbase_workflow_base`, `varbase_i18n_base`, `varbase_seo_base`,
  `varbase_ai_base`, `varbase_api_base`, `varbase_webform_base`,
  `varbase_auth_base`, `varbase_page_base`, `varbase_blog_base` and
  `varbase_demo_content`. A stable release must not ship dev constraints.
- Require `drupal/vartheme_bs5` at `~5.0.0` instead of `5.0.x-dev`.
- Update the version badge to `1.0.0` in `README.md`.

## [1.0.0-rc4] - 2026-09-03
### Changed
- Stop declaring `drupal/canvas_icon_picker` here: the Canvas Icon Picker now
  comes with `vartheme_bs5`, so the recipe no longer requires or installs it.
- Drop the `scripts/drupal-libraries-sync.js` script and assert the front-end
  library files in CI instead, now that the libraries come from Composer.
- Drop the temporary CI pins that forced `varbase_admin_base`,
  `varbase_content_base`, `varbase_editor_base`, `varbase_media_base`,
  `varbase_api_base` and `ace_editor` to their dev branches. All six are
  released and satisfied by the constraints in `composer.json`, so the pipeline
  now tests the released packages the recipe actually resolves to.
- Update the version badge to `1.0.0-rc4` in `README.md`.
### Fixed
- Pin the header and footer page-region block components to the `active`
  component version, so a block config change no longer invalidates the region.

## [1.0.0-rc3] - 2026-09-01
### Added
- Add the Canvas Icon Picker (`drupal/canvas_icon_picker`) to the recipe.
- Add functional testing coverage for Drupal Canvas page translations.
### Changed
- Apply the new `varbase_canvas_base` recipe, which now owns the `canvas_override`
  install and the Drupal Canvas page, component library, pattern, template and
  global region permissions that `varbase_content_base` used to grant.
- Stop shipping `vardot/varbase-patches` and the Drupal CMS wiring script in the
  recipe, and wire them inline in CI instead.
- Update the version badge to `1.0.0-rc3` in `README.md`.
### Fixed
- Re-export the Vartheme BS5 icon component config for the whole Bootstrap Icons
  pack, so editing a component no longer 500s when an icon prop drops its enum.

## [1.0.0-rc2] - 2026-08-17
Supersedes 1.0.0-rc1. The Composer artifact published for 1.0.0-rc1 was built from a
commit that predates the search index configuration and the Canvas component version
re-mint, so `composer require drupal/varbase_starter` installed a tree without them.
Use 1.0.0-rc2 instead.
### Changed
- Add the search index view modes and displays for the content types and taxonomy terms.
- Give the search results page a heading and one readable result per row.
- Update the version badge to `1.0.0-rc2` in `README.md`.
### Fixed
- Re-mint the stale Canvas component version pins.
- Create the header search block after the search view display that provides it, so the install no longer warns that the `views_exposed_filter_block:search-block_1` block plugin was not found and the header region no longer pins a stale Canvas component version.

## [1.0.0-rc1] - 2026-08-15
### Added
- Add the header search box to the Varbase Starter header region.
- Add Varbase Patches to the composer requirements and a Drupal CMS wiring script.
- Add Varbase E2E Automated Functional Testing and fast CI.
### Changed
- Pin the bundled Varbase base recipes (`varbase_*_base`, `varbase_demo_content`, `varbase_ai_base`) to `~1.0.0`, `drupal/vartheme_bs5` to `~5.0.0`, and `vardot/varbase-patches` to `~11.0.0`.
- Update the version badge to `1.0.0-rc1` in `README.md`.
### Fixed
- Remove the leading slash from the site template finish_url.

## [1.0.0-beta1] - 2026-07-10
### Added
- Add reusable Canvas Patterns (sections) to Varbase Starter.
### Changed
- Update Drupal Core from ~11.3.0 to ~11.4.0 in the Varbase Starter recipe.
- Pin the bundled Varbase base recipes (`varbase_*_base`, `varbase_demo_content`, `varbase_ai_base`) to `~1.0.0` and `drupal/vartheme_bs5` to `~5.0.0`.
- Update the version badge to `1.0.0-beta1` in `README.md`.
- Run CI on tag pushes and add the README pipeline and release badges.
### Fixed
- Fix stale active_version and missing alignment prop field definition for the Card Logo component.

## [1.0.0-alpha2] - 2026-06-21
### Changed
- Maintenance and dependency updates for the Varbase Starter recipe.

## [1.0.0-alpha1]
### Added
- Initial release of the Varbase Starter recipe.

[Unreleased]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0...1.0.x
[1.0.0]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-rc4...1.0.0
[1.0.0-rc4]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-rc3...1.0.0-rc4
[1.0.0-rc3]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-rc2...1.0.0-rc3
[1.0.0-rc2]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-rc1...1.0.0-rc2
[1.0.0-rc1]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-beta1...1.0.0-rc1
[1.0.0-beta1]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-alpha2...1.0.0-beta1
[1.0.0-alpha2]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-alpha1...1.0.0-alpha2
[1.0.0-alpha1]: https://git.drupalcode.org/project/varbase_starter/-/tags/1.0.0-alpha1
