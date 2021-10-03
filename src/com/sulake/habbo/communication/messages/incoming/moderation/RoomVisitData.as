package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_712:String;
      
      private var var_1938:int;
      
      private var var_1555:Boolean;
      
      private var _roomId:int;
      
      private var var_1939:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1555 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_712 = param1.readString();
         var_1939 = param1.readInteger();
         var_1938 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1555;
      }
      
      public function get roomName() : String
      {
         return var_712;
      }
      
      public function get enterMinute() : int
      {
         return var_1938;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1939;
      }
   }
}
