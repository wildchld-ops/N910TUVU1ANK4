.class public interface abstract Lcom/android/keyguard/KeyguardViewMediator$ViewMediatorCallback;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewMediatorCallback"
.end annotation


# virtual methods
.method public abstract doKeyguardLocked()V
.end method

.method public abstract isLidOpened()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isShowingAndNotHidden()Z
.end method

.method public abstract keyguardDone()V
.end method

.method public abstract keyguardDone(Z)V
.end method

.method public abstract keyguardDoneDrawing()V
.end method

.method public abstract keyguardDonePending()V
.end method

.method public abstract keyguardGone()V
.end method

.method public abstract onUserActivityTimeoutChanged()V
.end method

.method public abstract resetStateLocked(Landroid/os/Bundle;)V
.end method

.method public abstract setNeedsInput(Z)V
.end method

.method public abstract userActivity()V
.end method

.method public abstract userActivity(J)V
.end method
