package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1509:int = -1;
      
      private var var_1252:Boolean;
      
      private var var_1253:String;
      
      private var var_2016:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2016 = String(param1["set-type"]);
         var_1253 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1252 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1509 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1253;
      }
      
      public function get staticId() : int
      {
         return var_1509;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1509 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1252;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1252 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1253 = param1;
      }
      
      public function get setType() : String
      {
         return var_2016;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
