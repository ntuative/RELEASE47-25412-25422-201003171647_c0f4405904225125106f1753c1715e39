package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1442:int;
      
      private var var_1443:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1442;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1442 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1442 = this.var_1442;
         _loc1_.var_1443 = this.var_1443;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1443 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1443;
      }
   }
}
