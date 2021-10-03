package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_245:String = "RWFAM_MOVE";
      
      public static const const_589:String = "RWFUAM_ROTATE";
      
      public static const const_637:String = "RWFAM_PICKUP";
       
      
      private var var_1807:int = 0;
      
      private var var_2256:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1807 = param2;
         var_2256 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1807;
      }
      
      public function get furniCategory() : int
      {
         return var_2256;
      }
   }
}
