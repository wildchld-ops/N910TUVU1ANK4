.class Lcom/android/phone/PhoneInterfaceManager$2;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager;->playDtmfTone(CZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$2;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$2;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v1, v0, Lcom/android/phone/PhoneInterfaceManager;->mDtmfStopHandler:Landroid/os/Handler;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$2;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mDtmfStopRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$2;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mDtmfTonePlayer:Lcom/android/phone/DTMFTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTonePlayer;->stopDtmfTone()V

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$2;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/phone/PhoneInterfaceManager;->mDtmfStopRunnable:Ljava/lang/Runnable;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
