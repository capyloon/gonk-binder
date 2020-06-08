/*
 * Copyright (c) 2013 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* (c) 2020 KAI OS TECHNOLOGIES (HONG KONG) LIMITED All rights reserved. This
 * file or any portion thereof may not be reproduced or used in any manner
 * whatsoever without the express written permission of KAI OS TECHNOLOGIES
 * (HONG KONG) LIMITED. KaiOS is the trademark of KAI OS TECHNOLOGIES (HONG
 * KONG) LIMITED or its affiliate company and may be registered in some
 * jurisdictions. All other trademarks are the property of their respective
 * owners.
 */

package b2g.telephony.ims;

import b2g.telephony.ims.IImsMMTelFeature;
import b2g.telephony.ims.IImsFeatureStatusListener;
import b2g.telephony.ims.IImsConfig;
import b2g.telephony.ims.IImsRegistration;
import b2g.telephony.IDeathNotifier;

interface IImsServiceManager {

  const String IMS_SERVICE_MANAGER = "imsservicemanager";

  /**
   * To turn on/off ims.
   * It will trigger IMS registration process.
   *
   * @param slotId The slot id to be turn on/off, start from 0.
   * @param on
   */
  oneway void turnOnIms(int slotId, boolean on);

  /**
   * To know current IMS registration info.
   *
   * @param slotId The slot id.
   * @return The IMS registration object.
   */
  IImsRegistration getRegistration(int slotId);

  /**
   * To get IMS configuration.
   *
   * @param slotId The slot id.
   * @return the IMS configuration object.
   */
  IImsConfig getConfig(int slotId);

  /**
   * To create MMTel service (for call service).
   *
   * @param slotId
   * @param listener The listener to receive status change events.
   */
  IImsMMTelFeature createMmTelFeature(int slotId, in IImsFeatureStatusListener listener);

  /**
   * A shallow object for remote to do linkToDeath.
   * If owner process, ex: Telephony FW, get crash, the binderDied would be triggered multiple times for each listener/callback.
   * If you need a single/universal signale to know owner process status, this is it.
   * Owner process should set this once and remote side could track owner process death status via aNotifier.
   *
   * @param aNotifier the object which is used to represent the universal live status of owner process.
   */
  oneway void setDeathNotifier(in IDeathNotifier aNotifier);
}
