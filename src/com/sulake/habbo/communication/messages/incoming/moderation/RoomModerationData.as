package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_114:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1727:int;
      
      private var var_402:int;
      
      private var var_744:RoomData;
      
      private var var_1734:int;
      
      private var _ownerName:String;
      
      private var var_2228:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_402 = param1.readInteger();
         var_1727 = param1.readInteger();
         var_2228 = param1.readBoolean();
         var_1734 = param1.readInteger();
         _ownerName = param1.readString();
         var_114 = new RoomData(param1);
         var_744 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1727;
      }
      
      public function get event() : RoomData
      {
         return var_744;
      }
      
      public function get room() : RoomData
      {
         return var_114;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_114 != null)
         {
            var_114.dispose();
            var_114 = null;
         }
         if(var_744 != null)
         {
            var_744.dispose();
            var_744 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get ownerId() : int
      {
         return var_1734;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2228;
      }
   }
}
