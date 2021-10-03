package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1361:BigInteger;
      
      private var var_570:BigInteger;
      
      private var var_1583:BigInteger;
      
      private var var_1584:BigInteger;
      
      private var var_2245:BigInteger;
      
      private var var_2211:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1361 = param1;
         var_1583 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2245.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1584 = new BigInteger();
         var_1584.fromRadix(param1,param2);
         var_2245 = var_1584.modPow(var_570,var_1361);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2211.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1361.toString() + ",generator: " + var_1583.toString() + ",secret: " + param1);
         var_570 = new BigInteger();
         var_570.fromRadix(param1,param2);
         var_2211 = var_1583.modPow(var_570,var_1361);
         return true;
      }
   }
}
