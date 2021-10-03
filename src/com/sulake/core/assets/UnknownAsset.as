package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1147:AssetTypeDeclaration;
      
      private var var_928:String;
      
      private var var_21:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1147 = param1;
         var_928 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1147;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_21 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_21 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_21;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_21 = null;
            var_1147 = null;
            var_928 = null;
         }
      }
      
      public function get url() : String
      {
         return var_928;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_21;
      }
   }
}
