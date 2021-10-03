package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_502:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1619:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_502);
         var_1619 = param1;
      }
      
      public function get tag() : String
      {
         return var_1619;
      }
   }
}
