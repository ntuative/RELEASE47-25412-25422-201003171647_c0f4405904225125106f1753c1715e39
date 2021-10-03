package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class IssuePickFailedMessageParser implements IMessageParser
   {
       
      
      private var var_2200:String;
      
      private var var_2215:int;
      
      private var var_2198:int;
      
      public function IssuePickFailedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2198 = param1.readInteger();
         var_2215 = param1.readInteger();
         var_2200 = param1.readString();
         return true;
      }
      
      public function get issueId() : int
      {
         return var_2198;
      }
      
      public function get pickerUserId() : int
      {
         return var_2215;
      }
      
      public function get pickerUserName() : String
      {
         return var_2200;
      }
   }
}
