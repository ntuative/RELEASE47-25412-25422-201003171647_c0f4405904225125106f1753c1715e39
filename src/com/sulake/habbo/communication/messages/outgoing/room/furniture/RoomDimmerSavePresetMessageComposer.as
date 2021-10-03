package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1740:int;
      
      private var var_1741:int;
      
      private var var_2253:Boolean;
      
      private var var_2254:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2252:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1741 = param1;
         var_1740 = param2;
         var_2254 = param3;
         var_2252 = param4;
         var_2253 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1741,var_1740,var_2254,var_2252,int(var_2253)];
      }
      
      public function dispose() : void
      {
      }
   }
}
