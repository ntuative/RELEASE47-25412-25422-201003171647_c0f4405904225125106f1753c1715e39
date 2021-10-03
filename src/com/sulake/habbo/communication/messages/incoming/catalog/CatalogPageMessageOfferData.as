package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_815:Array;
      
      private var var_832:int;
      
      private var var_1233:String;
      
      private var _offerId:int;
      
      private var var_831:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1233 = param1.readString();
         var_832 = param1.readInteger();
         var_831 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_815 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_815.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_815;
      }
      
      public function get priceInCredits() : int
      {
         return var_832;
      }
      
      public function get localizationId() : String
      {
         return var_1233;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_831;
      }
   }
}
