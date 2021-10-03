package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1727:int;
      
      private var var_1619:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1619 = param1.readString();
         this.var_1727 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1727;
      }
      
      public function get tag() : String
      {
         return this.var_1619;
      }
   }
}
