/*******************************************************************************
 *  Filename    : IVshRemoteClient.java
 *
 *  Author      : Kacper Gotfryd <k.gotfryd@samsung.com>
 *
 *  Date        : 30 Jul 2012
 *
 *  Description : 
 *
 *  (C) Samsung Poland R&D Center, Samsung Electronics
 *
 *  COPYRIGHT  NOTICE
 *  =================
 *  The contents of this file are protected under international copyright
 *  laws and may not be copied.  Neither may they be used for any purpose
 *  other than generating computer code for running on Samsung products and
 *  loading, embedding or running same on Samsung products.
 *
 *  CONFIDENTIALITY AGREEMENT
 *  =========================
 *  The entire contents of this file comprise commercially and/or technically
 *  confidential information.  In accepting receipt of this document, the
 *  recipient agrees that the contents will not be used other than for the
 *  sole purpose of generating computer code for running on Samsung products
 *  and for loading, embedding or running same on Samsung products and that
 *  the contents may not be disclosed (by the authorized recipient or
 *  otherwise).  This confidentiality is subject to usual exceptions for
 *  disclosure which the recipient can prove to be prior or independent or
 *  required by a court of law.
 *
 *******************************************************************************/

package com.sec.ims.client.csh;

import android.os.Bundle;
import android.view.Surface;

/**
 * AIDL interface responsible for handling video share calls from client to service.
 * 
 * @author Kacper Gotfryd <k.gotfryd@samsung.com>
 */
interface IVshRemoteClient {
	/**
     * This method sets video display of selected channel to selected surface.
     * After executing this method a request information will be passed to FW to
     * start sharing a video. Before calling request for video share we should
     * have already established connection with other device.
     * 
     * @param session id used in creating the vsh
     * @param surface is a reference to the surface view.
     * @param width is a value representing the bound view of the width.
     * @param height is a value representing the bound view of the height.
     * @param orientation is a value representing the current orientation of the
     *            surface view. Values that can be used for setting orientation
     *            are located in {@link ICshConstants#VshConstants VshConstants}
     *            .
     * @return success or error state. Error messages are located in
     *         {@link ICshConstants#VshConstants VshConstants}.
     */
    int openVshSource(long videoShareId, in android.view.Surface surface, int width, int height, int orientation);

    /**
     * This method closes video displayed on selected surface. If we call this
     * method on a surface that has a video of outgoing video share the stream
     * will be closed, but the content share session will still be open. Needs
     * to be synchronized with UI.
     * 
     * @param session id used in creating the vsh
     * @param surface is a reference to the surface view.
     * @param endShare is a boolean value informing the flow if we want to end the share when we close vsh.
     * @return success or error state. Error messages are located in
     *         {@link ICshConstants#VshConstants VshConstants}.
     */
    int closeVshSource(long videoShareId, in android.view.Surface surface, boolean endShare);
}
