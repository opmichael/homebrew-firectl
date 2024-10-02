# Fireworks Firectl

## How do I install these formulae?

```bash
brew tap fw-ai/firectl
brew install firectl
```

Or, in a [`brew bundle`](https://github.com/Homebrew/homebrew-bundle) `Brewfile`:

```ruby
tap "fw-ai/firectl"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Trigger

The workflow to update the SHA256 hash is triggered by a firectl stable release: https://github.com/fw-ai/fireworks/blob/719924c123401ce01e569a04e0138973cfead0ec/.github/workflows/firectl_release.yml#L63-L70
