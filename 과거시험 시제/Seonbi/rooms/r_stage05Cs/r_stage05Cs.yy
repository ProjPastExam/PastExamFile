{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_stage05Cs",
  "creationCodeFile": "rooms/r_stage05Cs/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_5E376E7_5_1_1_1_1_1_1","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
    {"name":"inst_76146EC9_3_1_1_1_1_1_1","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
    {"name":"inst_1E577C90_5_1_1_1_1_1_1","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
    {"name":"inst_75242944_1","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
    {"name":"inst_E1E9886_1","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
    {"name":"inst_238775F9","path":"rooms/r_stage05Cs/r_stage05Cs.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Collision","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
-10,0,-22,-2147483648,-10,0,-22,-2147483648,-10,0,-22,-2147483648,-10,0,-22,-2147483648,-10,0,-22,-2147483648,-10,0,-22,-2147483648,-18,0,-14,-2147483648,-30,0,-2,-2147483648,
-18,0,-11,-2147483648,3,0,-2147483648,-2147483648,-18,0,-11,-2147483648,3,0,-2147483648,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,
-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,1,3,-29,0,-2,-2147483648,1,3,-29,0,-2,-2147483648,
1,3,-29,0,-2,-2147483648,1,3,-29,0,-2,-2147483648,1,3,-29,0,-2,-2147483648,-30,3,-130,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"t_collision","path":"tilesets/t_collision/t_collision.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Backgrounds_1","animationFPS":0.0,"animationSpeedType":0,"colour":1694498815,"depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":1.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_fog","path":"sprites/sp_fog/sp_fog.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E376E7_5_1_1_1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_globalValue","path":"objects/ob_globalValue/ob_globalValue.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1568.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances_1","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_238775F9","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_stage05CsWhite","path":"objects/ob_stage05CsWhite/ob_stage05CsWhite.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1024.0,"y":1248.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"roomControl","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76146EC9_3_1_1_1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"isCt","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"True",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"nextRoom","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"r_stage05_1_1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"csMgIndex","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"44",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1376.0,"y":544.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1E577C90_5_1_1_1_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_player","path":"objects/ob_player/ob_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":320.0,"y":1440.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_75242944_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_stage05CsPl","path":"objects/ob_stage05CsPl/ob_stage05CsPl.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":-64.0,"y":1440.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_E1E9886_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_stage05CsChun","path":"objects/ob_stage05CsChun/ob_stage05CsChun.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":224.0,"y":1344.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect2","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_4","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
-832,-2147483648,-32,28,-64,48,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage5","path":"tilesets/t_stage5/t_stage5.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_3","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
-768,-2147483648,-32,81,-128,41,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage5","path":"tilesets/t_stage5/t_stage5.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_2","depth":900,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0.5",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
-832,-2147483648,-32,28,-64,48,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":1000,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0.5",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"tiles":{"SerialiseHeight":29,"SerialiseWidth":32,"TileCompressedData":[
-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,
-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,
-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,-30,0,-2,-2147483648,
-32,81,-128,41,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"trap","depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_2","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_6E2A4195","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st05_tree02","path":"sprites/sp_st05_tree02/sp_st05_tree02.yy",},"x":448.0,"y":1376.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_292BA0A","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st05_tree01","path":"sprites/sp_st05_tree01/sp_st05_tree01.yy",},"x":1696.0,"y":1248.0,},
      ],"depth":1200,"effectEnabled":true,"effectType":"none","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_4C9D94C3","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st02_tree01","path":"sprites/sp_st02_tree01/sp_st02_tree01.yy",},"x":320.0,"y":1120.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_2856B1BE","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st02_tree02","path":"sprites/sp_st02_tree02/sp_st02_tree02.yy",},"x":1696.0,"y":1152.0,},
      ],"depth":1300,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0.5",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Backgrounds_3","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st05_back3","path":"sprites/sp_st05_back3/sp_st05_back3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":500,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Backgrounds_2","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st05_back2","path":"sprites/sp_st05_back2/sp_st05_back2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":500,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background3","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1600,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0.5",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"spriteId":{"name":"sp_st02_back3","path":"sprites/sp_st02_back3/sp_st02_back3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background2","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1700,"effectEnabled":true,"effectType":"_filter_colourise","gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[
        {"name":"g_Intensity","type":0,"value":"0.5",},
        {"name":"g_TintCol","type":1,"value":"#FFFFFFFF",},
      ],"spriteId":{"name":"sp_st02_back2","path":"sprites/sp_st02_back2/sp_st02_back2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st01_mon1","path":"sprites/sp_st01_mon1/sp_st01_mon1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "stage05 room",
    "path": "folders/Rooms/stage05 room.yy",
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
    "Height": 1800,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 2000,
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