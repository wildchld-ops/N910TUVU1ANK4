.class Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;
.super Ljava/lang/Object;
.source "GlobalNetworkSelectAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GlobalNetworkSelectAlertDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

.field final synthetic val$doNotShowAgainCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/GlobalNetworkSelectAlertDialog;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    iput-object p2, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->val$doNotShowAgainCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/16 v3, 0xa

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$100(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->val$doNotShowAgainCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GlobalNetworkSelectAlertDialog$5;->this$0:Lcom/android/phone/GlobalNetworkSelectAlertDialog;

    # getter for: Lcom/android/phone/GlobalNetworkSelectAlertDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/GlobalNetworkSelectAlertDialog;->access$000(Lcom/android/phone/GlobalNetworkSelectAlertDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "global_mode_change_do_not_show"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
