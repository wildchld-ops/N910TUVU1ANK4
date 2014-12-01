.class Lcom/android/settings/FingerAirViewHelp$8;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerAirViewHelp;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerAirViewHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerAirViewHelp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$8;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$8;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_information_preview"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$8;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$400(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/FingerAirViewHelp$8;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/FingerAirViewHelp;->access$400(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    return-void
.end method
