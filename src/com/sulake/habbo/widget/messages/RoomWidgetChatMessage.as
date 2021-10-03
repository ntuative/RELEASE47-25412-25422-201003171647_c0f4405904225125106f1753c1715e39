package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_118:int = 0;
      
      public static const const_128:int = 1;
      
      public static const const_100:int = 2;
      
      public static const const_640:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1133:int = 0;
      
      private var var_1668:String = "";
      
      private var var_195:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_195 = param2;
         var_1133 = param3;
         var_1668 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1668;
      }
      
      public function get chatType() : int
      {
         return var_1133;
      }
      
      public function get text() : String
      {
         return var_195;
      }
   }
}
