package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1727:int;
      
      private var var_1960:String;
      
      private var var_1959:int;
      
      private var var_1962:int;
      
      private var var_744:Boolean;
      
      private var var_1800:Boolean;
      
      private var var_402:int;
      
      private var var_1117:String;
      
      private var var_1804:int;
      
      private var var_1116:int;
      
      private var _ownerName:String;
      
      private var var_712:String;
      
      private var var_1961:int;
      
      private var var_1963:RoomThumbnailData;
      
      private var var_1964:Boolean;
      
      private var var_626:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_626 = new Array();
         super();
         var_402 = param1.readInteger();
         var_744 = param1.readBoolean();
         var_712 = param1.readString();
         _ownerName = param1.readString();
         var_1804 = param1.readInteger();
         var_1727 = param1.readInteger();
         var_1961 = param1.readInteger();
         var_1117 = param1.readString();
         var_1959 = param1.readInteger();
         var_1964 = param1.readBoolean();
         var_1962 = param1.readInteger();
         var_1116 = param1.readInteger();
         var_1960 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_626.push(_loc4_);
            _loc3_++;
         }
         var_1963 = new RoomThumbnailData(param1);
         var_1800 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1961;
      }
      
      public function get roomName() : String
      {
         return var_712;
      }
      
      public function get userCount() : int
      {
         return var_1727;
      }
      
      public function get score() : int
      {
         return var_1962;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1960;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1964;
      }
      
      public function get tags() : Array
      {
         return var_626;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1800;
      }
      
      public function get event() : Boolean
      {
         return var_744;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1116;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1959;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1963;
      }
      
      public function get doorMode() : int
      {
         return var_1804;
      }
      
      public function get flatId() : int
      {
         return var_402;
      }
      
      public function get description() : String
      {
         return var_1117;
      }
   }
}
