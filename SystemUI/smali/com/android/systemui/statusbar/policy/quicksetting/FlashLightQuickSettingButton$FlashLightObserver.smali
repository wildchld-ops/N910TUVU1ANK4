.class Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;
.super Landroid/database/ContentObserver;
.source "FlashLightQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlashLightObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flash_light_start"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton$FlashLightObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/FlashLightQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method
