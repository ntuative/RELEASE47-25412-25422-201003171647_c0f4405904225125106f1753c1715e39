package com.sulake.habbo.navigator
{
   import com.sulake.core.window.components.ITextWindow;
   
   public class CutToWidth implements BinarySearchTest
   {
       
      
      private var var_435:int;
      
      private var var_165:String;
      
      private var var_195:ITextWindow;
      
      public function CutToWidth()
      {
         super();
      }
      
      public function beforeSearch(param1:String, param2:ITextWindow, param3:int) : void
      {
         var_165 = param1;
         var_195 = param2;
         var_435 = param3;
      }
      
      public function test(param1:int) : Boolean
      {
         var_195.text = var_165.substring(0,param1) + "...";
         return var_195.textWidth > var_435;
      }
   }
}
