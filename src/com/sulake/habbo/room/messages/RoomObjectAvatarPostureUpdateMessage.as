package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1709:String;
      
      private var var_819:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1709 = param1;
         var_819 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1709;
      }
      
      public function get parameter() : String
      {
         return var_819;
      }
   }
}
