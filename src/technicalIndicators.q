/ src/technicalIndicators.q

/ This module contains functions for calculating various technical indicators.

/ Load TA-Lib functions in q
\l path/to/ta-lib/ml.q

/ Calculate Relative Strength Index (RSI)
/ Parameters:
/   data - Table containing financial data
/   period - Period for RSI calculation
/ Returns:
/   rsi - Resulting RSI values
calcRSI: {[data; period]
    / Use TA-Lib rsi function
    rsi: rsi[period; data`Close];
    
    :rsi;
 };

/ Calculate Commodity Channel Index (CCI)
/ Parameters:
/   data - Table containing financial data
/   period - Period for CCI calculation
/ Returns:
/   cci - Resulting CCI values
calcCCI: {[data; period]
    / Use TA-Lib cci function
    cci: cci[period; data`High; data`Low; data`Close];
    
    :cci;
 };

/ Calculate Average True Range (ATR)
/ Parameters:
/   data - Table containing financial data
/   period - Period for ATR calculation
/ Returns:
/   atr - Resulting ATR values
calcATR: {[data; period]
    / Use TA-Lib atr function
    atr: atr[period; data`High; data`Low; data`Close];
    
    :atr;
 };

/ Calculate On-Balance Volume (OBV)
/ Parameters:
/   data - Table containing financial data
/ Returns:
/   obv - Resulting OBV values
calcOBV: {[data]
    / Use TA-Lib obv function
    obv: obv[data`Close; data`Volume];
    
    :obv;
 };
