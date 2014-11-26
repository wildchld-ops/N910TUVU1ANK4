.class final Lcom/android/phone/PhoneUtilsCamera$1;
.super Ljava/lang/Object;
.source "PhoneUtilsCamera.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    const-string v1, "PhoneUtilsCamera"

    const-string v2, "service onServiceConnected Called !!!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/mms/transaction/IMessageBackgroundSender$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    # setter for: Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$002(Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/PhoneUtilsCamera;->mSvcConnected:Z
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$102(Z)Z

    :try_start_0
    # getter for: Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->startListening()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;

    const-string v1, "PhoneUtilsCamera"

    const-string v2, "service onServiceDisconnected Called !!!!"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    # getter for: Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {}, Lcom/android/phone/PhoneUtilsCamera;->access$000()Lcom/android/mms/transaction/IMessageBackgroundSender;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/transaction/IMessageBackgroundSender;->stopListening()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhoneUtilsCamera;->mServiceBinder:Lcom/android/mms/transaction/IMessageBackgroundSender;
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$002(Lcom/android/mms/transaction/IMessageBackgroundSender;)Lcom/android/mms/transaction/IMessageBackgroundSender;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/PhoneUtilsCamera;->mSvcConnected:Z
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCamera;->access$102(Z)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
