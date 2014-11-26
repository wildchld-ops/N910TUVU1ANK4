.class Lcom/samsung/android/fingerprint/FingerprintManager$1;
.super Ljava/lang/Object;
.source "FingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;->binderDied()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$1;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintEvent;

    const v2, 0x186a0

    invoke-direct {v1, v2}, Lcom/samsung/android/fingerprint/FingerprintEvent;-><init>(I)V

    :try_start_0
    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/samsung/android/fingerprint/FingerprintManager;->mFpClient:Lcom/samsung/android/fingerprint/IFingerprintClient;
    invoke-static {}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$000()Lcom/samsung/android/fingerprint/IFingerprintClient;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/samsung/android/fingerprint/IFingerprintClient;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
