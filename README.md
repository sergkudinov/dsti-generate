
# MyProject

Generate datasets with random data.

Main functionnalites:
- Lot of customisation options
- Generate multiple tables
- ...

## Usage

Run './bin/generate help' print:

```
NAME
    generate - Generate datasets with random data.

SYNOPSIS
    generate [options]

OPTIONS
    -h --help               Display help information

COMMANDS
    users                   Generate users
    products                Generate products

EXAMPLES
    masson user list --help Show this message
```

## Developer

How to customize/initialize the environmment (conf files, docker images...)
Undestanding the project layout
...

How to run the tests:

```
# All the tests
npm test
# Selected tests
npx mocha test/*.coffee
```