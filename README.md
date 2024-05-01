# unison-zed

[Unison](https://www.unison-lang.org/) support for [Zed](https://zed.dev/). The friendly programming language from the future with the futuristic editor.

## TODOs

- Improve tree-sitter syntax highlighting in `languages/highlights.scm`.

## Language server

Currently `ncat` is hardcoded as the language server, so you'll need to have `ncat` installed.

For `apt` on Linux:

```sh
apt-get install -y netcat
```

For `brew` on Mac:

```sh
brew install nmap
```

# Credits

- https://github.com/kylegoetz/tree-sitter-unison

