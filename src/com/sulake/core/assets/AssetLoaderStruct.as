package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_698:IAssetLoader;
      
      private var var_1185:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1185 = param1;
         var_698 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_698;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_698 != null)
            {
               if(true)
               {
                  var_698.dispose();
                  var_698 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1185;
      }
   }
}
