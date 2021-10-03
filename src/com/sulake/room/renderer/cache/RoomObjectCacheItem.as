package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_564:RoomObjectLocationCacheItem = null;
      
      private var var_163:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         var_564 = new RoomObjectLocationCacheItem(param1);
         var_163 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return var_564;
      }
      
      public function dispose() : void
      {
         if(var_564 != null)
         {
            var_564.dispose();
            var_564 = null;
         }
         if(var_163 != null)
         {
            var_163.dispose();
            var_163 = null;
         }
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return var_163;
      }
   }
}
