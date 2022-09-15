{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_start",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Collision","tilesetId":{"name":"t_collision","path":"tilesets/t_collision/t_collision.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":38,"SerialiseHeight":32,"TileCompressedData":[
-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,
-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,
1,3,-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,1,3,
-7,0,-30,-2147483648,1,3,-7,0,-30,-2147483648,-190,3,],},"visible":false,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E376E7_7","properties":[],"isDnd":false,"objectId":{"name":"ob_globalValue","path":"objects/ob_globalValue/ob_globalValue.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1568.0,"y":256.0,},
      ],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"roomControl","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76146EC9_5","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"roomBgm","path":"objects/ob_roomControl/ob_roomControl.yy",},"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"s_mStart",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"nextRoom","path":"objects/ob_roomControl/ob_roomControl.yy",},"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"r_stage01Cs",},
          ],"isDnd":false,"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1376.0,"y":544.0,},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1E577C90_7","properties":[],"isDnd":false,"objectId":{"name":"ob_player","path":"objects/ob_player/ob_player.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":288.0,"y":1632.0,},
      ],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"npc","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_23D6204","properties":[],"isDnd":false,"objectId":{"name":"ob_chun_start","path":"objects/ob_chun_start/ob_chun_start.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1184.0,"y":1536.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_557AAA58","properties":[],"isDnd":false,"objectId":{"name":"ob_chun_enhance","path":"objects/ob_chun_enhance/ob_chun_enhance.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1376.0,"y":1568.0,},
      ],"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect2","instances":[],"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":38,"SerialiseHeight":32,"TileCompressedData":[
-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,
-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,
-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-8,0,-30,-2147483648,-38,81,-152,41,],},"visible":true,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"trap","instances":[],"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"tomb","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_6F37E190","spriteId":{"name":"sp_start_tomb01","path":"sprites/sp_start_tomb01/sp_start_tomb01.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":1.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1472.0,"y":1664.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_75D8F0BD","spriteId":{"name":"sp_start_tomb02","path":"sprites/sp_start_tomb02/sp_start_tomb02.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":1.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1248.0,"y":1664.0,},
      ],"visible":true,"depth":800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_14480868","spriteId":{"name":"sp_start_tree01","path":"sprites/sp_start_tree01/sp_start_tree01.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":1.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":480.0,"y":1248.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_D796873","spriteId":{"name":"sp_start_tree04","path":"sprites/sp_start_tree04/sp_start_tree04.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":1.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":1952.0,"y":1312.0,},
      ],"visible":true,"depth":900,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background3","spriteId":{"name":"sp_start_back03","path":"sprites/sp_start_back03/sp_start_back03.yy",},"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":0.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1000,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background2","spriteId":{"name":"sp_start_back02","path":"sprites/sp_start_back02/sp_start_back02.yy",},"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":0.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background1","spriteId":{"name":"sp_start_back01","path":"sprites/sp_start_back01/sp_start_back01.yy",},"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":0.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4294967295,"x":0,"y":0,"htiled":true,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":30.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":1300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "${project_dir}/rooms/r_start/RoomCreationCode.gml",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_5E376E7_7","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_76146EC9_5","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_1E577C90_7","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_23D6204","path":"rooms/r_start/r_start.yy",},
    {"name":"inst_557AAA58","path":"rooms/r_start/r_start.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 2400,
    "Height": 2000,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Basic Room",
    "path": "folders/Rooms/Basic Room.yy",
  },
}