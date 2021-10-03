package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1683:int;
      
      private var var_1684:String;
      
      private var var_968:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_968 = param1.readInteger();
         this.var_1684 = param1.readString();
         this.var_1683 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_968;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_1683;
      }
      
      public function get requesterName() : String
      {
         return this.var_1684;
      }
   }
}
