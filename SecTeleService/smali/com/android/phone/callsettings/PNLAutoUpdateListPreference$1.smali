.class Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const-string v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # invokes: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->readChargesNotificationPrefrence()Z
    invoke-static {v0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$000(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # setter for: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mDialog:Landroid/content/DialogInterface;
    invoke-static {v0, p1}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$102(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # setter for: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mTempDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$202(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # invokes: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$300(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    # setter for: Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->mSuperClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;->access$402(Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/callsettings/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/callsettings/PNLAutoUpdateListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
