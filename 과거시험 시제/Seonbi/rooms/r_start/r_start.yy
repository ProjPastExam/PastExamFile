{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_start",
  "creationCodeFile": "rooms/r_start/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_5E376E7_7","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_76146EC9_5","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_1E577C90_7","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_557AAA58","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_FB2026C","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_55662006","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_13D65FB2","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_1DE1670","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_513B3E2B","path":"rooms/r_start/r_start.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Collision","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":38,"TileCompressedData":[
-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,
-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-152,3,],"TileDataFormat":1,},"tilesetId":{"name":"t_collision","path":"tilesets/t_collision/t_collision.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E376E7_7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_globalValue","path":"objects/ob_globalValue/ob_globalValue.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1568.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"roomControl","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76146EC9_5","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"roomBgm","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"s_mStart",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"nextRoom","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"r_stage01Cs",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"isMinimap","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"False",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"stage","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"-1",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1376.0,"y":544.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1E577C90_7","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_player","path":"objects/ob_player/ob_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":704.0,"y":736.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"npc","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_557AAA58","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_chun_enhance","path":"objects/ob_chun_enhance/ob_chun_enhance.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1376.0,"y":672.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_FB2026C","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_restartTuto","path":"objects/ob_restartTuto/ob_restartTuto.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":300.0,"y":784.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_55662006","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_chun_start","path":"objects/ob_chun_start/ob_chun_start.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1056.0,"y":640.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_13D65FB2","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"skNum","path":"objects/ob_sk/ob_sk.yy",},"value":"181",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"isRand","path":"objects/ob_sk/ob_sk.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1728.0,"y":768.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1DE1670","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"skNum","path":"objects/ob_sk/ob_sk.yy",},"value":"121",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"isRand","path":"objects/ob_sk/ob_sk.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1920.0,"y":768.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_513B3E2B","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"skNum","path":"objects/ob_sk/ob_sk.yy",},"value":"122",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_sk","path":"objects/ob_sk/ob_sk.yy",},"propertyId":{"name":"isRand","path":"objects/ob_sk/ob_sk.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":2112.0,"y":768.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect2","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_2","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":38,"TileCompressedData":[
-532,-2147483648,-38,0,-38,28,-38,48,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":17,"SerialiseWidth":38,"TileCompressedData":[
-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,
-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-38,0,-38,81,-114,41,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"trap","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"tomb","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_6F37E190","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_start_tomb01","path":"sprites/sp_start_tomb01/sp_start_tomb01.yy",},"x":1408.0,"y":768.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_75D8F0BD","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_start_tomb02","path":"sprites/sp_start_tomb02/sp_start_tomb02.yy",},"x":1152.0,"y":768.0,},
      ],"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_14480868","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_start_tree01","path":"sprites/sp_start_tree01/sp_start_tree01.yy",},"x":480.0,"y":352.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_D796873","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_start_tree04","path":"sprites/sp_start_tree04/sp_start_tree04.yy",},"x":1952.0,"y":352.0,},
      ],"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background3","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_start_back03","path":"sprites/sp_start_back03/sp_start_back03.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background2","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_start_back02","path":"sprites/sp_start_back02/sp_start_back02.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background1","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_start_back01","path":"sprites/sp_start_back01/sp_start_back01.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Basic Room",
    "path": "folders/Rooms/Basic Room.yy",
  },
  "parentRoom": null,
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "roomSettings": {
    "Height": 1080,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 2400,
  },
  "sequenceId": null,
  "views": [
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings": {
    "clearDisplayBuffer": true,
    "clearViewBackground": false,
    "enableViews": false,
    "inheritViewSettings": false,
  },
  "volume": 1.0,
}