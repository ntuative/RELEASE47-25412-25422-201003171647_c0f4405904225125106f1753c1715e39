package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      private var var_225:int = 0;
      
      private var var_1912:int = 0;
      
      private var var_1917:Number = 0;
      
      private var var_1916:Number = 0;
      
      private var var_1913:Number = 0;
      
      private var var_1914:Number = 0;
      
      private var var_1915:Boolean = false;
      
      private var var_84:Number = 0;
      
      private var _id:int = 0;
      
      private var var_202:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_202 = [];
         super();
         _id = param1;
         var_84 = param2;
         _y = param3;
         var_85 = param4;
         var_1914 = param5;
         var_225 = param6;
         var_1912 = param7;
         var_1917 = param8;
         var_1916 = param9;
         var_1913 = param10;
         var_1915 = param11;
         var_202 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function get dir() : int
      {
         return var_225;
      }
      
      public function get localZ() : Number
      {
         return var_1914;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1915;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1912;
      }
      
      public function get targetX() : Number
      {
         return var_1917;
      }
      
      public function get targetY() : Number
      {
         return var_1916;
      }
      
      public function get targetZ() : Number
      {
         return var_1913;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get actions() : Array
      {
         return var_202.slice();
      }
   }
}
