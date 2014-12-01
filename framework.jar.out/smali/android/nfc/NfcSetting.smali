.class public final Landroid/nfc/NfcSetting;
.super Ljava/lang/Object;
.source "NfcSetting.java"


# static fields
.field public static final CHANGE_LISTEN:I = 0x2

.field public static final CHANGE_POLLING:I = 0x1

.field public static final CHANGE_RF:I = 0x3

.field private static final DBG:Z = false

.field private static final ERR_RET:I = -0x1

.field public static final PARAM_AUTO_POLL_OFF_LISTEN:I = 0xf

.field public static final PARAM_LISTEN_TIME:I = 0xb

.field public static final PARAM_POLL_GAP_TIME_A:I = 0x8

.field public static final PARAM_POLL_GAP_TIME_B:I = 0x9

.field public static final PARAM_POLL_GAP_TIME_F424:I = 0xa

.field public static final PARAM_RFON_POLL_TIME_A:I = 0x4

.field public static final PARAM_RFON_POLL_TIME_B:I = 0x5

.field public static final PARAM_RFON_POLL_TIME_F212:I = 0x7

.field public static final PARAM_RFON_POLL_TIME_F424:I = 0x6

.field public static final PARAM_RF_A_CM_5_0:I = 0x20

.field public static final PARAM_RF_A_CM_DPN:I = 0x1f

.field public static final PARAM_RF_A_CM_SET:I = 0x1e

.field public static final PARAM_RF_A_COL:I = 0x16

.field public static final PARAM_RF_BA_A:I = 0x11

.field public static final PARAM_RF_BA_B:I = 0x13

.field public static final PARAM_RF_BA_F:I = 0x15

.field public static final PARAM_RF_B_CM_5_0:I = 0x23

.field public static final PARAM_RF_B_CM_DPN:I = 0x22

.field public static final PARAM_RF_B_CM_SET:I = 0x21

.field public static final PARAM_RF_B_COH:I = 0x17

.field public static final PARAM_RF_B_COL:I = 0x18

.field public static final PARAM_RF_CARDET_DEN:I = 0x1c

.field public static final PARAM_RF_FADET_H:I = 0x1a

.field public static final PARAM_RF_FA_IA:I = 0x10

.field public static final PARAM_RF_FA_IB:I = 0x12

.field public static final PARAM_RF_FA_IF:I = 0x14

.field public static final PARAM_RF_F_CM_5_0:I = 0x26

.field public static final PARAM_RF_F_CM_DPN:I = 0x25

.field public static final PARAM_RF_F_CM_SET:I = 0x24

.field public static final PARAM_RF_LVTH:I = 0x19

.field public static final PARAM_RF_NDET_H:I = 0x1b

.field public static final PARAM_RF_PRE_POWER_DOWN:I = 0x1d

.field public static final PARAM_SELECT_POLL_TYPE_A:I = 0x0

.field public static final PARAM_SELECT_POLL_TYPE_B:I = 0x1

.field public static final PARAM_SELECT_POLL_TYPE_F212:I = 0x3

.field public static final PARAM_SELECT_POLL_TYPE_F424:I = 0x2

.field public static final PARAM_TYPE_A_WAIT:I = 0xc

.field public static final PARAM_TYPE_B_WAIT:I = 0xe

.field public static final PARAM_TYPE_F_WAIT:I = 0xd

.field private static final POLL_GAP_TIME_MAX:I = 0x80

.field private static final POLL_GAP_TIME_MIN:I = 0x1

.field private static final RFON_POLL_TIME_MAX:I = 0x7fff

.field private static final RFON_POLL_TIME_MIN:I = 0x1

.field private static final RF_CM_5_0_MAX:I = 0x3f

.field private static final RF_CM_5_0_MIN:I = 0x0

.field private static final RF_CO_VALUE_MAX:I = 0x3f

.field private static final RF_CO_VALUE_MIN:I = 0x0

.field private static final RF_ITEM_SIZE_0:I = 0x0

.field private static final RF_ITEM_SIZE_2:I = 0x2

.field private static final RF_ITEM_SIZE_4:I = 0x4

.field private static final RF_ITEM_SIZE_8:I = 0x8

.field private static final TAG:Ljava/lang/String; = "NfcSetting"

.field private static sService:Landroid/nfc/INfcSetting;

.field private static sSingleton:Landroid/nfc/NfcSetting;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcSetting;
    .locals 3

    const-class v1, Landroid/nfc/NfcSetting;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcSettingInterface()Landroid/nfc/INfcSetting;

    move-result-object v0

    sput-object v0, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Landroid/nfc/NfcSetting;

    invoke-direct {v0}, Landroid/nfc/NfcSetting;-><init>()V

    sput-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    :cond_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v0, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    sget-object v2, Landroid/nfc/NfcSetting;->sSingleton:Landroid/nfc/NfcSetting;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    sput-object v2, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private setParameter(II)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    if-nez v3, :cond_0

    const-string v3, "NfcSetting"

    const-string v4, "sService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    invoke-interface {v3, p1, p2}, Landroid/nfc/INfcSetting;->setParameter(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeParameter(I)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    if-nez v3, :cond_0

    const-string v3, "NfcSetting"

    const-string v4, "sService is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    :try_start_0
    sget-object v3, Landroid/nfc/NfcSetting;->sService:Landroid/nfc/INfcSetting;

    invoke-interface {v3, p1}, Landroid/nfc/INfcSetting;->changeParameter(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCardEmulationMode(I)Z
    .locals 1

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Landroid/nfc/NfcSetting;->setListenParameter(II)Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/nfc/NfcSetting;->changeParameter(I)Z

    move-result v0

    return v0
.end method

.method public setListenParameter(II)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-lt p2, v1, :cond_0

    const/16 v1, 0x80

    if-gt p2, v1, :cond_0

    :cond_1
    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    if-ltz p2, :cond_0

    const/16 v1, 0x3200

    if-le p2, v1, :cond_1

    goto :goto_0

    :pswitch_3
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    goto :goto_0

    :pswitch_4
    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-le p2, v1, :cond_1

    goto :goto_0

    :pswitch_5
    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method

.method public setPollParameter(II)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/16 v1, 0x7fff

    if-gt p2, v1, :cond_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setReadWriteMode(ZZZZ)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, v2, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    :goto_2
    if-eqz p4, :cond_3

    invoke-virtual {p0, v3, v0}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    :goto_3
    invoke-virtual {p0, v0}, Landroid/nfc/NfcSetting;->changeParameter(I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v1, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v3, v1}, Landroid/nfc/NfcSetting;->setPollParameter(II)Z

    goto :goto_3
.end method

.method public setRfParameter(II)Z
    .locals 2

    const/16 v1, 0x3f

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    if-ltz p2, :cond_0

    const/16 v1, 0x8

    if-ge p2, v1, :cond_0

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/nfc/NfcSetting;->setParameter(II)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-lt p2, v1, :cond_1

    goto :goto_0

    :pswitch_2
    if-ltz p2, :cond_0

    if-le p2, v1, :cond_1

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_0

    :pswitch_4
    if-ltz p2, :cond_0

    if-le p2, v1, :cond_1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
