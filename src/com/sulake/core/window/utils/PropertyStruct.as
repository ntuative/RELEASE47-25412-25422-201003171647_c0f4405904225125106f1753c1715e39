package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_674:String = "Rectangle";
      
      public static const const_56:String = "Boolean";
      
      public static const const_555:String = "Number";
      
      public static const const_60:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_606:String = "Point";
      
      public static const const_815:String = "Array";
      
      public static const const_855:String = "uint";
      
      public static const const_460:String = "hex";
      
      public static const const_896:String = "Map";
       
      
      private var var_553:String;
      
      private var var_165:Object;
      
      private var var_2299:Boolean;
      
      private var _type:String;
      
      private var var_1745:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_553 = param1;
         var_165 = param2;
         _type = param3;
         var_1745 = param4;
         var_2299 = param3 == const_896 || param3 == const_815 || param3 == const_606 || param3 == const_674;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_460:
               return "0x" + uint(var_165).toString(16);
            case const_56:
               return Boolean(var_165) == true ? "true" : "com.sulake.habbo.communication.messages.incoming.help";
            case const_606:
               return "Point(" + Point(var_165).x + ", " + Point(var_165).y + ")";
            case const_674:
               return "Rectangle(" + Rectangle(var_165).x + ", " + Rectangle(var_165).y + ", " + Rectangle(var_165).width + ", " + Rectangle(var_165).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_896:
               _loc3_ = var_165 as Map;
               _loc1_ = "<var key=\"" + var_553 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_815:
               _loc4_ = var_165 as Array;
               _loc1_ = "<var key=\"" + var_553 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_606:
               _loc5_ = var_165 as Point;
               _loc1_ = "<var key=\"" + var_553 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_674:
               _loc6_ = var_165 as Rectangle;
               _loc1_ = "<var key=\"" + var_553 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_60 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_460:
               _loc1_ = "<var key=\"" + var_553 + "\" value=\"" + "0x" + uint(var_165).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_553 + "\" value=\"" + var_165 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_165;
      }
      
      public function get valid() : Boolean
      {
         return var_1745;
      }
      
      public function get key() : String
      {
         return var_553;
      }
   }
}
