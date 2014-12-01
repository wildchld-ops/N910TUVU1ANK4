.class Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;
.super Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;
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

    iput-object p1, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    invoke-direct {p0}, Lcom/mirrorlink/android/commonapi/IDeviceStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDriveModeChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->closeKeyboard()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver$4;->this$0:Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;

    iget-object v0, v0, Lcom/sec/android/inputmethod/MirrorLinkBroadcastReceiver;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->setCarInDrivingMode(Z)V

    goto :goto_0
.end method

.method public onMicrophoneStatusChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onNightModeChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
