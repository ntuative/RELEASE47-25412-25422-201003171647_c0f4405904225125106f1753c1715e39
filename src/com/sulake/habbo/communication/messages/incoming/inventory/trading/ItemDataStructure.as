package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1087:String;
      
      private var var_1842:int;
      
      private var var_1851:int;
      
      private var var_1454:int;
      
      private var var_1854:int;
      
      private var _category:int;
      
      private var var_2365:int;
      
      private var var_1850:int;
      
      private var var_1852:int;
      
      private var var_1849:int;
      
      private var var_1853:int;
      
      private var var_1848:Boolean;
      
      private var var_1378:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1842 = param1;
         var_1087 = param2;
         var_1851 = param3;
         var_1849 = param4;
         _category = param5;
         var_1378 = param6;
         var_1454 = param7;
         var_1852 = param8;
         var_1850 = param9;
         var_1853 = param10;
         var_1854 = param11;
         var_1848 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1849;
      }
      
      public function get extra() : int
      {
         return var_1454;
      }
      
      public function get stuffData() : String
      {
         return var_1378;
      }
      
      public function get groupable() : Boolean
      {
         return var_1848;
      }
      
      public function get creationMonth() : int
      {
         return var_1853;
      }
      
      public function get roomItemID() : int
      {
         return var_1851;
      }
      
      public function get itemType() : String
      {
         return var_1087;
      }
      
      public function get itemID() : int
      {
         return var_1842;
      }
      
      public function get songID() : int
      {
         return var_1454;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1852;
      }
      
      public function get creationYear() : int
      {
         return var_1854;
      }
      
      public function get creationDay() : int
      {
         return var_1850;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
