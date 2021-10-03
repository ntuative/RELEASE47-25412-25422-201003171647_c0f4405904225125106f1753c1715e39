package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2321:int;
      
      private var var_2322:int;
      
      private var var_2323:int;
      
      private var var_218:Array;
      
      private var var_2320:int;
      
      private var var_2319:int;
      
      private var var_15:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_15 = new Array();
         this.var_218 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2321;
      }
      
      public function get friends() : Array
      {
         return this.var_218;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2323;
      }
      
      public function get categories() : Array
      {
         return this.var_15;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2322;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2319;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2319 = param1.readInteger();
         this.var_2323 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_15.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_218.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2322 = param1.readInteger();
         this.var_2320 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2320;
      }
   }
}
