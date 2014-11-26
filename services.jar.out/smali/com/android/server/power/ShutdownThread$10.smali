.class Lcom/android/server/power/ShutdownThread$10;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(ILandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/net/wifi/WifiManager;J[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$10;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$10;->val$mWifiManager:Landroid/net/wifi/WifiManager;

    iput-wide p3, p0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    const-string v18, "ShutdownThread"

    const-string v19, "!@Start shutdown radios"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v18, "sys.deviceOffReq"

    const-string v19, "1"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v18, "sys.radio.shutdown"

    const-string/jumbo v19, "true"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    const-string v18, "nfc"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v11

    const-string/jumbo v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v13

    const-string v18, "bluetooth_manager"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    const-string v18, "connectivity"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v4

    const/4 v14, 0x0

    const/4 v3, 0x1

    const/4 v15, 0x1

    :try_start_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v18

    if-eqz v18, :cond_2

    const-string/jumbo v18, "phone_msim"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v10

    if-eqz v10, :cond_7

    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    if-eqz v15, :cond_1

    invoke-interface {v10, v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v18

    if-nez v18, :cond_1

    const/4 v15, 0x1

    :goto_1
    invoke-interface {v10, v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v18

    if-eqz v18, :cond_0

    const-string v18, "ShutdownThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Turning off radio on Subscription :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0, v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    :cond_2
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v18

    if-nez v18, :cond_f

    :cond_3
    const/4 v15, 0x1

    :goto_2
    if-eqz v4, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v4, v0}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_4
    if-eqz v13, :cond_5

    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v18

    if-nez v18, :cond_6

    :cond_5
    const/4 v15, 0x1

    :cond_6
    if-nez v15, :cond_10

    const-string v18, "ShutdownThread"

    const-string v19, "Turning off radio..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_3
    if-eqz v14, :cond_8

    :try_start_1
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v18

    if-nez v18, :cond_11

    :cond_8
    const/16 v16, 0x1

    :goto_4
    if-nez v16, :cond_9

    const-string v18, "ShutdownThread"

    const-string v19, "Turning off radio2..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_5
    const-string v18, "ShutdownThread"

    const-string v19, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_a

    :try_start_2
    invoke-interface {v11}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    :cond_a
    const/4 v12, 0x1

    :goto_6
    if-nez v12, :cond_b

    const-string v18, "ShutdownThread"

    const-string v19, "Turning off NFC..."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    :try_start_3
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_c
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_1b

    if-nez v3, :cond_e

    if-eqz v2, :cond_d

    :try_start_4
    invoke-interface {v2}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v18

    if-nez v18, :cond_13

    const/4 v3, 0x1

    :cond_d
    :goto_9
    if-eqz v3, :cond_e

    const-string v18, "ShutdownThread"

    const-string v19, "Bluetooth turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-nez v15, :cond_17

    :try_start_5
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v18

    if-eqz v18, :cond_15

    const-string/jumbo v18, "phone_msim"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v10

    const/4 v15, 0x1

    if-eqz v10, :cond_16

    const/4 v8, 0x0

    :goto_a
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_16

    if-eqz v15, :cond_14

    invoke-interface {v10, v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v18

    if-nez v18, :cond_14

    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_f
    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_10
    :try_start_6
    const-string v18, "ShutdownThread"

    const-string/jumbo v19, "radio already turned off"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during radio shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v15, 0x1

    goto/16 :goto_3

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_4

    :catch_1
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v12, 0x0

    goto/16 :goto_6

    :catch_2
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during NFC shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v12, 0x1

    goto/16 :goto_7

    :catch_3
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during bluetooth permanent log dump"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto/16 :goto_8

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_9

    :catch_4
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v3, 0x1

    goto/16 :goto_9

    :cond_14
    const/4 v15, 0x0

    goto :goto_b

    :cond_15
    :try_start_7
    invoke-interface {v13}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    move-result v18

    if-nez v18, :cond_1c

    const/4 v15, 0x1

    :cond_16
    :goto_c
    const-string v5, ""

    const-string/jumbo v18, "ril.modem.board"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v18, "XMM"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1e

    if-nez v15, :cond_17

    const-string v17, ""

    const-string/jumbo v18, "ril.deviceOffRes"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1d

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    const-string v18, "ShutdownThread"

    const-string v19, "!@PhoneOff req resp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    const-string v18, "ShutdownThread"

    const-string v19, "Radio turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    :goto_d
    if-nez v16, :cond_20

    const-string v5, ""

    const-string/jumbo v18, "ril.modem.board"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v18, "XMM"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_18

    const-string v17, ""

    const-string/jumbo v18, "ril.deviceOffRes"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1f

    const-string v18, "1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    const-string v18, "ShutdownThread"

    const-string v19, "!@PhoneOff req resp"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    const-string v18, "ShutdownThread"

    const-string v19, "Radio2 turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_e
    const-string v18, "ShutdownThread"

    const-string v19, "Skip wait for modem state off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-nez v16, :cond_19

    :try_start_8
    invoke-interface {v14}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    move-result v18

    if-nez v18, :cond_21

    const/16 v16, 0x1

    :goto_f
    if-eqz v16, :cond_19

    const-string v18, "ShutdownThread"

    const-string v19, "Radio2 turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-nez v12, :cond_1a

    :try_start_9
    invoke-interface {v11}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_7

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_22

    const/4 v12, 0x1

    :goto_10
    if-eqz v12, :cond_1a

    const-string v18, "ShutdownThread"

    const-string v19, "NFC turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz v15, :cond_23

    if-eqz v16, :cond_23

    if-eqz v3, :cond_23

    if-eqz v12, :cond_23

    if-eqz v9, :cond_23

    const-string v18, "ShutdownThread"

    const-string v19, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$done:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    :cond_1b
    return-void

    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_c

    :catch_5
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during radio shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v15, 0x1

    goto/16 :goto_c

    :cond_1d
    const/4 v15, 0x0

    const-string v18, "ShutdownThread"

    const-string/jumbo v19, "ril.deviceOffRes is not set"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1e
    if-eqz v15, :cond_17

    const-string v18, "ShutdownThread"

    const-string v19, "Radio turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_1f
    const/16 v16, 0x0

    const-string v18, "ShutdownThread"

    const-string/jumbo v19, "ril.deviceOffRes is not set"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_20
    const-string v18, "ShutdownThread"

    const-string v19, "Radio2 turned off."

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->onview(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_21
    const/16 v16, 0x0

    goto :goto_f

    :catch_6
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during radio2 shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/16 v16, 0x1

    goto/16 :goto_f

    :cond_22
    const/4 v12, 0x0

    goto :goto_10

    :catch_7
    move-exception v7

    const-string v18, "ShutdownThread"

    const-string v19, "RemoteException during NFC shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    const/4 v12, 0x1

    goto/16 :goto_10

    :cond_23
    const-string v18, "ShutdownThread"

    const-string v19, "!@before sleep"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x1f4

    :try_start_a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_8

    :goto_11
    const-string v18, "ShutdownThread"

    const-string v19, "!@after sleep"

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v18, "ShutdownThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "!@[Phone off retry:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "] : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/power/ShutdownThread$10;->val$endTime:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " radio="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " radio2="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " bluetooth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " nfc="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " modem="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/server/power/ShutdownThread$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :catch_8
    move-exception v6

    const-string v18, "ShutdownThread"

    const-string v19, "InterruptedException"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/android/server/power/ShutdownThread$Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I

    goto :goto_11
.end method
