package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1730:int;
      
      private var var_610:String;
      
      private var var_1670:int;
      
      private var var_1733:int;
      
      private var var_1731:int;
      
      private var var_2036:int;
      
      private var _nutrition:int;
      
      private var var_1271:int;
      
      private var var_2037:int;
      
      private var var_2038:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1734:int;
      
      private var var_2039:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1670;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2036;
      }
      
      public function flush() : Boolean
      {
         var_1271 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2037;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2038;
      }
      
      public function get maxNutrition() : int
      {
         return var_2039;
      }
      
      public function get figure() : String
      {
         return var_610;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1733;
      }
      
      public function get petId() : int
      {
         return var_1271;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1271 = param1.readInteger();
         _name = param1.readString();
         var_1670 = param1.readInteger();
         var_2037 = param1.readInteger();
         var_1731 = param1.readInteger();
         var_2038 = param1.readInteger();
         _energy = param1.readInteger();
         var_2036 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2039 = param1.readInteger();
         var_610 = param1.readString();
         var_1733 = param1.readInteger();
         var_1734 = param1.readInteger();
         var_1730 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1731;
      }
      
      public function get ownerId() : int
      {
         return var_1734;
      }
      
      public function get age() : int
      {
         return var_1730;
      }
   }
}
