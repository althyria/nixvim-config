# NixVim Configuration for Neovim
This repository contains my personal configuration for Neovim, managed with NixVim written in Nix.

## Features
* **Gruvbox Material**
* **Treesitter**
* **Telesope**
* **AutoCompletion**
* **Git Integration**
* **UI Enhancement**

## Installation
**Intergration with NixOS/Home-Manager.**
```nix
inputs = {
  nixvim-config.url = "github:althyria/nixvim-config";
};
```

```nix
{ inputs, system, ... }:

{
  # NixOS
  environment.systemPackages = [ inputs.nixvim-config.packages.${system}.default ];
  # Home-Manager
  home.packages = [ inputs.nixvim-config.packages.${system}.default ];
}
```

**Build and Run**
```sh
nix run github:althyria/nixvim-config
```

## References
* [dc-tec/nixvim](https://github.com/dc-tec/nixvim)
* [elythh/nixvim](https://github.com/elythh/nixvim)
