package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_1873:int;
      
      private var var_1874:Boolean;
      
      private var _offerId:int;
      
      private var var_1634:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1874 = param1.readBoolean();
         var_1873 = param1.readInteger();
         var_1634 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1634;
      }
      
      public function get monthsRequired() : int
      {
         return var_1873;
      }
      
      public function get isVip() : Boolean
      {
         return var_1874;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
