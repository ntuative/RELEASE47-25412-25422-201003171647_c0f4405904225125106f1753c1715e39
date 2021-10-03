package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1036:int = 0;
      
      private var var_1135:int = 0;
      
      private var var_1663:String = "";
      
      private var var_1035:int = 0;
      
      private var var_1665:String = "";
      
      private var var_1666:int = 0;
      
      private var var_1508:String = "";
      
      private var var_1664:int = 0;
      
      private var var_1660:int = 0;
      
      private var var_1661:String = "";
      
      private var var_1662:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1664 = param1;
         var_1661 = param2;
         var_1508 = param3;
         var_1663 = param4;
         var_1665 = param5;
         if(param6)
         {
            var_1135 = 1;
         }
         else
         {
            var_1135 = 0;
         }
         var_1666 = param7;
         var_1660 = param8;
         var_1035 = param9;
         var_1662 = param10;
         var_1036 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1664,var_1661,var_1508,var_1663,var_1665,var_1135,var_1666,var_1660,var_1035,var_1662,var_1036];
      }
      
      public function dispose() : void
      {
      }
   }
}
