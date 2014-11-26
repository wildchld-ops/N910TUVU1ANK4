.class Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "GlassMsgQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.settings.AIRMESSAGE_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airmessage_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    :cond_0
    :goto_0
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->cancel()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
