package com.sulake.habbo.communication.messages.parser.room.session
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class CantConnectMessageParser implements IMessageParser
   {
      
      public static const const_1483:int = 2;
      
      public static const const_1138:int = 4;
      
      public static const const_1192:int = 1;
      
      public static const const_1342:int = 3;
       
      
      private var var_1011:int = 0;
      
      private var var_819:String = "";
      
      public function CantConnectMessageParser()
      {
         super();
      }
      
      public function get reason() : int
      {
         return var_1011;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1011 = param1.readInteger();
         if(var_1011 == 3)
         {
            var_819 = param1.readString();
         }
         else
         {
            var_819 = "";
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_1011 = 0;
         var_819 = "";
         return true;
      }
      
      public function get parameter() : String
      {
         return var_819;
      }
   }
}
