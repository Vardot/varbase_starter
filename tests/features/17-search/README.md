# 17-search — Search

Automated functional acceptance test suite (one parallel CI job: `SUITE=17-search`).

Covers the header search and the `/search` Canvas page from Varbase Search Base: the keyword bar,
blog post result cards, the filter rail (Tags, Content type, Date Published) alone and combined,
paging, the empty and no-results states, 1440 and 390 widths, and a basic accessibility check.
Blog post is the only content type the demo content indexes, so combining is shown with two Tags.

Run locally:

```bash
FEATURES="tests/features/17-search/**/*.feature" ddev yarn test:chromium
```

## Features

| Feature file | Description | Scenarios |
| --- | --- | --- |
| `17-01-header-search.feature` | Search - Header search | 3 |
| `17-02-search-page.feature` | Search - The search page | 14 |

**Total: 17 scenarios across 2 feature files** (1 of them `@wip`, see below).

## Notes

- **`@wip`** "Check a new keyword keeps the ticked tag" (17-02): the keyword form does not carry
  `f[]`, so a new keyword drops the ticked facet. It stays out of CI (`not @wip`) until fixed.
