# MOJ Forms Tech Docs

The documentation for the MOJ Forms team to support the platform.

Documentation is published by github actions, using this [docker image].

## Preview

You can run `make preview` to start a local instance of your site at
`http://localhost:4567`, so that you can view changes while editing your
content files.

## Publishing

Provided you have updated the `.github/workflows/publish.yml` file as directed,
any changes you push/merge into the `main` branch should be published
automatically.

> The publishing process creates files in `/docs` and pushes them to the
> `gh-pages` branch to publish them. You should not edit any files in that
> folder, because your changes will be lost the next time the site is
> published.

[gov.uk tech-docs-template]: https://github.com/alphagov/tech-docs-template#tech-docs-template
[docker image]: https://github.com/ministryofjustice/tech-docs-github-pages-publisher