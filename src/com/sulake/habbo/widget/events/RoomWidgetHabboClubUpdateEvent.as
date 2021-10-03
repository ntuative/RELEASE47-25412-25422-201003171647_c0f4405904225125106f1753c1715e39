package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_205:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1764:Boolean = false;
      
      private var var_1762:int = 0;
      
      private var var_1763:int = 0;
      
      private var var_1761:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_205,param5,param6);
         var_1761 = param1;
         var_1763 = param2;
         var_1762 = param3;
         var_1764 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1762;
      }
      
      public function get periodsLeft() : int
      {
         return var_1763;
      }
      
      public function get daysLeft() : int
      {
         return var_1761;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1764;
      }
   }
}
