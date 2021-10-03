package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1956:String;
      
      private var var_402:int;
      
      private var var_1955:String;
      
      private var var_1957:String;
      
      private var var_1952:int;
      
      private var var_1954:String;
      
      private var var_1953:int;
      
      private var var_626:Array;
      
      private var var_994:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_626 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_994 = false;
            return;
         }
         this.var_994 = true;
         var_1952 = int(_loc2_);
         var_1955 = param1.readString();
         var_402 = int(param1.readString());
         var_1953 = param1.readInteger();
         var_1956 = param1.readString();
         var_1957 = param1.readString();
         var_1954 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_626.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1953;
      }
      
      public function get eventName() : String
      {
         return var_1956;
      }
      
      public function get eventDescription() : String
      {
         return var_1957;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1955;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get creationTime() : String
      {
         return var_1954;
      }
      
      public function get exists() : Boolean
      {
         return var_994;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1952;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_626 = null;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
   }
}
