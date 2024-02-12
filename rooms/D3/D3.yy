{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "D3",
  "creationCodeFile": "",
  "inheritCode": false,
  "inheritCreationOrder": false,
  "inheritLayers": false,
  "instanceCreationOrder": [],
  "isDnd": false,
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Enemy","depth":0,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"DamageBoxes","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Collisions","depth":200,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","depth":300,"effectEnabled":true,"effectType":null,"gridX":36,"gridY":36,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"instances":[],"layers":[],"properties":[],"userdefinedDepth":false,"visible":true,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_wall","depth":400,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-10,47,1,4,-18,28,1,8,-10,47,1,24,-18,-2147483648,4,16,47,47,4,-3,28,7,8,4,28,8,24,-2147483648,0,-16,
-2147483648,4,16,47,47,24,-3,0,6,40,38,-2147483648,16,24,-2147483648,-4,0,-4,-2147483648,13,0,34,20,20,36,0,0,-2147483648,-2147483648,16,
47,4,38,-4,0,-2,-2147483648,4,16,24,-2147483648,-2147483648,-5,0,-2,-2147483648,12,0,40,8,47,2,36,0,-2147483648,-2147483648,16,4,38,-5,
0,-2,-2147483648,6,40,38,-2147483648,-2147483648,0,-2147483648,-4,0,12,-2147483648,0,0,40,28,28,38,0,-2147483648,-2147483648,16,24,-11,-2147483648,-7,0,-10,
-2147483648,2,16,24,-10,-2147483648,-2,0,3,34,20,36,-4,0,-9,-2147483648,2,16,24,-11,-2147483648,7,34,1,47,2,36,0,-2147483648,-3,
0,-7,-2147483648,2,16,24,-11,-2147483648,1,16,-3,47,6,24,0,-2147483648,-2147483648,0,0,-7,-2147483648,2,16,24,-5,-2147483648,3,34,20,36,
-3,-2147483648,10,40,8,47,47,2,36,-2147483648,-2147483648,0,0,-7,-2147483648,2,16,24,-5,-2147483648,12,16,47,24,-2147483648,-2147483648,0,0,40,8,
47,47,24,-11,-2147483648,2,16,24,-5,-2147483648,3,40,28,38,-3,-2147483648,-2,0,5,40,28,28,38,0,-10,-2147483648,2,16,24,-11,
-2147483648,-6,0,-7,-2147483648,1,0,-3,-2147483648,6,16,24,-2147483648,-2147483648,34,36,-9,-2147483648,3,0,-2147483648,0,-5,-2147483648,3,34,20,36,-4,0,
6,16,24,-2147483648,-2147483648,16,24,-4,-2147483648,2,34,36,-11,-2147483648,3,16,47,24,-4,0,6,16,24,-2147483648,-2147483648,40,38,-4,-2147483648,2,
16,24,-8,-2147483648,6,34,20,20,1,47,24,-4,0,2,16,24,-8,-2147483648,2,16,24,-7,-2147483648,2,34,1,-4,47,1,2,
-4,20,2,1,24,-8,-2147483648,2,16,24,-7,-2147483648,1,16,-11,47,1,2,-8,20,2,1,2,-7,20,1,1,-11,47,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tiles_floor_marks","depth":500,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-12,-2147483648,-2,99,-28,-2147483648,-2,99,-5,-2147483648,-2,0,-28,-2147483648,-2,99,-23,-2147483648,-2,99,-19,-2147483648,-2,99,-2,-2147483648,-2,99,-3,-2147483648,
2,0,99,-19,-2147483648,-2,99,-2,-2147483648,-2,99,-22,-2147483648,1,99,-5,-2147483648,-2,99,-8,-2147483648,1,99,-12,-2147483648,-4,99,-13,-2147483648,-2,
99,-3,-2147483648,-2,99,-6,-2147483648,-2,99,6,-2147483648,99,-2147483648,-2147483648,99,99,-14,-2147483648,-2,99,-6,-2147483648,2,0,99,-4,-2147483648,-2,99,-8,
-2147483648,1,99,-3,-2147483648,1,99,-15,-2147483648,-3,99,-8,-2147483648,2,99,-2147483648,-5,99,-8,-2147483648,-2,99,-2,-2147483648,-2,99,-12,-2147483648,1,99,
-9,-2147483648,4,99,-2147483648,-2147483648,99,-5,-2147483648,1,99,-12,-2147483648,-2,99,-5,-2147483648,-2,99,-8,-2147483648,-2,99,-6,-2147483648,-2,99,-4,-2147483648,-2,
99,-4,-2147483648,6,99,0,-2147483648,-2147483648,99,99,-4,-2147483648,-2,99,-4,-2147483648,4,99,-2147483648,99,99,-5,-2147483648,-2,99,-3,-2147483648,-2,99,-2,
-2147483648,-2,99,-4,-2147483648,2,99,0,-3,-2147483648,-2,99,-9,-2147483648,1,99,-4,-2147483648,-3,99,-8,-2147483648,4,99,0,-2147483648,99,-16,-2147483648,-2,
99,-8,-2147483648,-2,99,2,-2147483648,99,-73,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tile_floor_shadow","depth":600,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-12,-2147483648,-5,0,-24,-2147483648,1,82,-16,68,1,84,-12,-2147483648,1,64,-8,95,1,52,-4,76,4,56,95,95,72,-4,-2147483648,9,
82,68,84,-2147483648,-2147483648,90,-2147483648,-2147483648,64,-8,95,1,72,-4,-2147483648,4,88,56,95,72,-4,-2147483648,9,64,95,50,68,68,74,-2147483648,
-2147483648,64,-8,95,1,72,-5,-2147483648,3,64,95,72,-3,-2147483648,2,82,49,-4,95,4,72,-2147483648,-2147483648,64,-8,95,2,50,84,-4,
-2147483648,7,64,95,72,-2147483648,-2147483648,82,49,-5,95,5,50,68,68,49,52,-3,76,1,56,-4,95,1,50,-4,68,6,49,95,
72,-2147483648,-2147483648,64,-9,95,2,52,86,-3,-2147483648,2,88,56,-10,95,4,72,-2147483648,0,64,-9,95,1,72,-5,-2147483648,1,64,-10,
95,4,72,-2147483648,0,64,-3,95,1,52,-3,76,3,56,95,72,-5,-2147483648,2,88,56,-9,95,4,72,-2147483648,0,64,-3,95,
1,72,-3,-2147483648,3,64,95,72,-6,-2147483648,1,64,-9,95,4,72,-2147483648,0,64,-3,95,1,72,-3,-2147483648,4,64,95,50,84,
-5,-2147483648,1,64,-9,95,4,72,-2147483648,-2147483648,64,-3,95,1,72,-3,-2147483648,5,64,95,95,50,84,-4,-2147483648,1,64,-9,95,8,
72,-2147483648,-2147483648,64,52,76,76,58,-3,68,1,49,-3,95,1,50,-4,68,4,49,95,95,52,-3,76,17,56,95,95,72,
-2147483648,-2147483648,64,72,-2147483648,-2147483648,64,95,95,52,76,76,56,-9,95,1,72,-3,-2147483648,17,64,95,95,72,-2147483648,-2147483648,64,72,-2147483648,-2147483648,
64,95,95,72,-2147483648,-2147483648,64,-6,95,4,52,76,76,86,-3,-2147483648,17,64,95,95,72,-2147483648,-2147483648,64,72,-2147483648,-2147483648,64,95,95,
72,-2147483648,-2147483648,64,-5,95,2,52,86,-6,-2147483648,17,88,76,76,86,-2147483648,-2147483648,64,50,68,68,49,95,95,72,-2147483648,-2147483648,64,-5,
95,1,72,-13,-2147483648,1,88,-6,76,4,86,-2147483648,-2147483648,88,-5,76,1,86,-24,-2147483648,-7,0,-11,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"tile_floor_base","depth":700,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"tiles":{"SerialiseHeight":20,"SerialiseWidth":30,"TileCompressedData":[
-563,101,-7,100,-23,101,-7,100,],"TileDataFormat":1,},"tilesetId":{"name":"tWall_Set_36x36","path":"tilesets/tWall_Set_36x36/tWall_Set_36x36.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4278190080,"depth":800,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"properties":[],"spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":false,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
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
    {"hborder":32,"hport":810,"hspeed":-1,"hview":270,"inherit":false,"objectId":{"name":"oPlayer","path":"objects/oPlayer/oPlayer.yy",},"vborder":32,"visible":false,"vspeed":-1,"wport":1215,"wview":405,"xport":0,"xview":0,"yport":0,"yview":0,},
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