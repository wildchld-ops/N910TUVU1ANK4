.class Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "ToolboxQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v4, 0x0

    const-string v1, "STATUSBAR-ToolBoxQuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.settings.action.talkback_off"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;->getToolboxEnabled()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v1, "com.android.settings.action.talkback_on"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToolboxQuickSettingButton;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    goto :goto_0
.end method
