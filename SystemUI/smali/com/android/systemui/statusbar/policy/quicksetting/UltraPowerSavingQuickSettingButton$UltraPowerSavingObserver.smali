.class Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;
.super Landroid/database/ContentObserver;
.source "UltraPowerSavingQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UltraPowerSavingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1    # Z

    const/4 v6, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "STATUSBAR-UltraPowerSavingController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UltraPowerSavingObserver.onChange() - MAXIMUM_ULTRA_POWER_SAVING_MODE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "ultra_powersaving_mode"

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ultra_powersaving_mode"

    invoke-static {v0, v4, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton$UltraPowerSavingObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/UltraPowerSavingQuickSettingButton;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
