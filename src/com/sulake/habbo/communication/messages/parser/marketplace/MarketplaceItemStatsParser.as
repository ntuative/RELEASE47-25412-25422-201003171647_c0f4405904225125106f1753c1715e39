package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1493:Array;
      
      private var var_1809:int;
      
      private var var_1944:int;
      
      private var var_1943:int;
      
      private var var_1942:int;
      
      private var _dayOffsets:Array;
      
      private var var_1941:int;
      
      private var var_1492:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1493;
      }
      
      public function get furniTypeId() : int
      {
         return var_1944;
      }
      
      public function get historyLength() : int
      {
         return var_1942;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1943;
      }
      
      public function get offerCount() : int
      {
         return var_1941;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1492;
      }
      
      public function get averagePrice() : int
      {
         return var_1809;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1809 = param1.readInteger();
         var_1941 = param1.readInteger();
         var_1942 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1493 = [];
         var_1492 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1493.push(param1.readInteger());
            var_1492.push(param1.readInteger());
            _loc3_++;
         }
         var_1943 = param1.readInteger();
         var_1944 = param1.readInteger();
         return true;
      }
   }
}
