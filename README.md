# urix

Makes Windows-style paths friendly

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     urix:
       github: benemohamed/urix
   ```

2. Run `shards install`

## Usage

```crystal
require "urix"

Urix::Urix.urix("c:\\users\\you\\foo") # /users/you/foo
```

## Development

```bash
crystal spec
```

## Contributing

1. Fork it (<https://github.com/benemohamed/urix/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Mohamed Ben](https://github.com/benemohamed) - creator and maintainer

## License

[![GitHub license](https://img.shields.io/github/license/benemohamed/urix.svg)](https://github.com/benemohamed/urix)