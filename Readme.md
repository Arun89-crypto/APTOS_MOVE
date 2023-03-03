# APTOS-MOVE

Aptos & Move integration:

- Setup
  - InIt
  - Config
  - Compile
  - Test

## MODULES

- Aptos Basics (Global Counter)
- Aptos Coin

---

## SETUP

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

## Structs

- `copy`: Allows values of types with this ability to be copied.
- `drop`: Allows values of types with this ability to be popped/dropped.
- `store`: Allows values of types with this ability to exist inside a struct in global storage.
- `key`: Allows the type to serve as a key for global storage operations.
