package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_610:String;
      
      private var var_1670:int;
      
      private var var_2067:String;
      
      private var var_1077:int;
      
      private var var_1271:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1271;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1271 = param1.readInteger();
         var_2067 = param1.readString();
         var_1670 = param1.readInteger();
         var_610 = param1.readString();
         var_1077 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2067;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_610;
      }
      
      public function get petType() : int
      {
         return var_1077;
      }
      
      public function get level() : int
      {
         return var_1670;
      }
   }
}
