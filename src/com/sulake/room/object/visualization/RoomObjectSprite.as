package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1118:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1751:Boolean = false;
      
      private var var_1752:String = "normal";
      
      private var var_1185:String = "";
      
      private var _instanceId:int = 0;
      
      private var var_335:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1748:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_1027:Boolean = false;
      
      private var var_1028:Boolean = false;
      
      private var var_1749:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1750:Boolean = true;
      
      private var var_1015:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1619:String = "";
      
      private var var_818:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         _offset = new Point(0,0);
         super();
         _instanceId = var_1118++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_1028 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1749 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_818 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1752 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1619 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1185 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1751;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1015;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1748;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1750 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_335;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1751 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_1027;
      }
      
      public function get flipV() : Boolean
      {
         return var_1028;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1749;
      }
      
      public function get blendMode() : String
      {
         return var_1752;
      }
      
      public function get instanceId() : int
      {
         return _instanceId;
      }
      
      public function get tag() : String
      {
         return var_1619;
      }
      
      public function get assetName() : String
      {
         return var_1185;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1015 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1750;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1748 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_818 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_335 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_818;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_1027 = param1;
         ++_updateID;
      }
   }
}
