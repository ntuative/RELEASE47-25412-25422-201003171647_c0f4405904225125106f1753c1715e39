package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class InitCryptoMessageParser implements IMessageParser
   {
       
      
      protected var var_1006:String;
      
      protected var var_2354:Boolean;
      
      protected var var_2268:Boolean;
      
      public function InitCryptoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get isClientEncrypted() : Boolean
      {
         return var_2354;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1006 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var_2268 = _loc2_ > 0 ? true : false;
         return true;
      }
      
      public function get token() : String
      {
         return var_1006;
      }
      
      public function get isServerEncrypted() : Boolean
      {
         return var_2268;
      }
   }
}
