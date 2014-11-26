.class public interface abstract Lcom/android/keyguard/KeyguardFaceVoiceUnlockView$VoiceUnlockViewCallback;
.super Ljava/lang/Object;
.source "KeyguardFaceVoiceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceVoiceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VoiceUnlockViewCallback"
.end annotation


# virtual methods
.method public abstract displayPrepareMsg()V
.end method

.method public abstract displayVerifyFailMsg()V
.end method

.method public abstract displayVerifySuccessMsg()V
.end method

.method public abstract hideVoiceLayout()V
.end method

.method public abstract isErrorShowed()Z
.end method

.method public abstract updateVolume(I)V
.end method
