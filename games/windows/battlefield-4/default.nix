{ makeSteamGame, steamUserInfo, gameInfo, proton, gameFileInfo }:

let
  mainGameName = "Battlefield-4";
  appId = "1238860";
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
    (gameFiles "1238861" "4547472450138206145")
    (gameFiles "1238862" "659005961172239637")
  ];

  proton = proton.proton_6_3;

  drvPath = ./wrapper.nix;
}
