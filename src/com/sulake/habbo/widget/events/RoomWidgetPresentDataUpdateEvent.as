package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_398:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_426:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_80:String = "RWPDUE_CONTENTS";
      
      public static const const_428:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_436:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_63:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_195:String;
      
      private var var_1967:BitmapData;
      
      private var var_155:int = -1;
      
      private var var_12:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_155 = param2;
         var_195 = param3;
         var_12 = param4;
         var_1967 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1967;
      }
      
      public function get text() : String
      {
         return var_195;
      }
      
      public function get objectId() : int
      {
         return var_155;
      }
      
      public function get controller() : Boolean
      {
         return var_12;
      }
   }
}
