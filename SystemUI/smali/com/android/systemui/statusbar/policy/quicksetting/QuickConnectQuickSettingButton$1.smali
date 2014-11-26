.class Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "QuickConnectQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "STATUSBAR-QuickConnectQuickSettingButton"

    const-string v2, "onReceive():true"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->mQconnectEnable:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->showHideQConnectLayout()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/QuickConnectQuickSettingButton;)V

    :cond_0
    return-void
.end method
