package b2g.telephony;
interface ITelephony {
  int getSupportedRadioAccessFamily(int slotId);
  int getPhoneCount();
  int getVoiceNetworkType(int slotId);
  int getDataNetworkType(int slotId);
  oneway void addEventListener(b2g.telephony.ITelephonyEventListener listener);
  oneway void removeEventListener(b2g.telephony.ITelephonyEventListener listener);
  const String SERVICE_NAME = "b2g_telephony_binder";
  const int NETWORK_TYPE_BITMASK_UNKNOWN = 1;
  const int NETWORK_TYPE_BITMASK_GPRS = 2;
  const int NETWORK_TYPE_BITMASK_EDGE = 4;
  const int NETWORK_TYPE_BITMASK_UMTS = 8;
  const int NETWORK_TYPE_BITMASK_IS95A = 16;
  const int NETWORK_TYPE_BITMASK_IS95B = 32;
  const int NETWORK_TYPE_BITMASK_1XRTT = 64;
  const int NETWORK_TYPE_BITMASK_EVDO_0 = 128;
  const int NETWORK_TYPE_BITMASK_EVDO_A = 256;
  const int NETWORK_TYPE_BITMASK_HSDPA = 512;
  const int NETWORK_TYPE_BITMASK_HSUPA = 1024;
  const int NETWORK_TYPE_BITMASK_HSPA = 2048;
  const int NETWORK_TYPE_BITMASK_EVDO_B = 4096;
  const int NETWORK_TYPE_BITMASK_EHRPD = 4096;
  const int NETWORK_TYPE_BITMASK_LTE = 16384;
  const int NETWORK_TYPE_BITMASK_HSPAP = 32768;
  const int NETWORK_TYPE_BITMASK_GSM = 65536;
  const int NETWORK_TYPE_BITMASK_TD_SCDMA = 131072;
  const int NETWORK_TYPE_BITMASK_IWLAN = 262144;
  const int NETWORK_TYPE_BITMASK_LTE_CA = 524288;
  const int NETWORK_TYPE_BITMASK_NR = 1048576;

  const int NETWORK_TYPE_UNKNOWN = 0;
  const int NETWORK_TYPE_GPRS = 1;
  const int NETWORK_TYPE_EDGE = 2;
  const int NETWORK_TYPE_UMTS = 3;
  const int NETWORK_TYPE_IS95A = 4;
  const int NETWORK_TYPE_IS95B = 5;
  const int NETWORK_TYPE_1xRTT = 6;
  const int NETWORK_TYPE_EVDO_0 = 7;
  const int NETWORK_TYPE_EVDO_A = 8;

  const int NETWORK_TYPE_HSDPA = 9;
  const int NETWORK_TYPE_HSUPA = 10;
  const int NETWORK_TYPE_HSPA = 11;
  const int NETWORK_TYPE_EVDO_B = 12;
  const int NETWORK_TYPE_EHRPD = 13;
  const int NETWORK_TYPE_LTE = 14;
  const int NETWORK_TYPE_HSPAP = 15;
  const int NETWORK_TYPE_GSM = 16;
  const int NETWORK_TYPE_TD_SCDMA = 17;
  const int NETWORK_TYPE_IWLAN = 18;
  const int NETWORK_TYPE_LTE_CA = 19;
  const int NETWORK_TYPE_NR = 20;
  /* {@hide} */
  const int MAX_NETWORK_TYPE = 21;
}
