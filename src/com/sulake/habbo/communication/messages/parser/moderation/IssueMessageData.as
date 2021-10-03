package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_152:int = 1;
      
      public static const const_1387:int = 3;
      
      public static const const_397:int = 2;
       
      
      private var var_2196:int;
      
      private var var_1657:int;
      
      private var var_2203:int;
      
      private var var_1656:int;
      
      private var var_35:int;
      
      private var var_402:int;
      
      private var var_1318:int;
      
      private var var_2198:int;
      
      private var var_1046:int;
      
      private var _roomResources:String;
      
      private var var_1865:int;
      
      private var var_2201:int;
      
      private var var_2204:String;
      
      private var var_2200:String;
      
      private var var_2202:int = 0;
      
      private var var_1274:String;
      
      private var _message:String;
      
      private var var_1980:int;
      
      private var var_2197:String;
      
      private var var_1116:int;
      
      private var var_712:String;
      
      private var var_2199:String;
      
      private var var_1424:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1046 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2202 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2201;
      }
      
      public function set roomName(param1:String) : void
      {
         var_712 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_712;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1656 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_35 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1657;
      }
      
      public function get priority() : int
      {
         return var_2196 + var_2202;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2198 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2200;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1424) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1116;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2201 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1318;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2204 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1865;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1656;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2199 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1274 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2198;
      }
      
      public function set priority(param1:int) : void
      {
         var_2196 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1657 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2204;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2203 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2200 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1980 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1274;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1318 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2203;
      }
      
      public function set flatId(param1:int) : void
      {
         var_402 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1116 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1424 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1980;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2197 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1424;
      }
      
      public function get reportedUserId() : int
      {
         return var_1046;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2199;
      }
      
      public function get reporterUserName() : String
      {
         return var_2197;
      }
   }
}
