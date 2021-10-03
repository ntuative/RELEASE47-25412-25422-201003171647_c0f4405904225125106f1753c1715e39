package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_624:int = 8;
      
      public static const const_1439:int = 10;
      
      public static const const_1378:int = 6;
      
      private static var var_981:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1272:int = 0;
      
      public static const const_1540:int = 1;
      
      public static const const_1603:int = 2;
      
      public static const const_1519:int = 3;
      
      public static const const_1497:int = 4;
      
      public static const const_1544:int = 5;
      
      public static const const_1469:int = 9;
      
      public static const const_1563:int = 7;
       
      
      private var var_166:uint = 0;
      
      private var var_982:uint = 0;
      
      private var var_652:Date;
      
      private var var_1757:int = -1;
      
      private var parseFunc:Function;
      
      private var var_462:Boolean = false;
      
      private var var_2302:int = -1;
      
      private var var_1170:uint = 0;
      
      private var var_1755:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_784:uint;
      
      private var var_21:ByteArray;
      
      private var var_653:uint;
      
      private var var_1433:Boolean = false;
      
      private var var_2301:int = -1;
      
      private var var_1435:String = "2.0";
      
      private var var_167:Boolean = false;
      
      private var var_1756:Boolean = false;
      
      private var var_334:String;
      
      private var var_554:uint = 0;
      
      private var var_1171:int = 0;
      
      private var var_384:String = "";
      
      private var var_654:int = 8;
      
      private var var_1434:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_334 = param1;
         _extraFields = new Dictionary();
         var_21 = new ByteArray();
         var_21.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_554;
      }
      
      public function set filename(param1:String) : void
      {
         var_384 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_167 && false)
         {
            var_21.position = 0;
            if(var_981)
            {
               var_21.uncompress.apply(var_21,["deflate"]);
            }
            else
            {
               var_21.uncompress();
            }
            var_21.position = 0;
            var_167 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_384;
      }
      
      public function get date() : Date
      {
         return var_652;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1434)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_166 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_166)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1435;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_167)
         {
            uncompress();
         }
         var_21.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_21.readUTFBytes(var_21.bytesAvailable);
         }
         else
         {
            _loc3_ = var_21.readMultiByte(var_21.bytesAvailable,param2);
         }
         var_21.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_654 === const_624 && !var_1433)
         {
            if(var_981)
            {
               param1.readBytes(var_21,0,var_166);
            }
            else
            {
               if(!var_462)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_21.writeByte(120);
               _loc2_ = uint(~var_1757 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_21.writeByte(_loc2_);
               param1.readBytes(var_21,2,var_166);
               var_21.position = var_21.length;
               var_21.writeUnsignedInt(var_784);
            }
            var_167 = true;
         }
         else
         {
            if(var_654 != const_1272)
            {
               throw new Error("Compression method " + var_654 + " is not supported.");
            }
            param1.readBytes(var_21,0,var_166);
            var_167 = false;
         }
         var_21.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_982 + var_1170 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_21.length = 0;
         var_21.position = 0;
         var_167 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_21.writeUTFBytes(param1);
            }
            else
            {
               var_21.writeMultiByte(param1,param2);
            }
            var_653 = ChecksumUtil.CRC32(var_21);
            var_462 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_652 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1171 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1171 << 8 | 20);
         param1.writeShort(var_334 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_624);
         var _loc5_:Date = var_652 != null ? var_652 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_653);
         param1.writeUnsignedInt(var_166);
         param1.writeUnsignedInt(var_554);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_334 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_384);
         }
         else
         {
            _loc8_.writeMultiByte(var_384,var_334);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_462)
            {
               _loc16_ = var_167;
               if(_loc16_)
               {
                  uncompress();
               }
               var_784 = ChecksumUtil.Adler32(var_21,0,var_21.length);
               var_462 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_784);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_334 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1755);
            }
            else
            {
               _loc8_.writeMultiByte(var_1755,var_334);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_166 > 0)
         {
            if(var_981)
            {
               _loc13_ = 0;
               param1.writeBytes(var_21,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_21,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_166;
      }
      
      protected function compress() : void
      {
         if(!var_167)
         {
            if(false)
            {
               var_21.position = 0;
               var_554 = var_21.length;
               if(var_981)
               {
                  var_21.compress.apply(var_21,["deflate"]);
                  var_166 = var_21.length;
               }
               else
               {
                  var_21.compress();
                  var_166 = -6;
               }
               var_21.position = 0;
               var_167 = true;
            }
            else
            {
               var_166 = 0;
               var_554 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_982 + var_1170)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_334 == "utf-8")
         {
            var_384 = param1.readUTFBytes(var_982);
         }
         else
         {
            var_384 = param1.readMultiByte(var_982,var_334);
         }
         var _loc2_:uint = var_1170;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_384 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_784 = param1.readUnsignedInt();
               var_462 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1171 = _loc2_ >> 8;
         var_1435 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_654 = param1.readUnsignedShort();
         var_1433 = (_loc3_ & 1) !== 0;
         var_1434 = (_loc3_ & 8) !== 0;
         var_1756 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_334 = "utf-8";
         }
         if(var_654 === const_1378)
         {
            var_2301 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2302 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_654 === const_624)
         {
            var_1757 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_652 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_653 = param1.readUnsignedInt();
         var_166 = param1.readUnsignedInt();
         var_554 = param1.readUnsignedInt();
         var_982 = param1.readUnsignedShort();
         var_1170 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_21,0,param1.length);
            var_653 = ChecksumUtil.CRC32(var_21);
            var_462 = false;
         }
         else
         {
            var_21.length = 0;
            var_21.position = 0;
            var_167 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_384 + "\n  date:" + var_652 + "\n  sizeCompressed:" + var_166 + "\n  sizeUncompressed:" + var_554 + "\n  versionHost:" + var_1171 + "\n  versionNumber:" + var_1435 + "\n  compressionMethod:" + var_654 + "\n  encrypted:" + var_1433 + "\n  hasDataDescriptor:" + var_1434 + "\n  hasCompressedPatchedData:" + var_1756 + "\n  filenameEncoding:" + var_334 + "\n  crc32:" + var_653.toString(16) + "\n  adler32:" + var_784.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_167)
         {
            uncompress();
         }
         return var_21;
      }
   }
}
