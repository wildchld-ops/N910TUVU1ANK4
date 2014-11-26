.class Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;
.super Landroid/database/ContentObserver;
.source "CarModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "STATUSBAR-CarModeQuickSettingButton"

    const-string v4, "CarModeObserver onChange()"

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->mState:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->getMode()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)I

    move-result v1

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAR_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    const/4 v4, -0x2

    invoke-direct {v2, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton$CarModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/CarModeQuickSettingButton;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method
