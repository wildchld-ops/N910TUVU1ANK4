.class public Lcom/sec/epdg/IWlanState;
.super Ljava/lang/Object;
.source "IWlanState.java"


# static fields
.field public static final CONNECTED:I = 0x4

.field public static final DISCONNECTED:I = 0x8

.field public static final DISCONNECTING:I = 0x6

.field public static final HANDOVER_CONNECTING:I = 0x2

.field public static final INACTIVE:I = 0x0

.field public static final INITIAL_CONNECTING:I = 0x1

.field public static final PEER_DISCONNECTED:I = 0x7

.field public static final THROTTLE:I = 0x3

.field public static final W2M_IN_PROGRESS:I = 0x5


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanState;->mState:I

    return v0
.end method

.method public setState(I)V
    .locals 0

    iput p1, p0, Lcom/sec/epdg/IWlanState;->mState:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/sec/epdg/IWlanState;->mState:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "INACTIVE"

    goto :goto_0

    :pswitch_1
    const-string v0, "INITIAL_CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "HANDOVER_CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string v0, "THROTTLE"

    goto :goto_0

    :pswitch_4
    const-string v0, "CONNECTED"

    goto :goto_0

    :pswitch_5
    const-string v0, "W2M_IN_PROGRESS"

    goto :goto_0

    :pswitch_6
    const-string v0, "DISCONNECTING"

    goto :goto_0

    :pswitch_7
    const-string v0, "PEER_DISCONNECTED"

    goto :goto_0

    :pswitch_8
    const-string v0, "DISCONNECTED"

    goto :goto_0

    nop

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
    .end packed-switch
.end method
