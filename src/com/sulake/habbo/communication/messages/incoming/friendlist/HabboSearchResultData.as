package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2307:Boolean;
      
      private var var_2310:int;
      
      private var var_2308:Boolean;
      
      private var var_1423:String;
      
      private var var_1156:String;
      
      private var var_2058:int;
      
      private var var_1706:String;
      
      private var var_2309:String;
      
      private var var_1707:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2058 = param1.readInteger();
         this.var_1423 = param1.readString();
         this.var_1706 = param1.readString();
         this.var_2307 = param1.readBoolean();
         this.var_2308 = param1.readBoolean();
         param1.readString();
         this.var_2310 = param1.readInteger();
         this.var_1707 = param1.readString();
         this.var_2309 = param1.readString();
         this.var_1156 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1156;
      }
      
      public function get avatarName() : String
      {
         return this.var_1423;
      }
      
      public function get avatarId() : int
      {
         return this.var_2058;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2307;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2309;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1707;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2308;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1706;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2310;
      }
   }
}
