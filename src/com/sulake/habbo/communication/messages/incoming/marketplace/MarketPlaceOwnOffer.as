package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1531:int = 2;
      
      public static const const_1593:int = 1;
      
      public static const const_1560:int = 0;
       
      
      private var var_1187:int;
      
      private var var_369:int;
      
      private var var_2368:int;
      
      private var _offerId:int;
      
      private var var_1806:int;
      
      private var var_1807:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1807 = param2;
         var_1806 = param3;
         var_1187 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1807;
      }
      
      public function get furniType() : int
      {
         return var_1806;
      }
      
      public function get price() : int
      {
         return var_1187;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
