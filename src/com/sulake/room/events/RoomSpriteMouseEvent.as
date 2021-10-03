package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1643:Boolean = false;
      
      private var var_1644:Boolean = false;
      
      private var var_2107:String = "";
      
      private var _type:String = "";
      
      private var var_1646:Boolean = false;
      
      private var var_2109:Number = 0;
      
      private var var_2106:Number = 0;
      
      private var var_2108:Number = 0;
      
      private var var_2110:String = "";
      
      private var var_2111:Number = 0;
      
      private var var_1645:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_2110 = param2;
         var_2107 = param3;
         var_2106 = param4;
         var_2108 = param5;
         var_2109 = param6;
         var_2111 = param7;
         var_1645 = param8;
         var_1644 = param9;
         var_1646 = param10;
         var_1643 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1645;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1643;
      }
      
      public function get localX() : Number
      {
         return var_2109;
      }
      
      public function get localY() : Number
      {
         return var_2111;
      }
      
      public function get canvasId() : String
      {
         return var_2110;
      }
      
      public function get altKey() : Boolean
      {
         return var_1644;
      }
      
      public function get spriteTag() : String
      {
         return var_2107;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_2106;
      }
      
      public function get screenY() : Number
      {
         return var_2108;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1646;
      }
   }
}
