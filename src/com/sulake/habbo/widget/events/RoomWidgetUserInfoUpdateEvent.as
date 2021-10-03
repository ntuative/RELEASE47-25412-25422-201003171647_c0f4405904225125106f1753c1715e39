package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_201:String = "RWUIUE_PEER";
      
      public static const const_221:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1169:String = "BOT";
      
      public static const const_838:int = 2;
      
      public static const const_1246:int = 0;
      
      public static const const_997:int = 3;
       
      
      private var var_1154:String = "";
      
      private var var_2095:Boolean = false;
      
      private var var_1920:int = 0;
      
      private var var_2088:int = 0;
      
      private var var_2091:Boolean = false;
      
      private var var_1156:String = "";
      
      private var var_2094:Boolean = false;
      
      private var var_861:int = 0;
      
      private var var_2096:Boolean = true;
      
      private var var_972:int = 0;
      
      private var var_2093:Boolean = false;
      
      private var var_1219:Boolean = false;
      
      private var var_2097:Boolean = false;
      
      private var var_2092:int = 0;
      
      private var var_2090:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_254:Array;
      
      private var var_1218:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1919:int = 0;
      
      private var var_2089:Boolean = false;
      
      private var var_2098:int = 0;
      
      private var var_2087:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_254 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_2088;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_2088 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_2095;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_2096;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_2096 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_2094 = param1;
      }
      
      public function get motto() : String
      {
         return var_1154;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_2093 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1219;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1154 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_2089;
      }
      
      public function get groupBadgeId() : String
      {
         return var_2087;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1219 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_2090;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_2092 = param1;
      }
      
      public function get badges() : Array
      {
         return var_254;
      }
      
      public function get amIController() : Boolean
      {
         return var_2091;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_2091 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_2089 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_2098 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_2087 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1156 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_2094;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_2093;
      }
      
      public function get carryItem() : int
      {
         return var_2092;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1218;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1218 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_861 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_2098;
      }
      
      public function get realName() : String
      {
         return var_1156;
      }
      
      public function set webID(param1:int) : void
      {
         var_1919 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_254 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_2097 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_2090 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_861;
      }
      
      public function get webID() : int
      {
         return var_1919;
      }
      
      public function set groupId(param1:int) : void
      {
         var_972 = param1;
      }
      
      public function get xp() : int
      {
         return var_1920;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_2095 = param1;
      }
      
      public function get groupId() : int
      {
         return var_972;
      }
      
      public function get canTrade() : Boolean
      {
         return var_2097;
      }
      
      public function set xp(param1:int) : void
      {
         var_1920 = param1;
      }
   }
}
