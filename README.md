# homebrew-flarecert

A Homebrew tap for [FlareCert](https://github.com/bariiss/flarecert) - Automatic SSL certificate generation using Let's Encrypt with Cloudflare DNS-01 challenge.

## Installation

First, tap this repository:

```bash
brew tap bariiss/flarecert
```

Then install FlareCert:

```bash
brew install flarecert
```

## What is FlareCert?

FlareCert is a Go application that automatically generates and renews SSL certificates from Let's Encrypt using Cloudflare's DNS-01 challenge method.

### Features

- ✅ Automatic SSL certificate generation using Let's Encrypt
- ✅ DNS-01 challenge via Cloudflare API
- ✅ Interactive zone selection for multi-zone accounts
- ✅ Support for wildcard certificates
- ✅ Works with Cloudflare's proxy (orange cloud) enabled
- ✅ Automatic certificate renewal
- ✅ Multiple domain support (SAN certificates)
- ✅ Kubernetes Secret YAML generation
- ✅ Shell completion support

## Usage

After installation, you can use FlareCert commands:

```bash
# List available Cloudflare zones
flarecert zones

# Generate a certificate for a single domain
flarecert cert --domain example.com

# Generate a wildcard certificate
flarecert cert --domain "*.example.com"

# Generate a certificate with Kubernetes Secret YAML
flarecert cert --domain example.com --k8s

# List existing certificates
flarecert list

# Renew existing certificates
flarecert renew
```

## Configuration

Before using FlareCert, you need to set up your Cloudflare credentials:

```bash
export CLOUDFLARE_API_TOKEN=your_api_token_here
export CLOUDFLARE_EMAIL=your_email@example.com
export ACME_EMAIL=your_email@example.com
```

For more detailed setup and usage instructions, visit the [FlareCert repository](https://github.com/bariiss/flarecert).

## Shell Completion

FlareCert includes shell completion support. After installation via Homebrew, completions are automatically available for zsh users.

For other shells or manual setup:

```bash
# For zsh
flarecert completion zsh > $(brew --prefix)/share/zsh/site-functions/_flarecert

# For bash
flarecert completion bash > $(brew --prefix)/etc/bash_completion.d/flarecert

# For fish
flarecert completion fish > ~/.config/fish/completions/flarecert.fish
```

## License

This tap is licensed under the MIT License. FlareCert itself is also licensed under the MIT License.
