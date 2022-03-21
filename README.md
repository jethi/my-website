# Website Builder

This repository contains the source of my website in gemini-esq markup which is exported to html using a cli application called 'meow'. Git Hooks are used to update the html on every commit when the markdown is edited. The webiste is hosted using Cloudflare Pages.

* Check website [here](https://sifl.in)
* Website source code [here](https://github.com/jethi/my-website)

## Dependencies

* [git](https://git-scm.com/)
* [meow](https://github.com/jethi/meow)

## Setup git hooks

Make pre-commit.sh executable if not already:

```
chmod +x pre-commit.sh
```

Softlink to hooks directory:

```
ln -s -f ../../pre-commit.sh .git/hooks/pre-commit
```

