package com.sulake.habbo.help.help.data
{
   public class FaqItem
   {
       
      
      private var var_1167:int;
      
      private var var_1168:String;
      
      private var var_2243:String;
      
      private var _index:int;
      
      private var var_2244:Boolean = false;
      
      private var _category:FaqCategory;
      
      public function FaqItem(param1:int, param2:String, param3:int, param4:FaqCategory)
      {
         super();
         var_1167 = param1;
         var_2243 = param2;
         _index = param3;
         _category = param4;
      }
      
      public function get answerText() : String
      {
         return var_1168;
      }
      
      public function get questionId() : int
      {
         return var_1167;
      }
      
      public function get questionText() : String
      {
         return var_2243;
      }
      
      public function set answerText(param1:String) : void
      {
         var_1168 = param1;
         var_2244 = true;
      }
      
      public function get hasAnswer() : Boolean
      {
         return var_2244;
      }
      
      public function get category() : FaqCategory
      {
         return _category;
      }
      
      public function get index() : int
      {
         return _index;
      }
   }
}
