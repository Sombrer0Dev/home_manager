{
  pkgs,
  lib,
  ...
}: {
  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "pure.fish";
        src = pkgs.fetchFromGitHub {
          "owner" = "pure-fish";
          "repo" = "pure";
          "rev" = "28447d2e7a4edf3c954003eda929cde31d3621d2";
          "hash" = "sha256-8zxqPU9N5XGbKc0b3bZYkQ3yH64qcbakMsHIpHZSne4=";
        };
      }
      {
        name = "fzf.fish";
        src = pkgs.fetchFromGitHub {
          "owner" = "PatrickF1";
          "repo" = "fzf.fish";
          "rev" = "8920367cf85eee5218cc25a11e209d46e2591e7a";
          "hash" = "sha256-T8KYLA/r/gOKvAivKRoeqIwE2pINlxFQtZJHpOy9GMM=";
        };
      }
      {
        name = "autopair.fish";
        src = pkgs.fetchFromGitHub {
          "owner" = "jorgebucaran";
          "repo" = "autopair.fish";
          "rev" = "4d1752ff5b39819ab58d7337c69220342e9de0e2";
          "hash" = "sha256-qt3t1iKRRNuiLWiVoiAYOu+9E7jsyECyIqZJ/oRIT1A=";
        };
      }
      {
        name = "puffer.fish";
        src = pkgs.fetchFromGitHub {
          "owner" = "nickeb96";
          "repo" = "puffir-fish";
          "rev" = "12d062eae0ad24f4ec20593be845ac30cd4b5923";
          "hash" = "sha256-2niYj0NLfmVIQguuGTA7RrPIcorJEPkxhH6Dhcy+6Bk=";
        };
      }
    ];
  };

  programs.fzf = {
    enable = true;
  };

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };
}
