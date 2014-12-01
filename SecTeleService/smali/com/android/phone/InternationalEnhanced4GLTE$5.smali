.class Lcom/android/phone/InternationalEnhanced4GLTE$5;
.super Ljava/lang/Object;
.source "InternationalEnhanced4GLTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InternationalEnhanced4GLTE;->onInternationalDataClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InternationalEnhanced4GLTE;


# direct methods
.method constructor <init>(Lcom/android/phone/InternationalEnhanced4GLTE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InternationalEnhanced4GLTE$5;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/phone/InternationalEnhanced4GLTE$5;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # getter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mInternationalData:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$600(Lcom/android/phone/InternationalEnhanced4GLTE;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    const-string v0, "data_roaming_noti_tray"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "national_roaming_mode_menu"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p0, Lcom/android/phone/InternationalEnhanced4GLTE$5;->this$0:Lcom/android/phone/InternationalEnhanced4GLTE;

    # getter for: Lcom/android/phone/InternationalEnhanced4GLTE;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/InternationalEnhanced4GLTE;->access$700(Lcom/android/phone/InternationalEnhanced4GLTE;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr;->updateRoamingNotification(Z)V

    :cond_0
    return-void
.end method
