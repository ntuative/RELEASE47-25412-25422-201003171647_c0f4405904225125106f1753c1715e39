package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_563:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_459:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_563);
         var_459 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return var_459;
      }
   }
}
