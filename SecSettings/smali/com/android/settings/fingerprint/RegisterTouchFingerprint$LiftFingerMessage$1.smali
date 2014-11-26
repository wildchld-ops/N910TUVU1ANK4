.class Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;
.super Ljava/lang/Object;
.source "RegisterTouchFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->setFingerGuideText(I)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->access$300(Lcom/android/settings/fingerprint/RegisterTouchFingerprint;I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage$1;->this$1:Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint$LiftFingerMessage;->this$0:Lcom/android/settings/fingerprint/RegisterTouchFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterTouchFingerprint;->vib:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
