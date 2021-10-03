package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1881:int;
      
      private var var_403:Boolean;
      
      private var var_1882:Boolean;
      
      private var var_811:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1882 = param1.readBoolean();
         if(var_1882)
         {
            var_1881 = param1.readInteger();
            var_403 = param1.readBoolean();
         }
         else
         {
            var_811 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_811 != null)
         {
            var_811.dispose();
            var_811 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1881;
      }
      
      public function get owner() : Boolean
      {
         return var_403;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1882;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_811;
      }
   }
}
