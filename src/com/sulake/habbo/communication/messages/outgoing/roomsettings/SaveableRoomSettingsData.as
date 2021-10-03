package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_1802:int;
      
      private var var_1804:int;
      
      private var var_1799:Boolean;
      
      private var var_1803:Boolean;
      
      private var var_1801:Array;
      
      private var var_1800:Boolean;
      
      private var var_1116:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_626:Array;
      
      private var var_1117:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1804;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1803;
      }
      
      public function get maximumVisitors() : int
      {
         return var_1802;
      }
      
      public function set description(param1:String) : void
      {
         var_1117 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1800 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1802 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1116;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1801;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1800;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1804 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1799 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_626 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1801 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1116 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1799;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1803 = param1;
      }
   }
}
