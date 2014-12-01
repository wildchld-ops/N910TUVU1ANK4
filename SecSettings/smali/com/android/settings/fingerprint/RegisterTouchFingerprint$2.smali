.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "RegisterTouchFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$2;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->eventProcess(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$000(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    return-void
.end method
