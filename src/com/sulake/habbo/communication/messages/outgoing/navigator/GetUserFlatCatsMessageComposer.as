package com.sulake.habbo.communication.messages.outgoing.navigator
{
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.IDisposable;
   
   public class GetUserFlatCatsMessageComposer implements IMessageComposer, IDisposable
   {
       
      
      private var var_30:Array;
      
      public function GetUserFlatCatsMessageComposer()
      {
         var_30 = new Array();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return false;
      }
      
      public function getMessageArray() : Array
      {
         return var_30;
      }
      
      public function dispose() : void
      {
         var_30 = null;
      }
   }
}
