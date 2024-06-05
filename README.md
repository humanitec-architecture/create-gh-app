# create-gh-app

Small CLI tool to create a GitHub App for Backstage.

Heavily inspired by <https://github.com/backstage/backstage/blob/master/packages/cli/src/commands/create-github-app/>

## Usage

Run the image and open the printed URL in a browser to create GitHub App pre-configured for Backstage.

```bash
docker run --rm -it -e GITHUB_ORG_ID -v $(pwd):/pwd -w /pwd -p 3000:3000 \
  ghcr.io/humanitec-architecture/create-gh-app
```
