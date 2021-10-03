package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1678:Array;
      
      private var var_1675:String;
      
      private var var_1676:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1675 = param1;
         var_1678 = param2;
         var_1676 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1675;
      }
      
      public function get yieldList() : Array
      {
         return var_1678;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1676;
      }
   }
}
