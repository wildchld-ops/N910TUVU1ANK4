.class Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;
.super Ljava/lang/Object;
.source "PhoneInterfaceManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyListenerDeathRecipient"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Landroid/os/IBinder;)V
    .locals 3
    .param p2    # Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->mBinder:Landroid/os/IBinder;

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->unlinkDeathRecipient()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->access$1200(Lcom/android/phone/PhoneInterfaceManager;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->access$1200(Lcom/android/phone/PhoneInterfaceManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    # getter for: Lcom/android/phone/PhoneInterfaceManager;->mListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->access$1200(Lcom/android/phone/PhoneInterfaceManager;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v0, "PhoneInterfaceManager"

    const-string v2, "ITelephonyListener died. Removing."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const-string v0, "PhoneInterfaceManager"

    const-string v2, "TelephonyListener binder died but the listener is not registered."

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unlinkDeathRecipient()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$TelephonyListenerDeathRecipient;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
