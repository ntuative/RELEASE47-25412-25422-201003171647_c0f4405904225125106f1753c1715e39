package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1146:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_766:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1146 = param1;
         var_766 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_766;
      }
      
      public function get identifier() : IID
      {
         return var_1146;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1146 = null;
            while(false)
            {
               var_766.pop();
            }
            var_766 = null;
         }
      }
   }
}
