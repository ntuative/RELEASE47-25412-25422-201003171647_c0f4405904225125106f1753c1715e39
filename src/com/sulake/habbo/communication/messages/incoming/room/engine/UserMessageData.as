package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1230:String = "F";
      
      public static const const_903:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_610:String = "";
      
      private var var_2100:int = 0;
      
      private var var_1921:String = "";
      
      private var var_1918:int = 0;
      
      private var var_1920:int = 0;
      
      private var var_1922:String = "";
      
      private var var_1366:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_225:int = 0;
      
      private var var_2101:String = "";
      
      private var _name:String = "";
      
      private var var_1919:int = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_225;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_225 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_194)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2100;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_194)
         {
            var_1918 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2101;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_194)
         {
            var_1922 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_194)
         {
            var_2101 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_194)
         {
            var_1920 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_194)
         {
            var_610 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_194)
         {
            var_2100 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_194)
         {
            var_1366 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1918;
      }
      
      public function get groupID() : String
      {
         return var_1922;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_194)
         {
            var_1919 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_194)
         {
            var_1921 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get sex() : String
      {
         return var_1366;
      }
      
      public function get figure() : String
      {
         return var_610;
      }
      
      public function get webID() : int
      {
         return var_1919;
      }
      
      public function get custom() : String
      {
         return var_1921;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_85 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1920;
      }
   }
}
