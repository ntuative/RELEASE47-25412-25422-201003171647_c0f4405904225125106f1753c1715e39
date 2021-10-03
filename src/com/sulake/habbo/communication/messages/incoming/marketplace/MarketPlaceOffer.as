package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1187:int;
      
      private var var_1810:int = -1;
      
      private var var_369:int;
      
      private var var_1809:int;
      
      private var var_1806:int;
      
      private var _offerId:int;
      
      private var var_1186:int;
      
      private var var_1807:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1807 = param2;
         var_1806 = param3;
         var_1187 = param4;
         var_369 = param5;
         var_1810 = param6;
         var_1809 = param7;
         var_1186 = param8;
      }
      
      public function get status() : int
      {
         return var_369;
      }
      
      public function get price() : int
      {
         return var_1187;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1810;
      }
      
      public function get offerCount() : int
      {
         return var_1186;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1806;
      }
      
      public function get averagePrice() : int
      {
         return var_1809;
      }
      
      public function get furniId() : int
      {
         return var_1807;
      }
   }
}
