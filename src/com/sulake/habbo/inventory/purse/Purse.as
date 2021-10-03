package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1877:Boolean = false;
      
      private var var_1875:int = 0;
      
      private var var_1725:int = 0;
      
      private var var_1876:int = 0;
      
      private var var_1565:int = 0;
      
      private var var_1724:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1565 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1875;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1877;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1877 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1875 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1725 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1565;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1876 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1725;
      }
      
      public function get pixelBalance() : int
      {
         return var_1876;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1724 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1724;
      }
   }
}
