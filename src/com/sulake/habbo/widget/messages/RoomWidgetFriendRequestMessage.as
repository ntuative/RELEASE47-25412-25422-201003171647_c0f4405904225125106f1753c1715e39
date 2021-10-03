package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFriendRequestMessage extends RoomWidgetMessage
   {
      
      public static const const_683:String = "RWFRM_ACCEPT";
      
      public static const const_548:String = "RWFRM_DECLINE";
       
      
      private var var_968:int = 0;
      
      public function RoomWidgetFriendRequestMessage(param1:String, param2:int = 0)
      {
         super(param1);
         var_968 = param2;
      }
      
      public function get requestId() : int
      {
         return var_968;
      }
   }
}
