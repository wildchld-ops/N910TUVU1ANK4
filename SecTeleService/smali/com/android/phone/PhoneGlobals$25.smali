.class Lcom/android/phone/PhoneGlobals$25;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsDisconnectingData:Z

    if-ne v0, v2, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "onDataConnectionStateChanged.."

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->changeNetworkType()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .param p1    # Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->setOneTripState(Landroid/telephony/ServiceState;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneGlobals;->access$5000(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->cancelAllowDataAccess(Landroid/telephony/ServiceState;)V
    invoke-static {v3, p1}, Lcom/android/phone/PhoneGlobals;->access$5100(Lcom/android/phone/PhoneGlobals;Landroid/telephony/ServiceState;)V

    const-string v3, "auto_enable_roaming"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    const-string v4, "ril.MSIMM"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "51088"

    const-string v4, "gsm.sim.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v3

    const/16 v4, 0xe

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    const-string v3, "volte_settings_in_mobile_networks"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged, isRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPreviousRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v5}, Lcom/android/phone/PhoneGlobals;->access$5200(Lcom/android/phone/PhoneGlobals;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v3}, Lcom/android/phone/PhoneGlobals;->access$5200(Lcom/android/phone/PhoneGlobals;)I

    move-result v3

    if-eq v1, v3, :cond_6

    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->getInternationalVoicecallTypeValue(Landroid/content/ContentResolver;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    :goto_0
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPreviousRoaming:I
    invoke-static {v3, v1}, Lcom/android/phone/PhoneGlobals;->access$5202(Lcom/android/phone/PhoneGlobals;I)I

    :cond_2
    return-void

    :cond_3
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getCallFeaturesSetting()Lcom/android/phone/CallFeaturesSetting;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals$25;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->getVoiceCallTypeValue(Landroid/content/ContentResolver;)I

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualRegister()V

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->manualDeregister()V

    goto :goto_0

    :cond_6
    const-string v3, "PhoneApp"

    const-string v4, "onServiceStateChanged, failed to get interfaceForGeneral.."

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
