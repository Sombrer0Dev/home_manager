let
  name = "Sombrer0Dev";
in {
  programs.git = {
    enable = true;
    extraConfig = {
      color.ui = true;
      core.editor = "nvim";
      credential.helper = "store";
      github.user = name;
      push.autoSetupRemote = true;
    };
    userEmail = "sombrer01@gmail.com";
    userName = name;
  };
}
