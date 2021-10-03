package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1162:int = 4;
      
      public static const const_725:int = 3;
      
      public static const const_634:int = 2;
      
      public static const const_927:int = 1;
       
      
      private var var_1829:String;
      
      private var _disposed:Boolean;
      
      private var var_1727:int;
      
      private var var_1826:Boolean;
      
      private var var_824:String;
      
      private var var_796:PublicRoomData;
      
      private var var_1830:int;
      
      private var _index:int;
      
      private var var_1827:String;
      
      private var _type:int;
      
      private var var_1619:String;
      
      private var var_797:GuestRoomData;
      
      private var var_1828:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1829 = param1.readString();
         var_1828 = param1.readString();
         var_1826 = param1.readInteger() == 1;
         var_1827 = param1.readString();
         var_824 = param1.readString();
         var_1830 = param1.readInteger();
         var_1727 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_927)
         {
            var_1619 = param1.readString();
         }
         else if(_type == const_725)
         {
            var_796 = new PublicRoomData(param1);
         }
         else if(_type == const_634)
         {
            var_797 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1830;
      }
      
      public function get popupCaption() : String
      {
         return var_1829;
      }
      
      public function get userCount() : int
      {
         return var_1727;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1826;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_927)
         {
            return 0;
         }
         if(this.type == const_634)
         {
            return this.var_797.maxUserCount;
         }
         if(this.type == const_725)
         {
            return this.var_796.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1828;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_797 != null)
         {
            this.var_797.dispose();
            this.var_797 = null;
         }
         if(this.var_796 != null)
         {
            this.var_796.dispose();
            this.var_796 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_797;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1827;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_796;
      }
      
      public function get picRef() : String
      {
         return var_824;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1619;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
