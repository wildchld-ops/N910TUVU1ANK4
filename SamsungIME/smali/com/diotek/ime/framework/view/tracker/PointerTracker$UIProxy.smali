.class public interface abstract Lcom/diotek/ime/framework/view/tracker/PointerTracker$UIProxy;
.super Ljava/lang/Object;
.source "PointerTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/tracker/PointerTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UIProxy"
.end annotation


# virtual methods
.method public abstract checkMultiTap(JI)V
.end method

.method public abstract detectAndSendKey(IIIJ)V
.end method

.method public abstract dismissHoverPopup()V
.end method

.method public abstract dismissPreviewbyTracker(JLcom/diotek/ime/framework/view/tracker/PointerTracker;)V
.end method

.method public abstract handleHwrTouchCancel(IIJ)Z
.end method

.method public abstract handleHwrTouchDown(IIJ)Z
.end method

.method public abstract handleHwrTouchMove(IIJ)Z
.end method

.method public abstract handleHwrTouchUp(IIJ)Z
.end method

.method public abstract invalidateHoverKey(ILcom/diotek/ime/framework/view/tracker/PointerTracker;Z)V
.end method

.method public abstract invalidateKey(I)V
.end method

.method public abstract isEnableSpaceLanguageChange()Z
.end method

.method public abstract isFingerInput()Z
.end method

.method public abstract isHoverEvent()Z
.end method

.method public abstract isPreviewEnabled(Lcom/diotek/ime/framework/view/Keyboard$Key;)Z
.end method

.method public abstract moveTrace(JJIJ)Z
.end method

.method public abstract multiTouchShowPreview(ILcom/diotek/ime/framework/view/tracker/PointerTracker;I)Z
.end method

.method public abstract pressTrace(JJIIJ)Z
.end method

.method public abstract releaseTrace(JJIIZJ)Z
.end method

.method public abstract releaseTraceWithAnimation(JJIIZ)Z
.end method

.method public abstract resetMultiTap()V
.end method

.method public abstract sendAccessibilityEvent(II)V
.end method

.method public abstract setHoverEvent(Z)V
.end method

.method public abstract setInLangaugeChanging(Z)V
.end method

.method public abstract updateShiftState()V
.end method
