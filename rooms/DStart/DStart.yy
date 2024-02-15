{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "DStart",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [
    {"name":"inst_431C3978","path":"rooms/DStart/DStart.yy",},
    {"name":"inst_1D3C5F1F","path":"rooms/DStart/DStart.yy",},
  ],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemy","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":true,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"DamageBoxes","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collisions","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":36,"gridY":36,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_door","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-600,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tDoor_Set_36x36","path":"tilesets/tDoor_Set_36x36/tDoor_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_wall","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
1,4,-28,28,2,8,24,-11,0,-17,-2147483648,2,16,24,-12,0,-10,-2147483648,1,0,-5,-2147483648,2,16,24,-15,0,-4,-2147483648,-7,
0,-2,-2147483648,2,16,24,-6,0,1,-2147483648,-10,0,-2,-2147483648,-7,0,-2,-2147483648,2,16,24,-11,0,3,-2147483648,0,-2147483648,-4,0,1,
-2147483648,-7,0,-2,-2147483648,2,16,24,-5,-2147483648,-2,0,-3,-2147483648,-8,0,1,-2147483648,-7,0,-2,-2147483648,2,16,24,-4,-2147483648,-2,0,-4,
-2147483648,-9,0,-4,-2147483648,1,0,-4,-2147483648,2,16,24,-4,-2147483648,1,0,-5,-2147483648,-11,0,2,-2147483648,0,-5,-2147483648,2,16,24,-4,-2147483648,
1,0,-6,-2147483648,-7,0,1,-2147483648,-4,0,-5,-2147483648,2,16,24,-3,-2147483648,-5,0,-3,-2147483648,-7,0,1,-2147483648,-4,0,-5,-2147483648,2,
16,24,-3,-2147483648,-5,0,-2,-2147483648,-8,0,1,-2147483648,-5,0,-4,-2147483648,2,16,24,-3,-2147483648,-21,0,-4,-2147483648,2,16,24,-3,-2147483648,
-2,0,-2,-2147483648,1,0,-3,-2147483648,-9,0,5,-2147483648,0,0,-2147483648,0,-3,-2147483648,3,16,24,-2147483648,-4,0,-2,-2147483648,1,0,-5,-2147483648,
7,0,-2147483648,0,-2147483648,0,0,-2147483648,-8,0,2,16,24,-6,0,1,-2147483648,-4,0,-6,-2147483648,-11,0,2,16,24,-10,0,-7,-2147483648,
-11,0,2,16,24,-5,0,-2,-2147483648,-3,0,-7,-2147483648,-11,0,2,16,24,-5,0,-2,-2147483648,-3,0,-7,-2147483648,-11,0,2,16,
2,-28,20,1,1,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_floor_marks","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-12,-2147483648,-2,99,-28,-2147483648,-2,99,-5,-2147483648,-2,0,-28,-2147483648,-2,99,-23,-2147483648,-2,99,-19,-2147483648,-2,99,-2,-2147483648,-2,99,-3,-2147483648,
2,0,99,-19,-2147483648,-2,99,-2,-2147483648,-2,99,-22,-2147483648,1,99,-5,-2147483648,-2,99,-8,-2147483648,1,99,-12,-2147483648,-4,99,-13,-2147483648,-2,
99,-3,-2147483648,-2,99,-6,-2147483648,-2,99,6,-2147483648,99,-2147483648,-2147483648,99,99,-14,-2147483648,-2,99,-6,-2147483648,2,0,99,-4,-2147483648,-2,99,-8,
-2147483648,1,99,-3,-2147483648,1,99,-15,-2147483648,-3,99,-8,-2147483648,2,99,-2147483648,-5,99,-8,-2147483648,-2,99,-2,-2147483648,-2,99,-12,-2147483648,1,99,
-9,-2147483648,4,99,-2147483648,-2147483648,99,-5,-2147483648,1,99,-12,-2147483648,-2,99,-5,-2147483648,-2,99,-8,-2147483648,-2,99,-6,-2147483648,-2,99,-4,-2147483648,-2,
99,-4,-2147483648,6,99,0,-2147483648,-2147483648,99,99,-4,-2147483648,-2,99,-4,-2147483648,4,99,-2147483648,99,99,-5,-2147483648,-2,99,-3,-2147483648,-2,99,-2,
-2147483648,-2,99,-4,-2147483648,2,99,0,-3,-2147483648,-2,99,-9,-2147483648,1,99,-4,-2147483648,-3,99,-8,-2147483648,4,99,0,-2147483648,99,-16,-2147483648,-2,
99,-8,-2147483648,-2,99,2,-2147483648,99,-73,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tile_floor_shadow","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-24,0,-7,-2147483648,1,82,-26,68,4,84,-2147483648,-2147483648,64,-26,95,4,72,-2147483648,-2147483648,64,-26,95,4,72,-2147483648,-2147483648,64,-26,95,4,
72,0,0,64,-26,95,4,72,0,-2147483648,64,-26,95,4,72,0,-2147483648,64,-26,95,4,72,0,0,64,-26,95,4,72,0,
0,64,-26,95,4,72,0,0,64,-26,95,4,72,0,0,64,-26,95,4,72,0,-2147483648,64,-26,95,4,72,0,-2147483648,64,
-26,95,4,72,0,-2147483648,64,-26,95,4,72,0,-2147483648,64,-26,95,4,72,0,0,64,-26,95,4,72,0,-2147483648,64,-26,95,
4,72,0,-2147483648,88,-26,76,1,86,-31,0,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tile_floor_base","depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-600,101,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":900,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
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
    "Height": 720,
    "inheritRoomSettings": false,
    "persistent": true,
    "Width": 1080,
  },
  "sequenceId": null,
  "views": [
    {"hborder":202,"hport":810,"hspeed":-1,"hview":270,"inherit":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"vborder":135,"visible":true,"vspeed":-1,"wport":1215,"wview":405,"xport":0,"xview":0,"yport":0,"yview":0,},
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