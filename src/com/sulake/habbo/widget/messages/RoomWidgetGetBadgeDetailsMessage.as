package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_720:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_972:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_720);
         var_972 = param1;
      }
      
      public function get groupId() : int
      {
         return var_972;
      }
   }
}
