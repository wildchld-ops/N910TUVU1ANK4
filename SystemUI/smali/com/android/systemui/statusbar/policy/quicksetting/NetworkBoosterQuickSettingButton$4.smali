.class Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;
.super Ljava/lang/Object;
.source "NetworkBoosterQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->showNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

.field final synthetic val$mDisableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;->val$mDisableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # getter for: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$700(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_bonding_notification_do_not_show"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;

    # invokes: Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->setMode(I)V
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;->access$800(Lcom/android/systemui/statusbar/policy/quicksetting/NetworkBoosterQuickSettingButton;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
