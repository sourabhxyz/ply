{-
This file is generated by `genPurs` in order to embedded serialized type
names used by `ply-core`, which uses GHC's `Typeable`.
-}
module Ply.Typename (class PlyTypeName, plyTypeName) where

import Type.Proxy (Proxy)

import Contract.Address (Address, PubKeyHash)
import Contract.Time (POSIXTime)
import Contract.Transaction (TransactionHash, TransactionInput, TransactionOutput)
import Contract.Value (Value, CurrencySymbol, TokenName)
import Ctl.Internal.Serialization.Hash (ScriptHash)
import Ctl.Internal.Types.ByteArray (ByteArray)
import Ctl.Internal.Types.Datum (Datum)
import Ctl.Internal.Types.PlutusData (PlutusData)
import Ctl.Internal.Types.RawBytes (RawBytes)
import Ctl.Internal.Types.Redeemer (RedeemerHash)
import Ctl.Internal.Types.Transaction (DataHash)
import Data.BigInt (BigInt)
import Data.Unit (Unit)

class PlyTypeName :: forall k. k -> Constraint
class PlyTypeName a where
  plyTypeName :: Proxy a -> String

instance PlyTypeName Boolean where
  plyTypeName _ = "GHC.Types:Bool"

instance PlyTypeName BigInt where
  plyTypeName _ = "GHC.Num.Integer:Integer"

instance PlyTypeName Unit where
  plyTypeName _ = "GHC.Tuple:()"

instance PlyTypeName RawBytes where
  plyTypeName _ = "PlutusTx.Builtins.Internal:BuiltinByteString"

instance PlyTypeName ByteArray where
  plyTypeName _ = "Data.ByteString.Internal:ByteString"

instance PlyTypeName String where
  plyTypeName _ = "Data.Text.Internal:Text"

instance PlyTypeName PlutusData where
  plyTypeName _ = "PlutusCore.Data:Data"

instance PlyTypeName Value where
  plyTypeName _ = "PlutusLedgerApi.V1.Value:Value"

instance PlyTypeName Address where
  plyTypeName _ = "PlutusLedgerApi.V1.Address:Address"

instance PlyTypeName CurrencySymbol where
  plyTypeName _ = "PlutusLedgerApi.V1.Value:CurrencySymbol"

instance PlyTypeName TokenName where
  plyTypeName _ = "PlutusLedgerApi.V1.Value:TokenName"

instance PlyTypeName PubKeyHash where
  plyTypeName _ = "PlutusLedgerApi.V1.Crypto:PubKeyHash"

instance PlyTypeName ScriptHash where
  plyTypeName _ = "PlutusLedgerApi.V1.Scripts:ScriptHash"

instance PlyTypeName POSIXTime where
  plyTypeName _ = "PlutusLedgerApi.V1.Time:POSIXTime"

instance PlyTypeName TransactionHash where
  plyTypeName _ = "PlutusLedgerApi.V1.Tx:TxId"

instance PlyTypeName TransactionInput where
  plyTypeName _ = "PlutusLedgerApi.V1.Tx:TxOutRef"

instance PlyTypeName TransactionOutput where
  plyTypeName _ = "PlutusLedgerApi.V2.Tx:TxOut"

instance PlyTypeName Datum where
  plyTypeName _ = "PlutusLedgerApi.V1.Scripts:Datum"

instance PlyTypeName DataHash where
  plyTypeName _ = "PlutusLedgerApi.V1.Scripts:DatumHash"

instance PlyTypeName RedeemerHash where
  plyTypeName _ = "PlutusLedgerApi.V1.Scripts:RedeemerHash"
