package b2g.connectivity;
interface IConnectivity {
  boolean isAlive();
  b2g.connectivity.NetworkInfoParcel getActiveNetworkInfo();
  b2g.connectivity.NetworkInfoParcel[] getNetworkInfos();
  void addEventListener(b2g.connectivity.IConnectivityEventListener listener);
  void removeEventListener(b2g.connectivity.IConnectivityEventListener listener);
  b2g.connectivity.TetheringStatusParcel getTetheringStatus();
  void addTetheringStatusListener(b2g.connectivity.ITetheringStatusListener listener);
  void removeTetheringStatusListener(b2g.connectivity.ITetheringStatusListener listener);
  b2g.connectivity.CaptivePortalLandingParcel[] getCaptivePortalLandings();
  void addCaptivePortalLandingListener(b2g.connectivity.ICaptivePortalLandingListener listener);
  void removeCaptivePortalLandingListener(b2g.connectivity.ICaptivePortalLandingListener listener);
  const String SERVICE_NAME = "b2g_connectivity_binder";
  const int NETWORK_STATE_UNKNOWN = -1;
  const int NETWORK_STATE_CONNECTING = 0;
  const int NETWORK_STATE_CONNECTED = 1;
  const int NETWORK_STATE_DISCONNECTING = 2;
  const int NETWORK_STATE_DISCONNECTED = 3;
  const int NETWORK_STATE_ENABLED = 4;
  const int NETWORK_STATE_DISABLED = 5;
  const int NETWORK_STATE_SUSPENDED = 6;
  const int NETWORK_TYPE_UNKNOWN = -1;
  const int NETWORK_TYPE_WIFI = 0;
  const int NETWORK_TYPE_MOBILE = 1;
  const int NETWORK_TYPE_MOBILE_MMS = 2;
  const int NETWORK_TYPE_MOBILE_SUPL = 3;
  const int NETWORK_TYPE_WIFI_P2P = 4;
  const int NETWORK_TYPE_MOBILE_IMS = 5;
  const int NETWORK_TYPE_MOBILE_DUN = 6;
  const int NETWORK_TYPE_MOBILE_FOTA = 7;
  const int NETWORK_TYPE_ETHERNET = 8;
  const int NETWORK_TYPE_MOBILE_HIPRI = 9;
  const int NETWORK_TYPE_MOBILE_CBS = 10;
  const int NETWORK_TYPE_MOBILE_IA = 11;
  const int NETWORK_TYPE_MOBILE_ECC = 12;
  const int NETWORK_TYPE_MOBILE_XCAP = 13;
  const int TETHERING_STATE_INACTIVE = 0;
  const int TETHERING_STATE_ACTIVE = 1;
}