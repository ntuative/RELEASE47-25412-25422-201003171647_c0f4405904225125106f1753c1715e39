package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_818:String = "price_type_none";
      
      public static const const_385:String = "pricing_model_multi";
      
      public static const const_382:String = "price_type_credits";
      
      public static const const_423:String = "price_type_credits_and_pixels";
      
      public static const const_476:String = "pricing_model_bundle";
      
      public static const const_362:String = "pricing_model_single";
      
      public static const const_632:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1386:String = "pricing_model_unknown";
      
      public static const const_359:String = "price_type_pixels";
       
      
      private var var_832:int;
      
      private var _offerId:int;
      
      private var var_831:int;
      
      private var var_406:String;
      
      private var var_580:String;
      
      private var var_1966:int;
      
      private var var_572:ICatalogPage;
      
      private var var_1233:String;
      
      private var var_405:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1233 = param1.localizationId;
         var_832 = param1.priceInCredits;
         var_831 = param1.priceInPixels;
         var_572 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_406;
      }
      
      public function get page() : ICatalogPage
      {
         return var_572;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1966 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_405;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1233 = "";
         var_832 = 0;
         var_831 = 0;
         var_572 = null;
         if(var_405 != null)
         {
            var_405.dispose();
            var_405 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_580;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1966;
      }
      
      public function get priceInCredits() : int
      {
         return var_832;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_406 = const_362;
            }
            else
            {
               var_406 = const_385;
            }
         }
         else if(param1.length > 1)
         {
            var_406 = const_476;
         }
         else
         {
            var_406 = const_1386;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_406)
         {
            case const_362:
               var_405 = new SingleProductContainer(this,param1);
               break;
            case const_385:
               var_405 = new MultiProductContainer(this,param1);
               break;
            case const_476:
               var_405 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_406);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_832 > 0 && var_831 > 0)
         {
            var_580 = const_423;
         }
         else if(var_832 > 0)
         {
            var_580 = const_382;
         }
         else if(var_831 > 0)
         {
            var_580 = const_359;
         }
         else
         {
            var_580 = const_818;
         }
      }
   }
}
