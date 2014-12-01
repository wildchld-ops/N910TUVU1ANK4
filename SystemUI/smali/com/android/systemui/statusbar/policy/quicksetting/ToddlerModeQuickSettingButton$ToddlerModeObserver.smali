.class Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;
.super Landroid/database/ContentObserver;
.source "ToddlerModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToddlerModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "toddler_mode_switch"

    const/4 v5, -0x2

    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->getMode()I
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$600(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$402(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mService:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Landroid/app/StatusBarManager;

    move-result-object v0

    const-string v1, "toddler"

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$ToddlerModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
