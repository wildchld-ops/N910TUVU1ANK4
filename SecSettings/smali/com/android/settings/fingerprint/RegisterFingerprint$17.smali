.class Lcom/android/settings/fingerprint/RegisterFingerprint$17;
.super Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startProcessingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 3

    const-string v0, "RegisterFingerprint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startProcessingAnimation [mIsFinishedScanning] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    # getter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->mIsFinishedScanning:Z
    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$100(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$17;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->startProcessingAnimation()V

    :cond_0
    return-void
.end method
