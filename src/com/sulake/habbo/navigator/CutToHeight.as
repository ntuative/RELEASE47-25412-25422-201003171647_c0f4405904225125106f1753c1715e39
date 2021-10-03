package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToHeight implements BinarySearchTest
   {
       
      
      private var var_165:String;
      
      private var var_434:int;
      
      private var var_195:ITextWindow;
      
      public function CutToHeight()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_165 = param1;
         var_195 = param2;
         var_434 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_195.text = var_165.substring(0,param1) + "...";
         return var_195.textHeight > var_434;
      }
   }
}
