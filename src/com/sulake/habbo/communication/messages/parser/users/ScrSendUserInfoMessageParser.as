package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2071:int;
      
      private var var_1356:String;
      
      private var var_2072:int;
      
      private var var_2074:int;
      
      private var var_2073:int;
      
      private var var_2075:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1356;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2075;
      }
      
      public function get responseType() : int
      {
         return var_2074;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2072;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1356 = param1.readString();
         var_2072 = param1.readInteger();
         var_2071 = param1.readInteger();
         var_2073 = param1.readInteger();
         var_2074 = param1.readInteger();
         var_2075 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2071;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2073;
      }
   }
}
