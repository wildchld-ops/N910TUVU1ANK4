.class Lcom/android/phone/NetworkModePreference$MyHandler;
.super Landroid/os/Handler;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkModePreference;Lcom/android/phone/NetworkModePreference$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/NetworkModePreference;
    .param p2    # Lcom/android/phone/NetworkModePreference$1;

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;-><init>(Lcom/android/phone/NetworkModePreference;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/NetworkModePreference$MyHandler;I)V
    .locals 0
    .param p0    # Lcom/android/phone/NetworkModePreference$MyHandler;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 8
    .param p1    # Landroid/os/Message;

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v4, 0x0

    aget v2, v3, v4

    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v3}, Lcom/android/phone/MobileNetworkSettings;->finishUpdateState()V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "NetworkModePreference"

    const-string v4, "ArrayIndexOutOfBoundsException Caught"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    const-string v3, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get preferred network type, exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3, v7}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mIsActiveSimDisable:Z
    invoke-static {v3, v6}, Lcom/android/phone/NetworkModePreference;->access$2302(Lcom/android/phone/NetworkModePreference;Z)Z

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "feature_multisim_ver2"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "feature_multisim_ver3"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_5

    # setter for: Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1902(Z)Z

    const-string v2, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set preferred network type, exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    aget-object v2, v2, v5

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "action.ButtonEnable"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    const-string v2, "cust_network_sel_menu4_o2"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v2}, Lcom/android/phone/NetworkModePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    const-string v6, "button_data_enabled_key"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v5, v2}, Lcom/android/phone/NetworkModePreference;->access$2402(Lcom/android/phone/NetworkModePreference;Landroid/preference/CheckBoxPreference;)Landroid/preference/CheckBoxPreference;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.phone.action.DataEnable"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNetworkType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v6}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V
    invoke-static {v2, v4}, Lcom/android/phone/NetworkModePreference;->access$2200(Lcom/android/phone/NetworkModePreference;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$2400(Lcom/android/phone/NetworkModePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$2400(Lcom/android/phone/NetworkModePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkModePreference;->access$302(Lcom/android/phone/NetworkModePreference;Z)Z

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    sget-object v2, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    aput v5, v2, v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    :goto_2
    # setter for: Lcom/android/phone/NetworkModePreference;->data_enable:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$2502(Z)Z

    const-string v2, "data_enable"

    # getter for: Lcom/android/phone/NetworkModePreference;->data_enable:Z
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$2500()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    # getter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1400()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkTypeForStep2:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1500(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    iget-object v6, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v6}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1400()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhoneV2:[Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$900(Lcom/android/phone/NetworkModePreference;)[Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    # setter for: Lcom/android/phone/NetworkModePreference;->sChangeNetworkType_Step2:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1402(I)I

    goto/16 :goto_0

    :cond_7
    # setter for: Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z
    invoke-static {v3}, Lcom/android/phone/NetworkModePreference;->access$1902(Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "action.ButtonEnable"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "NetworkModePreference"

    const-string v5, "set preferred network type done"

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference;->setEnabled(Z)V

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_9

    const-string v2, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set preferred network type, exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "network_mode_for_lte_kor_open"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lte_mode_on"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/NetworkModePreference$MyHandler;->updateState(I)V

    const-string v2, "NetworkModePreference"

    const-string v5, "set preferred network type done"

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "feature_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v4}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lte_mode_on"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_c
    const-string v2, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDisconnectingData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v6}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mPrevNetworkType[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$2400(Lcom/android/phone/NetworkModePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$2400(Lcom/android/phone/NetworkModePreference;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_d
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v2

    if-nez v2, :cond_e

    sget-object v2, Lcom/android/phone/NetworkModePreference;->mPrevNetworkType:[I

    aget v2, v2, v4

    if-ne v2, v3, :cond_f

    :cond_e
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkModePreference;->access$2200(Lcom/android/phone/NetworkModePreference;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkModePreference;->access$302(Lcom/android/phone/NetworkModePreference;Z)Z

    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "mobile_data_enable"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_10
    move v2, v4

    goto/16 :goto_2

    :cond_11
    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->setMobileDataEnabled(Z)V
    invoke-static {v2, v3}, Lcom/android/phone/NetworkModePreference;->access$2200(Lcom/android/phone/NetworkModePreference;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v2, v4}, Lcom/android/phone/NetworkModePreference;->access$302(Lcom/android/phone/NetworkModePreference;Z)Z

    const-string v2, "NetworkModePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set default vale, mIsDisconnectingData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_3
.end method

.method private updateState(I)V
    .locals 9
    .param p1    # I

    const/16 v8, 0x9

    const/4 v7, 0x1

    const-string v4, "change_network_mode_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "persist.radio.setnwkmode"

    invoke-static {v4, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,setnwkmode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    if-ne v1, v8, :cond_1

    const/16 p1, 0x9

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    const-string v4, "ril_network_on"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-boolean v4, v4, Lcom/android/phone/NetworkModePreference;->lteon:Z

    if-eqz v4, :cond_2

    const-string v4, "network_mode_list_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$2600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    const-string v4, "network_mode_tdlte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-ne p1, v7, :cond_5

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f090128

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    const/16 v4, 0xc

    if-ne v1, v4, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$2700(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v4, "network_mode_list_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->getLTEsummary()[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$2600(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->get3Gsummary()[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$2700(Lcom/android/phone/NetworkModePreference;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    array-length v4, v3

    if-ge v2, v4, :cond_6

    if-gez v2, :cond_c

    :cond_6
    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mode is not included in supported network mode, will be shown PREFERRED_NT_MODE mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "ril_network_on"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-boolean v4, v4, Lcom/android/phone/NetworkModePreference;->lteon:Z

    if-eqz v4, :cond_7

    const-string v4, "network_mode_list_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "remove_network_mode_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, v8}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    :goto_3
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v5}, Lcom/android/phone/NetworkModePreference;->access$1300(Lcom/android/phone/NetworkModePreference;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const-string v4, "feature_kdi"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, -0x1

    if-ne v0, v4, :cond_b

    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", do nothing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    goto :goto_3

    :cond_8
    const-string v4, "network_mode_list_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "remove_network_mode_lte"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, v8}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    goto :goto_3

    :cond_9
    const-string v4, "ctc_dual_mode_single_phone_byqc"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    const/4 v5, 0x0

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    sget v5, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, v5}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    goto/16 :goto_2

    :cond_c
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mNetworkType:I
    invoke-static {v4, p1}, Lcom/android/phone/NetworkModePreference;->access$1302(Lcom/android/phone/NetworkModePreference;I)I

    const-string v4, "NetworkModePreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "feature_multisim_ver2"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "feature_multisim_ver3"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_d
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # setter for: Lcom/android/phone/NetworkModePreference;->mOldNetworkType:I
    invoke-static {v4, p1}, Lcom/android/phone/NetworkModePreference;->access$1202(Lcom/android/phone/NetworkModePreference;I)I

    # getter for: Lcom/android/phone/NetworkModePreference;->sSetEnabledFlag:Z
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1900()Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim0:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1600()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_e
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mActivePhone:I
    invoke-static {v4}, Lcom/android/phone/NetworkModePreference;->access$1000(Lcom/android/phone/NetworkModePreference;)I

    move-result v4

    if-ne v4, v7, :cond_10

    const-string v4, "sim2_2g_only"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    # setter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {p1}, Lcom/android/phone/NetworkModePreference;->access$1702(I)I

    :cond_f
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim1:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$1700()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_10
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    iget-object v5, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->sNetworkTypeSim2:I
    invoke-static {}, Lcom/android/phone/NetworkModePreference;->access$2800()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/phone/NetworkModePreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_11
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v4, v2}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_12
    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Lcom/android/phone/NetworkModePreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/phone/NetworkModePreference$MyHandler;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v4, v2}, Lcom/android/phone/NetworkModePreference;->setValueIndex(I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkModePreference$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
