{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "r_stage04_pace2_2",
  "creationCodeFile": "rooms/r_stage04_pace2_2/RoomCreationCode.gml",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_5E376E7_6_1_2_1_2_1_1","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_76146EC9_4_1_2_1_2_1_1","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_1E577C90_6_1_2_1_2_1_1","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_1E81A22E_1_1_1","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_17769F5D_1_1_1","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_7523E2AA","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_6D91E099","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_51B84F4","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
    {"name":"inst_27D36A32","path":"rooms/r_stage04_pace2_2/r_stage04_pace2_2.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tile_Collision","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":32,"SerialiseWidth":60,"TileCompressedData":[
1,3,-9,0,-27,-2147483648,1,0,-14,-2147483648,-8,0,1,3,-9,0,-27,-2147483648,1,0,-14,-2147483648,-8,0,1,3,-9,0,-27,-2147483648,1,0,-14,-2147483648,-8,0,1,3,-9,0,-27,-2147483648,1,0,-14,-2147483648,-8,0,1,3,-9,0,-27,-2147483648,1,0,-3,-2147483648,-19,0,
1,3,-9,0,-27,-2147483648,3,0,-2147483648,-2147483648,-20,0,1,3,-17,0,-19,-2147483648,3,0,-2147483648,-2147483648,-20,0,1,3,-30,0,-6,-2147483648,3,0,-2147483648,-2147483648,-20,0,1,3,-17,0,-11,-2147483648,-2,0,-6,-2147483648,3,0,-2147483648,-2147483648,-20,0,1,3,-17,0,-11,-2147483648,1,0,
-7,-2147483648,3,0,-2147483648,-2147483648,-20,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,1,3,-59,0,
1,3,-59,0,-9,3,1,2,-27,0,1,2,-31,3,-29,0,-31,3,-29,0,-322,3,],"TileDataFormat":1,},"tilesetId":{"name":"t_collision","path":"tilesets/t_collision/t_collision.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5E376E7_6_1_2_1_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_globalValue","path":"objects/ob_globalValue/ob_globalValue.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1568.0,"y":256.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"roomControl","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76146EC9_4_1_2_1_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"nextRoom","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"r_stage04BossCs1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"roomBgm","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"s_mr04",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"stage","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"3",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_roomControl","path":"objects/ob_roomControl/ob_roomControl.yy",},"propertyId":{"name":"isMinimap","path":"objects/ob_roomControl/ob_roomControl.yy",},"value":"False",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1376.0,"y":544.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1E81A22E_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":true,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_battleBox","path":"objects/ob_battleBox/ob_battleBox.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_battleBox","path":"objects/ob_battleBox/ob_battleBox.yy",},"propertyId":{"name":"term","path":"objects/ob_battleBox/ob_battleBox.yy",},"value":"120",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_battleBox","path":"objects/ob_battleBox/ob_battleBox.yy",},"propertyId":{"name":"spawnY","path":"objects/ob_battleBox/ob_battleBox.yy",},"value":"500",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":1504.0,"y":1184.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_17769F5D_1_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_rewardBox","path":"objects/ob_rewardBox/ob_rewardBox.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_rewardBox","path":"objects/ob_rewardBox/ob_rewardBox.yy",},"propertyId":{"name":"chunSpawn","path":"objects/ob_rewardBox/ob_rewardBox.yy",},"value":"ob_chun_stage04",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":3168.0,"y":992.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_1E577C90_6_1_2_1_2_1_1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_player","path":"objects/ob_player/ob_player.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":256.0,"y":1440.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"effect2","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_51B84F4","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_box2Mob","path":"objects/ob_box2Mob/ob_box2Mob.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxMob","path":"objects/ob_boxMob/ob_boxMob.yy",},"propertyId":{"name":"mobChance","path":"objects/ob_boxMob/ob_boxMob.yy",},"value":"0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxMob","path":"objects/ob_boxMob/ob_boxMob.yy",},"propertyId":{"name":"mobIndex","path":"objects/ob_boxMob/ob_boxMob.yy",},"value":"ob_dok4",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxBase","path":"objects/ob_boxBase/ob_boxBase.yy",},"propertyId":{"name":"maxHp","path":"objects/ob_boxBase/ob_boxBase.yy",},"value":"150",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":768.0,"y":1632.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_27D36A32","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_box2Mob","path":"objects/ob_box2Mob/ob_box2Mob.yy",},"properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxMob","path":"objects/ob_boxMob/ob_boxMob.yy",},"propertyId":{"name":"mobChance","path":"objects/ob_boxMob/ob_boxMob.yy",},"value":"0",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxMob","path":"objects/ob_boxMob/ob_boxMob.yy",},"propertyId":{"name":"mobIndex","path":"objects/ob_boxMob/ob_boxMob.yy",},"value":"ob_dok4",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","objectId":{"name":"ob_boxBase","path":"objects/ob_boxBase/ob_boxBase.yy",},"propertyId":{"name":"maxHp","path":"objects/ob_boxBase/ob_boxBase.yy",},"value":"150",},
          ],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":2240.0,"y":1632.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_2","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":32,"SerialiseWidth":60,"TileCompressedData":[
-1560,-2147483648,-6,28,1,29,-33,-2147483648,1,27,-19,28,-6,48,2,107,29,-31,-2147483648,2,27,108,-26,48,2,107,29,-6,0,1,-2147483648,-3,0,-8,-2147483648,-2,0,1,-2147483648,-8,0,2,27,108,-28,48,1,107,-29,28,1,108,-141,48,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Tiles_1","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":32,"SerialiseWidth":60,"TileCompressedData":[
-1440,0,-8,81,2,104,102,-27,0,2,100,105,-21,81,-8,41,1,42,-29,0,1,40,-29,41,1,42,-29,0,1,40,-29,41,1,24,-29,81,1,25,-261,41,],"TileDataFormat":1,},"tilesetId":{"name":"t_stage2","path":"tilesets/t_stage2/t_stage2.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"trap","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_7523E2AA","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_trapL","path":"objects/ob_trapL/ob_trapL.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":608.0,"y":1664.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6D91E099","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"objectId":{"name":"ob_trapR","path":"objects/ob_trapR/ob_trapR.yy",},"properties":[],"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":2400.0,"y":1664.0,},
      ],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Assets_1","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_1A2F055C_1","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st04_rock01","path":"sprites/sp_st04_rock01/sp_st04_rock01.yy",},"x":3232.0,"y":1312.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_653AFE7A","animationSpeed":1.0,"colour":4294967295,"frozen":false,"headPosition":0.0,"ignore":false,"inheritedItemId":null,"inheritItemSettings":false,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"spriteId":{"name":"sp_st04_tree01","path":"sprites/sp_st04_tree01/sp_st04_tree01.yy",},"x":1504.0,"y":1312.0,},
      ],"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background3","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st04_back3","path":"sprites/sp_st04_back3/sp_st04_back3.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background2","animationFPS":0.0,"animationSpeedType":0,"colour":4294967295,"depth":1000,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st02_back2","path":"sprites/sp_st02_back2/sp_st02_back2.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background1","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":{"name":"sp_st01_mon1","path":"sprites/sp_st01_mon1/sp_st01_mon1.yy",},"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":30.0,"animationSpeedType":0,"colour":4294967295,"depth":1200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "stage04 room",
    "path": "folders/Rooms/stage04 room.yy",
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
    "Height": 2000,
    "inheritRoomSettings": false,
    "persistent": false,
    "Width": 3800,
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