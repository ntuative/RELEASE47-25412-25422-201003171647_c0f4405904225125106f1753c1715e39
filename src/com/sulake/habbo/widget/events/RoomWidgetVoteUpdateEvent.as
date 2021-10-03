package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_119:String = "RWPUE_VOTE_RESULT";
      
      public static const const_131:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1120:int;
      
      private var var_946:String;
      
      private var var_646:Array;
      
      private var var_945:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_946 = param2;
         var_945 = param3;
         var_646 = param4;
         if(var_646 == null)
         {
            var_646 = [];
         }
         var_1120 = param5;
      }
      
      public function get votes() : Array
      {
         return var_646.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1120;
      }
      
      public function get question() : String
      {
         return var_946;
      }
      
      public function get choices() : Array
      {
         return var_945.slice();
      }
   }
}
