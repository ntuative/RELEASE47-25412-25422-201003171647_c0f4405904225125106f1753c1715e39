package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_773:LegacyWallGeometry = null;
      
      private var var_546:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_545:TileHeightMap = null;
      
      private var var_1721:String = null;
      
      private var _roomId:int = 0;
      
      private var var_547:SelectedRoomObjectData = null;
      
      private var var_772:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_773 = new LegacyWallGeometry();
         var_772 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_546 != null)
         {
            var_546.dispose();
         }
         var_546 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_545 != null)
         {
            var_545.dispose();
         }
         var_545 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1721 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_773;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_547;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_772;
      }
      
      public function dispose() : void
      {
         if(var_545 != null)
         {
            var_545.dispose();
            var_545 = null;
         }
         if(var_773 != null)
         {
            var_773.dispose();
            var_773 = null;
         }
         if(var_772 != null)
         {
            var_772.dispose();
            var_772 = null;
         }
         if(var_546 != null)
         {
            var_546.dispose();
            var_546 = null;
         }
         if(var_547 != null)
         {
            var_547.dispose();
            var_547 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_545;
      }
      
      public function get worldType() : String
      {
         return var_1721;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_547 != null)
         {
            var_547.dispose();
         }
         var_547 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_546;
      }
   }
}
