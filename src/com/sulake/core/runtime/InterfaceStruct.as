package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_383:uint;
      
      private var var_979:IUnknown;
      
      private var var_1169:String;
      
      private var var_980:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_980 = param1;
         var_1169 = getQualifiedClassName(var_980);
         var_979 = param2;
         var_383 = 0;
      }
      
      public function get iid() : IID
      {
         return var_980;
      }
      
      public function get disposed() : Boolean
      {
         return var_979 == null;
      }
      
      public function get references() : uint
      {
         return var_383;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_383) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_979;
      }
      
      public function get iis() : String
      {
         return var_1169;
      }
      
      public function reserve() : uint
      {
         return ++var_383;
      }
      
      public function dispose() : void
      {
         var_980 = null;
         var_1169 = null;
         var_979 = null;
         var_383 = 0;
      }
   }
}
