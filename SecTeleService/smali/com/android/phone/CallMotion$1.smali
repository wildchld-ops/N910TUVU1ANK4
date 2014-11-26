.class Lcom/android/phone/CallMotion$1;
.super Ljava/lang/Object;
.source "CallMotion.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallMotion;


# direct methods
.method constructor <init>(Lcom/android/phone/CallMotion;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 8
    .param p1    # Landroid/hardware/motion/MREvent;

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    const-string v3, "CallMotion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "motion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$000(Lcom/android/phone/CallMotion;)I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "TURN"

    invoke-static {v3, v4, v5}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "TURN"

    invoke-static {v3, v4, v5}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    :goto_2
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "TURN"

    invoke-static {v3, v4, v5}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/phone/Ringer;->setIsDone(Z)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$200(Lcom/android/phone/CallMotion;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.phone"

    const-string v5, "TURN"

    invoke-static {v3, v4, v5}, Lcom/android/phone/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mMotionType:I
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$000(Lcom/android/phone/CallMotion;)I

    move-result v3

    const/16 v4, 0x56

    if-ne v3, v4, :cond_0

    const-string v3, "sec_product_feature_common_dsds_support"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v6

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v7

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_8
    const-string v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v2, 0x0

    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_a

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifiers:[Lcom/android/phone/CallNotifier;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    const-string v3, "feature_chn_duos"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getForegroundPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->getRinger(Lcom/android/internal/telephony/Phone;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mPhoneGlobals:Lcom/android/phone/PhoneGlobals;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v3}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # invokes: Lcom/android/phone/CallMotion;->controlFlashNotification(Z)V
    invoke-static {v3, v6}, Lcom/android/phone/CallMotion;->access$400(Lcom/android/phone/CallMotion;Z)V

    iget-object v3, p0, Lcom/android/phone/CallMotion$1;->this$0:Lcom/android/phone/CallMotion;

    # getter for: Lcom/android/phone/CallMotion;->mRinger:Lcom/android/phone/Ringer;
    invoke-static {v3}, Lcom/android/phone/CallMotion;->access$300(Lcom/android/phone/CallMotion;)Lcom/android/phone/Ringer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/Ringer;->stopNotiFlash()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x56 -> :sswitch_1
    .end sparse-switch
.end method
