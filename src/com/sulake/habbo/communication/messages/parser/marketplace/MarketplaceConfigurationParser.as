package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1780:int;
      
      private var var_1500:int;
      
      private var var_1781:int;
      
      private var var_1779:int;
      
      private var var_1778:int;
      
      private var var_1501:int;
      
      private var var_1777:int;
      
      private var var_1739:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1780;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1500;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1777;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1779;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1778;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1501;
      }
      
      public function get commission() : int
      {
         return var_1781;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1739 = param1.readBoolean();
         var_1781 = param1.readInteger();
         var_1500 = param1.readInteger();
         var_1501 = param1.readInteger();
         var_1779 = param1.readInteger();
         var_1780 = param1.readInteger();
         var_1778 = param1.readInteger();
         var_1777 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1739;
      }
   }
}
