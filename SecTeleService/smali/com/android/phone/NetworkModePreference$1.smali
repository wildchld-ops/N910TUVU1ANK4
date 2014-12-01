.class Lcom/android/phone/NetworkModePreference$1;
.super Landroid/telephony/PhoneStateListener;
.source "NetworkModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkModePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkModePreference;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkModePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "NetworkModePreference"

    const-string v2, "Should not be here! Do cancel operation!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$200(Lcom/android/phone/NetworkModePreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mHandler:Lcom/android/phone/NetworkModePreference$MyHandler;
    invoke-static {v2}, Lcom/android/phone/NetworkModePreference;->access$100(Lcom/android/phone/NetworkModePreference;)Lcom/android/phone/NetworkModePreference$MyHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkModePreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$000(Lcom/android/phone/NetworkModePreference;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NetworkModePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mIsDisconnectingData:Z
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$300(Lcom/android/phone/NetworkModePreference;)Z

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "NetworkModePreference"

    const-string v2, "onDataConnectionStateChanged.."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # getter for: Lcom/android/phone/NetworkModePreference;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$400(Lcom/android/phone/NetworkModePreference;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/phone/MobileNetworkSettings;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/phone/MobileNetworkSettings;->removeDialog(I)V

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-eq v1, v4, :cond_2

    const-string v1, "feature_chn"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "sim2_2g_only"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)V

    const-string v1, "NetworkModePreference"

    const-string v2, "onDataConnectionStateChanged2.."

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/NetworkModePreference$1;->this$0:Lcom/android/phone/NetworkModePreference;

    # invokes: Lcom/android/phone/NetworkModePreference;->changeNetworkType()V
    invoke-static {v1}, Lcom/android/phone/NetworkModePreference;->access$500(Lcom/android/phone/NetworkModePreference;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
