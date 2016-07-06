
"use strict";

let FileRead = require('./FileRead.js')
let ParamPull = require('./ParamPull.js')
let FileRemove = require('./FileRemove.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let SetMode = require('./SetMode.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let ParamGet = require('./ParamGet.js')
let CommandHome = require('./CommandHome.js')
let FileRemoveDir = require('./FileRemoveDir.js')
let StreamRate = require('./StreamRate.js')
let ParamPush = require('./ParamPush.js')
let FileMakeDir = require('./FileMakeDir.js')
let WaypointPush = require('./WaypointPush.js')
let FileWrite = require('./FileWrite.js')
let FileRename = require('./FileRename.js')
let CommandTOL = require('./CommandTOL.js')
let FileTruncate = require('./FileTruncate.js')
let FileClose = require('./FileClose.js')
let ParamSet = require('./ParamSet.js')
let FileChecksum = require('./FileChecksum.js')
let FileList = require('./FileList.js')
let FileOpen = require('./FileOpen.js')
let WaypointPull = require('./WaypointPull.js')
let CommandInt = require('./CommandInt.js')
let WaypointClear = require('./WaypointClear.js')
let CommandBool = require('./CommandBool.js')
let CommandLong = require('./CommandLong.js')

module.exports = {
  FileRead: FileRead,
  ParamPull: ParamPull,
  FileRemove: FileRemove,
  WaypointSetCurrent: WaypointSetCurrent,
  SetMode: SetMode,
  CommandTriggerControl: CommandTriggerControl,
  ParamGet: ParamGet,
  CommandHome: CommandHome,
  FileRemoveDir: FileRemoveDir,
  StreamRate: StreamRate,
  ParamPush: ParamPush,
  FileMakeDir: FileMakeDir,
  WaypointPush: WaypointPush,
  FileWrite: FileWrite,
  FileRename: FileRename,
  CommandTOL: CommandTOL,
  FileTruncate: FileTruncate,
  FileClose: FileClose,
  ParamSet: ParamSet,
  FileChecksum: FileChecksum,
  FileList: FileList,
  FileOpen: FileOpen,
  WaypointPull: WaypointPull,
  CommandInt: CommandInt,
  WaypointClear: WaypointClear,
  CommandBool: CommandBool,
  CommandLong: CommandLong,
};
