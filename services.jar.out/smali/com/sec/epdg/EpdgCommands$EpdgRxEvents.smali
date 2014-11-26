.class public Lcom/sec/epdg/EpdgCommands$EpdgRxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgRxEvents"
.end annotation


# static fields
.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0x21

.field public static final EPDG_SETTINGS_READ:I = 0x1d

.field public static final HANDLE_DNS_QUERY_REQUEST:I = 0x34

.field public static final IPSEC_CONNECTED:I = 0x2d

.field public static final IPSEC_CONNECTION_RESET:I = 0x31

.field public static final IPSEC_CONNECTION_SETUP_FAILURE:I = 0x30

.field public static final IPSEC_CONNECT_INIT:I = 0x33

.field public static final IPSEC_DISCONNECTED:I = 0x2e

.field public static final IPSEC_ERROR:I = 0x32

.field public static final IPSEC_PEER_DISCONNECTED:I = 0x2f

.field public static final MAPCON_CHANGED:I = 0x1c

.field public static final NOTIFY_REGISTRANTS:I = 0x1e

.field public static final RETRY_L2W_IF_REQUIRED:I = 0x1f

.field public static final RIL_CONNECT_REQ:I = 0x2b

.field public static final RIL_DISCONNECT_REQ:I = 0x2c

.field public static final RIL_EPDG_STATUS_QUERY:I = 0x35

.field public static final RIL_HANDOVER_RESULT:I = 0x2a

.field public static final SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE:I = 0x25

.field public static final SM_DISCONNECT_REQ:I = 0x29

.field public static final SM_ENABLE_EPDG_FAILURE:I = 0x23

.field public static final SM_TRANSITIONTO:I = 0x28

.field public static final SM_TRIGGER_HO:I = 0x22

.field public static final SM_UPDATE_CONN_STATUS:I = 0x26


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "[EPDGCommands]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add log for event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "SM_TRIGGER_HO"

    goto :goto_0

    :pswitch_2
    const-string v0, "SM_ENABLE_EPDG_FAILURE"

    goto :goto_0

    :pswitch_3
    const-string v0, "SEND_EPDG_NOTAVAILABLE_FOR_ONDEMAND_FAILURE"

    goto :goto_0

    :pswitch_4
    const-string v0, "SM_UPDATE_CONN_STATUS"

    goto :goto_0

    :pswitch_5
    const-string v0, "SM_TRANSITIONTO"

    goto :goto_0

    :pswitch_6
    const-string v0, "SM_DISCONNECT_REQ"

    goto :goto_0

    :pswitch_7
    const-string v0, "NOTIFY_REGISTRANTS"

    goto :goto_0

    :pswitch_8
    const-string v0, "EPDG_SETTINGS_READ"

    goto :goto_0

    :pswitch_9
    const-string v0, "RETRY_L2W_IF_REQUIRED"

    goto :goto_0

    :pswitch_a
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    goto :goto_0

    :pswitch_b
    const-string v0, "RIL_HANDOVER_RESULT"

    goto :goto_0

    :pswitch_c
    const-string v0, "RIL_CONNECT_REQ"

    goto :goto_0

    :pswitch_d
    const-string v0, "RIL_DISCONNECT_REQ"

    goto :goto_0

    :pswitch_e
    const-string v0, "IPSEC_CONNECTED"

    goto :goto_0

    :pswitch_f
    const-string v0, "IPSEC_DISCONNECTED"

    goto :goto_0

    :pswitch_10
    const-string v0, "IPSEC_PEER_DISCONNECTED"

    goto :goto_0

    :pswitch_11
    const-string v0, "IPSEC_CONNECTION_SETUP_FAILURE"

    goto :goto_0

    :pswitch_12
    const-string v0, "IPSEC_CONNECTION_RESET"

    goto :goto_0

    :pswitch_13
    const-string v0, "IPSEC_ERROR"

    goto :goto_0

    :pswitch_14
    const-string v0, "IPSEC_CONNECT_INIT"

    goto :goto_0

    :pswitch_15
    const-string v0, "HANDLE_DNS_QUERY_REQUEST"

    goto :goto_0

    :pswitch_16
    const-string v0, "MAPCON_CHANGED"

    goto :goto_0

    :pswitch_17
    const-string v0, "RIL_EPDG_STATUS_QUERY"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_16
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method
