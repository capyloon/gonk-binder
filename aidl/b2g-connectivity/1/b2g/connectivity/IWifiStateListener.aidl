package b2g.connectivity;

interface IWifiStateListener {
  oneway void onWifiStateChanged(in boolean enabled);
}

