.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;
.super Landroid/database/ContentObserver;
.source "SmartPauseQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionMergedMutePauseObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "motion_merged_mute_pause"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mMasterState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$302(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mQuicksettingbtn:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton$MotionMergedMutePauseObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->mMasterState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/SmartPauseQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd

    goto :goto_1
.end method
