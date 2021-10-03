package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_119:String = "RSPE_VOTE_RESULT";
      
      public static const const_131:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1120:int = 0;
      
      private var var_946:String = "";
      
      private var var_646:Array;
      
      private var var_945:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_945 = [];
         var_646 = [];
         super(param1,param2,param7,param8);
         var_946 = param3;
         var_945 = param4;
         var_646 = param5;
         if(var_646 == null)
         {
            var_646 = [];
         }
         var_1120 = param6;
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
