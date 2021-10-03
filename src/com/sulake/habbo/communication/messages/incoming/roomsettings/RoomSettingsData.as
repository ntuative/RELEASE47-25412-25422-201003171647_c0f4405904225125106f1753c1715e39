package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_429:int = 0;
      
      public static const const_133:int = 2;
      
      public static const const_168:int = 1;
      
      public static const const_737:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1799:Boolean;
      
      private var var_1803:Boolean;
      
      private var var_1861:int;
      
      private var var_1801:Array;
      
      private var var_1860:int;
      
      private var var_1800:Boolean;
      
      private var var_1117:String;
      
      private var var_1802:int;
      
      private var var_1804:int;
      
      private var var_1116:int;
      
      private var _roomId:int;
      
      private var var_626:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1802;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1800;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1860 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1801 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_626 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1799;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1803;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1861;
      }
      
      public function get categoryId() : int
      {
         return var_1116;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1800 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1860;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1801;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1799 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1803 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1804;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1116 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1117 = param1;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
   }
}
