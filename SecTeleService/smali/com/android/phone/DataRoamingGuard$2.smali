.class Lcom/android/phone/DataRoamingGuard$2;
.super Ljava/lang/Object;
.source "DataRoamingGuard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DataRoamingGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataRoamingGuard;


# direct methods
.method constructor <init>(Lcom/android/phone/DataRoamingGuard;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/DataRoamingGuard;->access$100(Lcom/android/phone/DataRoamingGuard;I)V

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V
    invoke-static {v0, v1}, Lcom/android/phone/DataRoamingGuard;->access$200(Lcom/android/phone/DataRoamingGuard;I)V

    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V
    invoke-static {v0}, Lcom/android/phone/DataRoamingGuard;->access$300(Lcom/android/phone/DataRoamingGuard;)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DataRoamingGuard$2;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
