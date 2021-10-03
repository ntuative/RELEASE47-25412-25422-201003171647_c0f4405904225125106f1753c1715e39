package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_710:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_592:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_266:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1388:Point;
      
      private var var_1389:Rectangle;
      
      private var var_203:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1389 = param2;
         var_1388 = param3;
         var_203 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1389 != null)
         {
            return var_1389.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_203;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1388 != null)
         {
            return var_1388.clone();
         }
         return null;
      }
   }
}
