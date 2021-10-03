package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1865:int;
      
      private var var_1046:int;
      
      private var var_1864:int;
      
      private var var_1458:int;
      
      private var var_114:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1458 = param1.readInteger();
         var_1864 = param1.readInteger();
         var_1046 = param1.readInteger();
         var_1865 = param1.readInteger();
         var_114 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1458);
      }
      
      public function get chatRecordId() : int
      {
         return var_1865;
      }
      
      public function get reportedUserId() : int
      {
         return var_1046;
      }
      
      public function get callerUserId() : int
      {
         return var_1864;
      }
      
      public function get callId() : int
      {
         return var_1458;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_114;
      }
   }
}
