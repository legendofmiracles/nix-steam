{ makeSteamGame, steamUserInfo, gameInfo, proton, gameFileInfo }:

let
  mainGameName = "DOOMEternal";
  appId = "782330";
  gameFiles = (id: mid:
    gameFileInfo {
      inherit mainGameName appId;
      name = mainGameName;
      platform = "windows";
      depotId = id;
      manifestId = mid;
    });
in makeSteamGame {
  inherit steamUserInfo;

  game = gameInfo {
    inherit appId;
    name = mainGameName;
    platform = "windows";
  };

  gameFiles = [
    # (gameFiles "782332" "2085276864564955876")
    (gameFiles "782333" "1731821967168039133")
    (gameFiles "782334" "3373382292061808457")
    (gameFiles "782335" "5067891733764675068")
    (gameFiles "782338" "4899404039317730890")
    (gameFiles "782336" "8663932040574311033")
    (gameFiles "782337" "9092967121713772459")
    (gameFiles "782339" "8413240717157269370")

  ];

  proton = proton.proton_6_3;

  drvPath = ./wrapper.nix;
}
