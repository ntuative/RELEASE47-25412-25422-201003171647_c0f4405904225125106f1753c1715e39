package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1647:String;
      
      private var var_610:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_610 = param1;
         var_1647 = param2;
      }
      
      public function get race() : String
      {
         return var_1647;
      }
      
      public function get figure() : String
      {
         return var_610;
      }
   }
}
