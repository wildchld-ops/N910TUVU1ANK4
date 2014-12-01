.class Lcom/android/settings/fingerprint/RegisterFingerprint$15;
.super Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;
.source "RegisterFingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->startStandbyAnimation()V
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

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$15;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 2

    const-string v0, "RegisterFingerprint"

    const-string v1, "startStandbyAnimation End"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
