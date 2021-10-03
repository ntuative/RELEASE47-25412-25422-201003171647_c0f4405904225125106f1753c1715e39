package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1733:int;
      
      private var var_1143:PetData;
      
      private var var_2242:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1733;
      }
      
      public function get petData() : PetData
      {
         return var_1143;
      }
      
      public function flush() : Boolean
      {
         var_1143 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2242;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1733 = param1.readInteger();
         var_2242 = param1.readInteger();
         var_1143 = new PetData(param1);
         return true;
      }
   }
}
