.class public Lcom/sec/epdg/EpdgCommands$EpdgTxEvents;
.super Ljava/lang/Object;
.source "EpdgCommands.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgCommands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpdgTxEvents"
.end annotation


# static fields
.field public static final APN_ATTACH_DNS_RETRY_RESPONSE:I = 0xc

.field public static final APN_ATTACH_REQ:I = 0x2

.field public static final APN_DETACH_REQ:I = 0x3

.field public static final DATA_RETRY_TIMER_EXPIRED:I = 0xd

.field public static final HANDOVER_RESULT:I = 0x4

.field public static final INTERFACE_DOWN:I = 0xe

.field public static final INTERFACE_UP:I = 0x9

.field public static final IPSEC_CONN_DISCONNECTED:I = 0x7

.field public static final IPSEC_CONN_FAIL:I = 0x6

.field public static final IPSEC_CONN_RESET:I = 0x8

.field public static final IPSEC_CONN_SUCCESS:I = 0x5

.field public static final SM_PERIODIC_DPD:I = 0xf

.field public static final SM_TIMEOUT:I = 0xb

.field public static final START_HO_L2W:I = 0x0

.field public static final START_HO_W2L:I = 0x1

.field public static final WIFI_STATUS_CHANGED:I = 0xa


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

    :pswitch_0
    const-string v0, "START_HO_L2W"

    goto :goto_0

    :pswitch_1
    const-string v0, "START_HO_W2L"

    goto :goto_0

    :pswitch_2
    const-string v0, "APN_ATTACH_REQ"

    goto :goto_0

    :pswitch_3
    const-string v0, "APN_DETACH_REQ"

    goto :goto_0

    :pswitch_4
    const-string v0, "HANDOVER_RESULT"

    goto :goto_0

    :pswitch_5
    const-string v0, "IPSEC_CONN_SUCCESS"

    goto :goto_0

    :pswitch_6
    const-string v0, "IPSEC_CONN_FAIL"

    goto :goto_0

    :pswitch_7
    const-string v0, "IPSEC_CONN_DISCONNECTED"

    goto :goto_0

    :pswitch_8
    const-string v0, "IPSEC_CONN_RESET"

    goto :goto_0

    :pswitch_9
    const-string v0, "INTERFACE_UP"

    goto :goto_0

    :pswitch_a
    const-string v0, "WIFI_STATUS_CHANGED"

    goto :goto_0

    :pswitch_b
    const-string v0, "SM_TIMEOUT"

    goto :goto_0

    :pswitch_c
    const-string v0, "APN_ATTACH_DNS_RETRY_RESPONSE"

    goto :goto_0

    :pswitch_d
    const-string v0, "DATA_RETRY_TIMER_EXPIRED"

    goto :goto_0

    :pswitch_e
    const-string v0, "INTERFACE_DOWN"

    goto :goto_0

    :pswitch_f
    const-string v0, "SM_PERIODIC_DPD"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
