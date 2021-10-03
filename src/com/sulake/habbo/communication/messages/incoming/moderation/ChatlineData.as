package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1521:String;
      
      private var var_2105:int;
      
      private var var_2103:int;
      
      private var var_2104:int;
      
      private var var_2102:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_2105 = param1.readInteger();
         var_2104 = param1.readInteger();
         var_2103 = param1.readInteger();
         var_2102 = param1.readString();
         var_1521 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1521;
      }
      
      public function get hour() : int
      {
         return var_2105;
      }
      
      public function get minute() : int
      {
         return var_2104;
      }
      
      public function get chatterName() : String
      {
         return var_2102;
      }
      
      public function get chatterId() : int
      {
         return var_2103;
      }
   }
}
