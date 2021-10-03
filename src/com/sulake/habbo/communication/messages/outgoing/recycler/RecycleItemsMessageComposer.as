package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_880:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_880 = new Array();
         var_880.push(param1.length);
         var_880 = var_880.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_880;
      }
   }
}
