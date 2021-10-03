package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_542:Array;
      
      private var var_1187:int;
      
      private var var_1415:Array;
      
      private var var_543:Array;
      
      private var var_1739:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1739 = _loc2_.isWrappingEnabled;
         var_1187 = _loc2_.wrappingPrice;
         var_1415 = _loc2_.stuffTypes;
         var_543 = _loc2_.boxTypes;
         var_542 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_542;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1415;
      }
      
      public function get price() : int
      {
         return var_1187;
      }
      
      public function get boxTypes() : Array
      {
         return var_543;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1739;
      }
   }
}
