.class Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;
.super Ljava/lang/Object;
.source "GlassMsgQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->showGuideDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

.field final synthetic val$mDisableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airmessage_alert"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airmessage_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->updateActivateStatus(Z)V
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/GlassMsgQuickSettingButton;Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
