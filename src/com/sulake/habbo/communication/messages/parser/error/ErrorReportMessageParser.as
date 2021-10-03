package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1257:int;
      
      private var var_1197:int;
      
      private var var_1258:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1257;
      }
      
      public function flush() : Boolean
      {
         var_1197 = 0;
         var_1257 = 0;
         var_1258 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1197;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1257 = param1.readInteger();
         var_1197 = param1.readInteger();
         var_1258 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1258;
      }
   }
}
