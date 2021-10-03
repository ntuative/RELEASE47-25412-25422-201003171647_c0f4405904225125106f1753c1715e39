package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1493:Array;
      
      private var var_1809:int;
      
      private var var_1944:int;
      
      private var var_1942:int;
      
      private var var_1943:int;
      
      private var _dayOffsets:Array;
      
      private var var_1941:int;
      
      private var var_1492:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1493 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1944;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1492 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1809 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1942;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1943;
      }
      
      public function get offerCount() : int
      {
         return var_1941;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1941 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1492;
      }
      
      public function get averagePrice() : int
      {
         return var_1809;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1943 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1942 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1944 = param1;
      }
   }
}
