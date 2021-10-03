package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1419:String;
      
      private var var_928:String;
      
      private var var_1417:String;
      
      private var var_1418:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1418 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1419 = _loc5_[0];
         var_1417 = _loc5_[1];
         _name = param2;
         var_928 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1419;
      }
      
      public function get languageCode() : String
      {
         return var_1418;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_928;
      }
      
      public function get encoding() : String
      {
         return var_1417;
      }
      
      public function get id() : String
      {
         return var_1418 + "_" + var_1419 + "." + var_1417;
      }
   }
}
