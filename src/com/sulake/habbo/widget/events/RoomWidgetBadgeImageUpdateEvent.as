package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_508:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2152:BitmapData;
      
      private var var_1738:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_508,param3,param4);
         var_1738 = param1;
         var_2152 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2152;
      }
      
      public function get badgeID() : String
      {
         return var_1738;
      }
   }
}
