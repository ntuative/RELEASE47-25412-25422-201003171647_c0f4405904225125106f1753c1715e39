package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_971:PetData;
      
      private var var_1425:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1425 = param1.readBoolean();
         var_971 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1425 + ", " + var_971.id + ", " + var_971.name + ", " + pet.figure + ", " + var_971.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1425;
      }
      
      public function get pet() : PetData
      {
         return var_971;
      }
   }
}
