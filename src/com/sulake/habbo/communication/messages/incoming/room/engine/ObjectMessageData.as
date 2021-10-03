package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_957:int = 0;
      
      private var _data:String = "";
      
      private var var_1454:int = -1;
      
      private var var_35:int = 0;
      
      private var _type:int = 0;
      
      private var var_958:int = 0;
      
      private var var_2375:String = "";
      
      private var var_1698:int = 0;
      
      private var _id:int = 0;
      
      private var var_194:Boolean = false;
      
      private var var_225:int = 0;
      
      private var var_2131:String = null;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_85:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_194)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_194)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_225;
      }
      
      public function get extra() : int
      {
         return var_1454;
      }
      
      public function get state() : int
      {
         return var_35;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_194)
         {
            var_225 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_194)
         {
            var_84 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_194)
         {
            var_1454 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_85;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_194)
         {
            var_35 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1698;
      }
      
      public function get staticClass() : String
      {
         return var_2131;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_194)
         {
            var_1698 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_194)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_194)
         {
            var_2131 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_194 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_194)
         {
            var_957 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_194)
         {
            var_958 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_194)
         {
            var_85 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_957;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get sizeY() : int
      {
         return var_958;
      }
   }
}
