package com.sulake.habbo.widget.events
{
   public class RoomWidgetSettingsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_324:String = "RWSUE_SETTINGS";
       
      
      private var var_681:Number;
      
      public function RoomWidgetSettingsUpdateEvent(param1:String, param2:Number, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         var_681 = param2;
      }
      
      public function get volume() : Number
      {
         return var_681;
      }
   }
}
