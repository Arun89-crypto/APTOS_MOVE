# APTOS-MOVE

Aptos & Move integration:

- Setup
  - InIt
  - Config
  - Compile
  - Test

## Setup

### Initialize

```sh
aptos move init
```

### Config file

```toml
[package]
name = 'counter_mod'
version = '1.0.0'
[dependencies.AptosFramework]
git = 'https://github.com/aptos-labs/aptos-core.git'
rev = 'main'
subdir = 'aptos-move/framework/aptos-framework'
[addresses]
publisher= "0x42"
```

### Compiling

```sh
aptos move compile --bytecode-version 6
# bytecode version : 6
# If not gives rust compilation error
```

### Testing

```sh
aptos move test --bytecode-version 6
```
