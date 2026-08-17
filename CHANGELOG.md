# Changelog

All notable changes to the Varbase Starter recipe are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]
### Fixed
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

[Unreleased]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-rc1...1.0.x
[1.0.0-rc1]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-beta1...1.0.0-rc1
[1.0.0-beta1]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-alpha2...1.0.0-beta1
[1.0.0-alpha2]: https://git.drupalcode.org/project/varbase_starter/-/compare/1.0.0-alpha1...1.0.0-alpha2
[1.0.0-alpha1]: https://git.drupalcode.org/project/varbase_starter/-/tags/1.0.0-alpha1
