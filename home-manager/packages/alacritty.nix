{
  pkgs,
  lib,
  ...
}: {
  programs.alacritty = {
    enable = true;
    settings = {
      shell.program = "${pkgs.fish}/bin/fish";
      shell.args = ["-l" "-c" "tmux attach || tmux"];
      font = {
      #   normal = { family = "Hack Nerd Font Mono"; style = "Regular"; };
      #   bold = { family = "Hack Nerd Font Mono"; style = "Bold"; };
      #   italic = { family = "Hack Nerd Font Mono"; style = "Regular Italic"; };
      #   bold_italic = { family = "Hack Nerd Font Mono"; style = "Bold Italic"; };
        # size = 12;
      };
    };
  };
}
