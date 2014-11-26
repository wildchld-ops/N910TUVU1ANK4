.class Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$AnimationDrawableListener;->onAnimationEnd()V

    return-void
.end method
