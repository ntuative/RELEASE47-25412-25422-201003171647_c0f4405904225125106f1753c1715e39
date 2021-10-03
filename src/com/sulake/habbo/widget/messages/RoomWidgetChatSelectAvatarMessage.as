package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatSelectAvatarMessage extends RoomWidgetMessage
   {
      
      public static const const_547:String = "RWCSAM_MESSAGE_SELECT_AVATAR";
       
      
      private var _userName:String;
      
      private var _roomCategory:int;
      
      private var var_155:int;
      
      private var _roomId:int;
      
      public function RoomWidgetChatSelectAvatarMessage(param1:String, param2:int, param3:String, param4:int, param5:int)
      {
         super(param1);
         var_155 = param2;
         _roomId = param4;
         _userName = param3;
         _roomCategory = param5;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
      
      public function get objectId() : int
      {
         return var_155;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
