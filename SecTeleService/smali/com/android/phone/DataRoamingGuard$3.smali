.class Lcom/android/phone/DataRoamingGuard$3;
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

    iput-object p1, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v3, 0x7f0a0015

    invoke-virtual {v2, v3}, Lcom/android/phone/DataRoamingGuard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V
    invoke-static {v2, v5}, Lcom/android/phone/DataRoamingGuard;->access$400(Lcom/android/phone/DataRoamingGuard;I)V

    :goto_0
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingDataValue(I)V
    invoke-static {v2, v4}, Lcom/android/phone/DataRoamingGuard;->access$100(Lcom/android/phone/DataRoamingGuard;I)V

    const-string v2, "roaming_setting_guard_data_only"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamSettingCallValue(I)V
    invoke-static {v2, v4}, Lcom/android/phone/DataRoamingGuard;->access$200(Lcom/android/phone/DataRoamingGuard;I)V

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setCdmaRoaming()V
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$300(Lcom/android/phone/DataRoamingGuard;)V

    :cond_0
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isRoamingInService()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_1
    :goto_1
    const-string v2, "data_roam_guard_first_time"

    invoke-static {v2, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data_roam_guard_first_time"

    invoke-static {v2, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    const v3, 0x7f0904b8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    invoke-virtual {v2}, Lcom/android/phone/DataRoamingGuard;->finish()V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # invokes: Lcom/android/phone/DataRoamingGuard;->setSecureRoamGuardDataValue(I)V
    invoke-static {v2, v4}, Lcom/android/phone/DataRoamingGuard;->access$400(Lcom/android/phone/DataRoamingGuard;I)V

    goto :goto_0

    :cond_4
    if-eq v1, v4, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInServiceGsm()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/DataRoamingGuard$3;->this$0:Lcom/android/phone/DataRoamingGuard;

    # getter for: Lcom/android/phone/DataRoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/DataRoamingGuard;->access$500(Lcom/android/phone/DataRoamingGuard;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected phone type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
