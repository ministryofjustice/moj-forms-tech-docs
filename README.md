# MOJ Forms Tech Docs

The documentation for the MOJ Forms team to support the platform.

Documentation is published by github actions, using this [docker image].

## Preview

You can run `make preview` to start a local instance of your site at
`http://localhost:4567`, so that you can view changes while editing your
content files.

### Apple Silicon (M1/M2/M3+): preview hangs

The docker image is only built for `linux/amd64`, so on an
Apple Silicon Mac it runs under emulation. If Docker Desktop emulates it with
**QEMU**, `make preview` hangs after the platform warning and the site never
loads, the Middleman server process hangs and port `4567` is never bound.

The fix is to make Docker Desktop use **Rosetta** instead of **QEMU** for
`amd64` emulation. In **Docker Desktop → Settings → General**:

1. Enable **Use Rosetta for x86_64/amd64 emulation on Apple Silicon**
   (this option only appears once the Apple Virtualization framework is
   selected).
2. Click **Apply & restart**.

Then run `make preview` again, it should boot Middleman and serve at
`http://localhost:4567`.

> Requires Rosetta 2. If it isn't installed, run
> `softwareupdate --install-rosetta --agree-to-license` first.

Sources:

- [Virtual Machine Manager for Docker Desktop on Mac (QEMU is legacy/deprecated)](https://docs.docker.com/desktop/features/vmm/)
- [Apple: If you need to install Rosetta on your Mac](https://support.apple.com/en-us/102527)

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
