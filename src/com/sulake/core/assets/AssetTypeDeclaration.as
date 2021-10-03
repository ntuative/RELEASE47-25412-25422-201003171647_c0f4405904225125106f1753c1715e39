package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2050:Class;
      
      private var var_2051:Class;
      
      private var var_2052:String;
      
      private var var_1279:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2052 = param1;
         var_2051 = param2;
         var_2050 = param3;
         if(rest == null)
         {
            var_1279 = new Array();
         }
         else
         {
            var_1279 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2050;
      }
      
      public function get assetClass() : Class
      {
         return var_2051;
      }
      
      public function get mimeType() : String
      {
         return var_2052;
      }
      
      public function get fileTypes() : Array
      {
         return var_1279;
      }
   }
}
