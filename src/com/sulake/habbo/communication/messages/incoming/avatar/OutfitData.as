package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1904:String;
      
      private var var_970:String;
      
      private var var_1694:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1694 = param1.readInteger();
         var_1904 = param1.readString();
         var_970 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_970;
      }
      
      public function get figureString() : String
      {
         return var_1904;
      }
      
      public function get slotId() : int
      {
         return var_1694;
      }
   }
}
