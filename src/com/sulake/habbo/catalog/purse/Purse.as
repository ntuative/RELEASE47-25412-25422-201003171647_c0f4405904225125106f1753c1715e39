package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1725:int = 0;
      
      private var var_1723:int = 0;
      
      private var var_1640:int = 0;
      
      private var var_1724:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1723;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1723 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1725 = param1;
      }
      
      public function get credits() : int
      {
         return var_1640;
      }
      
      public function get clubDays() : int
      {
         return var_1725;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1724 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1724;
      }
   }
}
