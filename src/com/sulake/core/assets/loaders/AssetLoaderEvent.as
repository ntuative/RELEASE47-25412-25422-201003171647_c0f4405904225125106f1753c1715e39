package com.sulake.core.assets.loaders
{
   import flash.events.Event;
   
   public class AssetLoaderEvent extends Event
   {
      
      public static const const_907:String = "AssetLoaderEventUnload";
      
      public static const const_45:String = "AssetLoaderEventError";
      
      public static const const_970:String = "AssetLoaderEventOpen";
      
      public static const const_940:String = "AssetLoaderEventProgress";
      
      public static const const_893:String = "AssetLoaderEventStatus";
      
      public static const const_32:String = "AssetLoaderEventComplete";
       
      
      private var var_369:int;
      
      public function AssetLoaderEvent(param1:String, param2:int)
      {
         var_369 = param2;
         super(param1,false,false);
      }
      
      public function get status() : int
      {
         return var_369;
      }
      
      override public function clone() : Event
      {
         return new AssetLoaderEvent(type,var_369);
      }
   }
}
