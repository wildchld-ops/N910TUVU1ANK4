.class Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "VolteQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "STATUSBAR-VolteQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$002(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;I)I

    const-string v4, "STATUSBAR-VolteQuickSettingButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: ACTION_AIRPLANE_MODE_CHANGED, isAirPlaneMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->isAirPlaneMode:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->getVoLTEEnabled()Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LOADED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "ABSENT"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # setter for: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->mInitialized:Z
    invoke-static {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;Z)Z

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->getVoLTEEnabled()Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/VolteQuickSettingButton;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method
