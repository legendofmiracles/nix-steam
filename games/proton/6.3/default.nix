{ makeSteamGame, steamUserInfo, gameInfo, gameFileInfo }:

makeSteamGame {
  inherit steamUserInfo;

  game = gameInfo {
    name = "Proton6_3";
    appId = "1580130";
  };

  gameFiles = gameFileInfo {
    name = "Proton6_3";
    appId = "1580130";
    depotId = "1580131";
    manifestId = "7336486418625335787";
    #hash = "jMU0ZzwGQ3OXFA0hwup7osF2W9URGxMXENcqny/WEY4=";
    hash = "HaeIEN747yC4wkXUzCO45cTnU7CDRpt03h9Hw5wUjy8=";
  };

  drvPath = ./wrapper.nix;
}
