package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   
   public class TextMargins implements IMargins, IDisposable
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_839:int;
      
      private var _right:int;
      
      private var var_837:int;
      
      private var var_838:int;
      
      private var var_179:Function;
      
      public function TextMargins(param1:int, param2:int, param3:int, param4:int, param5:Function)
      {
         super();
         var_837 = param1;
         var_838 = param2;
         _right = param3;
         var_839 = param4;
         var_179 = param5 != null ? param5 : nullCallback;
      }
      
      public function set bottom(param1:int) : void
      {
         var_839 = param1;
         var_179(this);
      }
      
      public function get left() : int
      {
         return var_837;
      }
      
      public function get isZeroes() : Boolean
      {
         return var_837 == 0 && _right == 0 && var_838 == 0 && var_839 == 0;
      }
      
      public function get right() : int
      {
         return _right;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function set top(param1:int) : void
      {
         var_838 = param1;
         var_179(this);
      }
      
      public function get top() : int
      {
         return var_838;
      }
      
      public function set left(param1:int) : void
      {
         var_837 = param1;
         var_179(this);
      }
      
      public function get bottom() : int
      {
         return var_839;
      }
      
      public function clone(param1:Function) : TextMargins
      {
         return new TextMargins(var_837,var_838,_right,var_839,param1);
      }
      
      public function dispose() : void
      {
         var_179 = null;
         _disposed = true;
      }
      
      public function set right(param1:int) : void
      {
         _right = param1;
         var_179(this);
      }
      
      private function nullCallback(param1:IMargins) : void
      {
      }
   }
}
