package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_216:String = "e";
      
      public static const const_77:String = "i";
      
      public static const const_83:String = "s";
       
      
      private var var_974:String;
      
      private var var_1161:String;
      
      private var var_1162:int;
      
      private var var_1886:int;
      
      private var var_973:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1161 = param1.readString();
         var_1886 = param1.readInteger();
         var_974 = param1.readString();
         var_973 = param1.readInteger();
         var_1162 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_973;
      }
      
      public function get productType() : String
      {
         return var_1161;
      }
      
      public function get expiration() : int
      {
         return var_1162;
      }
      
      public function get furniClassId() : int
      {
         return var_1886;
      }
      
      public function get extraParam() : String
      {
         return var_974;
      }
   }
}
