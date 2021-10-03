package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1420:int = 10;
       
      
      private var var_1520:NavigatorSettingsMessageParser;
      
      private var var_1281:int;
      
      private var var_2062:int;
      
      private var var_2059:Boolean;
      
      private var var_1054:Array;
      
      private var var_866:Dictionary;
      
      private var var_1053:Array;
      
      private var var_2318:int;
      
      private var var_2060:int;
      
      private var var_2058:int;
      
      private var var_2057:int;
      
      private var var_588:PublicRoomShortData;
      
      private var var_415:RoomEventData;
      
      private var var_134:MsgWithRequestId;
      
      private var var_1701:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2061:Boolean;
      
      private var var_193:GuestRoomData;
      
      private var var_707:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1054 = new Array();
         var_1053 = new Array();
         var_866 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2062;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2061;
      }
      
      public function startLoading() : void
      {
         this.var_707 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2061 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_415 != null)
         {
            var_415.dispose();
         }
         var_415 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_134 != null && var_134 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_134 != null && var_134 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_134 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_193;
      }
      
      public function get allCategories() : Array
      {
         return var_1054;
      }
      
      public function onRoomExit() : void
      {
         if(var_415 != null)
         {
            var_415.dispose();
            var_415 = null;
         }
         if(var_588 != null)
         {
            var_588.dispose();
            var_588 = null;
         }
         if(var_193 != null)
         {
            var_193.dispose();
            var_193 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_707 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1520;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_707 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_588 = null;
         var_193 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_588 = param1.publicSpace;
            var_415 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2318 = param1.limit;
         this.var_1281 = param1.favouriteRoomIds.length;
         this.var_866 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_866[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_134 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_588;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2059;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_134 = param1;
         var_707 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2058 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_193 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_707;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1053;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1054 = param1;
         var_1053 = new Array();
         for each(_loc2_ in var_1054)
         {
            if(_loc2_.visible)
            {
               var_1053.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2060;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2057;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1520 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_134 == null)
         {
            return;
         }
         var_134.dispose();
         var_134 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_415;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_866[param1] = !!param2 ? "yes" : null;
         var_1281 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_134 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2058;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_134 != null && var_134 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2059 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2060 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1701 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_193 != null)
         {
            var_193.dispose();
         }
         var_193 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_193 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1520.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1281 >= var_2318;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2057 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1701;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_193 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2062 = param1;
      }
   }
}
