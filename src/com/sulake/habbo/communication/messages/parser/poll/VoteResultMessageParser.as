package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1120:int;
      
      private var var_946:String;
      
      private var var_646:Array;
      
      private var var_945:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_646.slice();
      }
      
      public function flush() : Boolean
      {
         var_946 = "";
         var_945 = [];
         var_646 = [];
         var_1120 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1120;
      }
      
      public function get question() : String
      {
         return var_946;
      }
      
      public function get choices() : Array
      {
         return var_945.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_946 = param1.readString();
         var_945 = [];
         var_646 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_945.push(param1.readString());
            var_646.push(param1.readInteger());
            _loc3_++;
         }
         var_1120 = param1.readInteger();
         return true;
      }
   }
}
