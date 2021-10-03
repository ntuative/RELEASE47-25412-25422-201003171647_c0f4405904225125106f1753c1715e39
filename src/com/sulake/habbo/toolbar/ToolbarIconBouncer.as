package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1815:Number;
      
      private var var_564:Number = 0;
      
      private var var_1814:Number;
      
      private var var_565:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1815 = param1;
         var_1814 = param2;
      }
      
      public function update() : void
      {
         var_565 += var_1814;
         var_564 += var_565;
         if(var_564 > 0)
         {
            var_564 = 0;
            var_565 = var_1815 * -1 * var_565;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_565 = param1;
         var_564 = 0;
      }
      
      public function get location() : Number
      {
         return var_564;
      }
   }
}
