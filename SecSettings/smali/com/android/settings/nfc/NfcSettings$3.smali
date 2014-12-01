.class Lcom/android/settings/nfc/NfcSettings$3;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/nfc/NfcEnabler$INfcHelpController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1100(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1100(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # setter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep2Dialog:Lcom/android/settings/helpdialog/TwHelpDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1102(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpDialog;)Lcom/android/settings/helpdialog/TwHelpDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1200(Lcom/android/settings/nfc/NfcSettings;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # setter for: Lcom/android/settings/nfc/NfcSettings;->mHelpStep1Dialog:Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$1202(Lcom/android/settings/nfc/NfcSettings;Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    :cond_1
    return-void
.end method

.method public show(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/nfc/NfcSettings;->sbeamNfcStatus:I
    invoke-static {p1}, Lcom/android/settings/nfc/NfcSettings;->access$202(I)I

    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mbSbeamHelpMode:Z
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$300(Lcom/android/settings/nfc/NfcSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->setNfcSwitchSelectable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$400(Lcom/android/settings/nfc/NfcSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpSbeam()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$500(Lcom/android/settings/nfc/NfcSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->setNfcSwitchSelectable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$400(Lcom/android/settings/nfc/NfcSettings;Z)V

    const-string v0, "NfcSettings"

    const-string v1, "NfcAdapter.STATE_ON, createHelpStep2Dialog() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpStep2Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$600(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0

    :cond_2
    if-ne v2, p1, :cond_4

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->destroyHelpSbeam()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$700(Lcom/android/settings/nfc/NfcSettings;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->destroyHelpRwP2p()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$800(Lcom/android/settings/nfc/NfcSettings;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NfcSettings"

    const-string v1, "Nothing happen at Tablet models"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpStep1Dialog()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$900(Lcom/android/settings/nfc/NfcSettings;)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mbSbeamHelpMode:Z
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$300(Lcom/android/settings/nfc/NfcSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->setNfcSwitchSelectable(Z)V
    invoke-static {v0, v2}, Lcom/android/settings/nfc/NfcSettings;->access$400(Lcom/android/settings/nfc/NfcSettings;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mbSbeamHelpMode:Z
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$300(Lcom/android/settings/nfc/NfcSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->setNfcSwitchSelectable(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcSettings;->access$400(Lcom/android/settings/nfc/NfcSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$3;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # invokes: Lcom/android/settings/nfc/NfcSettings;->createHelpRwP2p()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$1000(Lcom/android/settings/nfc/NfcSettings;)V

    goto :goto_0
.end method
