.class Lcom/android/settings/FingerAirViewHelp$10;
.super Ljava/lang/Object;
.source "FingerAirViewHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$400(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    # getter for: Lcom/android/settings/FingerAirViewHelp;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/FingerAirViewHelp;->access$400(Lcom/android/settings/FingerAirViewHelp;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/FingerAirViewHelp$10;->this$0:Lcom/android/settings/FingerAirViewHelp;

    invoke-virtual {v0, v3}, Lcom/android/settings/FingerAirViewHelp;->enableAirViewAndInforPreview(Z)V

    return-void
.end method
