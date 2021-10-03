package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1017:Boolean;
      
      private var var_1018:Boolean;
      
      private var var_1016:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1017;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1018;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1016 = param1.readBoolean();
         var_1018 = param1.readBoolean();
         var_1017 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1016;
      }
      
      public function flush() : Boolean
      {
         var_1016 = false;
         var_1018 = false;
         var_1017 = false;
         return true;
      }
   }
}
