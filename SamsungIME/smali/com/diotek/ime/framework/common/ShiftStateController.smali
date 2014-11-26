.class public interface abstract Lcom/diotek/ime/framework/common/ShiftStateController;
.super Ljava/lang/Object;
.source "ShiftStateController.java"


# static fields
.field public static final SHIFT_CONTROLL_POLICY_CHANGE_PAGE:I = 0x1

.field public static final SHIFT_CONTROLL_POLICY_NORMAL:I = 0x0

.field public static final SHIFT_CONTROLL_POLICY_NO_SHIFT:I = 0x2


# virtual methods
.method public abstract backupCapsLock()V
.end method

.method public abstract checkIfAutoCapsState()Z
.end method

.method public abstract getCapsLockState()Z
.end method

.method public abstract getLetterMode()Z
.end method

.method public abstract getPressedShiftKeyCode()I
.end method

.method public abstract getShiftHoldOnState()Z
.end method

.method public abstract getShiftMomentaryState()Z
.end method

.method public abstract getShiftPolicy()I
.end method

.method public abstract getShiftPressedState()Z
.end method

.method public abstract getShiftState()Z
.end method

.method public abstract getSplitTapState()Z
.end method

.method public abstract getSymbolMode()Z
.end method

.method public abstract initBackupCapsLock()V
.end method

.method public abstract isForcedCapsLockForGreek()Z
.end method

.method public abstract isNextShiftState()Z
.end method

.method public abstract isUpdateLetterMode()Z
.end method

.method public abstract restoreCapslock()V
.end method

.method public abstract setAutoCapsState(Z)V
.end method

.method public abstract setCapsLockState(Z)V
.end method

.method public abstract setForcedCapslock(Z)V
.end method

.method public abstract setHWCapsLockLed(Z)V
.end method

.method public abstract setNextShiftState(Z)V
.end method

.method public abstract setPolicyWithLanguage(I)Z
.end method

.method public abstract setPressedShiftKeyCode(I)V
.end method

.method public abstract setShiftHoldOn(Z)V
.end method

.method public abstract setShiftMomentaryState(Z)V
.end method

.method public abstract setShiftPressedState(Z)V
.end method

.method public abstract setShiftState(Z)V
.end method

.method public abstract setSplitTapState(Z)V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toggleShiftState()V
.end method

.method public abstract updateLetterMode()Z
.end method
