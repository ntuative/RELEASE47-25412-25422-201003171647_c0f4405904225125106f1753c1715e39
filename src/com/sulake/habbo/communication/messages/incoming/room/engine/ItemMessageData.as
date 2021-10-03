package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_85:Number = 0;
      
      private var _data:String = "";
      
      private var var_1454:int = 0;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2237:Boolean = false;
      
      private var var_2375:String = "";
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_225:String = "";
      
      private var var_2236:int = 0;
      
      private var var_2238:int = 0;
      
      private var var_2109:int = 0;
      
      private var var_2111:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2237 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2237;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_194)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_225;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_194)
         {
            var_2109 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_194)
         {
            var_2236 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_194)
         {
            var_2238 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_194)
         {
            var_225 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_194)
         {
            var_2111 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_194)
         {
            var_35 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_2109;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_194)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2236;
      }
      
      public function get wallY() : Number
      {
         return var_2238;
      }
      
      public function get localY() : Number
      {
         return var_2111;
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_85 = param1;
         }
      }
   }
}
