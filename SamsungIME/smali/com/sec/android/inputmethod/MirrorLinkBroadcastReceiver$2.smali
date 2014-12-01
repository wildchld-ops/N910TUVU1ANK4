.class Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;
.super Lcom/mirrorlink/android/commonapi/IConnectionListener$Stub;
.source "MirrorLinkBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioConnectionsChanged(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onMirrorLinkSessionChanged(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMirrorLinkSessionChanged  mirrolinkSessionIsEstablished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeKnobSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setIsCurrentCarModeTouchSip(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v4}, Lcom/diotek/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mHandler:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$UIHandler;->SendUpdateViewMessage()V

    # setter for: Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mService:Lcom/mirrorlink/android/commonapi/ICommonAPIService;
    invoke-static {v3}, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->access$002(Lcom/mirrorlink/android/commonapi/ICommonAPIService;)Lcom/mirrorlink/android/commonapi/ICommonAPIService;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v3, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mCertificationManager:Lcom/mirrorlink/android/commonapi/ICertificationManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v3, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mConnectionManager:Lcom/mirrorlink/android/commonapi/IConnectionManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v3, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mDeviceStatusManager:Lcom/mirrorlink/android/commonapi/IDeviceStatusManager;

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$2;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iput-object v3, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mEventMappingManager:Lcom/mirrorlink/android/commonapi/IEventMappingManager;

    :cond_0
    return-void
.end method

.method public onRemoteDisplayConnectionChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
