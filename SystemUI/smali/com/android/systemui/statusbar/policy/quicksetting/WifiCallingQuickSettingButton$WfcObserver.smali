.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;
.super Landroid/database/ContentObserver;
.source "WifiCallingQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->getMode()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;Z)Z

    const-string v0, "STATUSBAR-WifiCallingQuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WfcObserver() onChange - mIsWfcRegistered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton$WfcObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiCallingQuickSettingButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    return-void

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
