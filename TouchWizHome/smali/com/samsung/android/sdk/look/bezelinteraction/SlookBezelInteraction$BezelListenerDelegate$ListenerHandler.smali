.class Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;
.super Landroid/os/Handler;
.source "SlookBezelInteraction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListenerHandler"
.end annotation


# instance fields
.field public mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    iput-object p2, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/bezelinteraction/BezelEvent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListenerDelegate$ListenerHandler;->mListener:Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/look/bezelinteraction/SlookBezelInteraction$BezelListener;->onItemSelected(Lcom/samsung/android/bezelinteraction/BezelEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SlookBezelInteraction"

    const-string v2, "event : null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
