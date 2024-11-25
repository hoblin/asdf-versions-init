# asdf-versions-init

A utility to generate `.tool-versions` file for asdf version manager from legacy version files (`.ruby-version`, `.nvmrc`, etc.)

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/hoblin/asdf-versions-init/main/install.sh | bash
```

Or manual installation:
```bash
sudo curl -sSL https://raw.githubusercontent.com/hoblin/asdf-versions-init/main/asdf-versions-init -o /usr/local/bin/asdf-versions-init
sudo chmod +x /usr/local/bin/asdf-versions-init
```

## Usage

```bash
# Show help
asdf-versions-init --help

# Generate .tool-versions in current directory
asdf-versions-init

# Preview what would be generated
asdf-versions-init --dry-run

# Force overwrite existing .tool-versions
asdf-versions-init --force
```

## Supported Version Files

- `.ruby-version` -> ruby
- `.nvmrc` -> nodejs
- `.python-version` -> python

## License

MIT Licensed
