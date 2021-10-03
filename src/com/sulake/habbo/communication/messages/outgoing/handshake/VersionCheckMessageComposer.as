package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2153:String;
      
      private var var_1330:String;
      
      private var var_2154:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2154 = param1;
         var_1330 = param2;
         var_2153 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2154,var_1330,var_2153];
      }
      
      public function dispose() : void
      {
      }
   }
}
