package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1506:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1559:String = "ROE_MOUSE_ENTER";
      
      public static const const_400:String = "ROE_MOUSE_MOVE";
      
      public static const const_1471:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_193:String = "ROE_MOUSE_CLICK";
      
      public static const ROOM_OBJECT_MOUSE_DOWN:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1646:Boolean;
      
      private var var_1643:Boolean;
      
      private var var_1644:Boolean;
      
      private var var_1645:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1644 = param4;
         var_1645 = param5;
         var_1646 = param6;
         var_1643 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1643;
      }
      
      public function get altKey() : Boolean
      {
         return var_1644;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1645;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1646;
      }
   }
}
