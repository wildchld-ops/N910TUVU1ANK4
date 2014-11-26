.class Lcom/android/phone/DataRoamingGuard$RoamHandler;
.super Landroid/os/Handler;
.source "DataRoamingGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method private constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$RoamHandler;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/DataRoamingGuard;Lcom/android/phone/DataRoamingGuard$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/DataRoamingGuard;
    .param p2    # Lcom/android/phone/DataRoamingGuard$1;

    invoke-direct {p0, p1}, Lcom/android/phone/DataRoamingGuard$RoamHandler;-><init>(Lcom/android/phone/DataRoamingGuard;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
