.class Lcom/android/mms/transaction/MmsSystemEventReceiver$1;
.super Landroid/telephony/PhoneStateListener;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MmsSystemEventReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$1;->this$0:Lcom/android/mms/transaction/MmsSystemEventReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] PhoneStateListener default"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v0

    # invokes: Lcom/android/mms/transaction/MmsSystemEventReceiver;->cancelAlarmManagerForDataSwitch(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$700(Landroid/content/Context;)V

    :cond_0
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] PhoneStateListener On Call"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiver;->sIsFailFinalTryDataSwitch:Z
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/android/mms/transaction/MmsSystemEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getFinalTryDataSwitchSlot()I

    move-result v1

    # invokes: Lcom/android/mms/transaction/MmsSystemEventReceiver;->setAlarmManagerForDataSwitch(Landroid/content/Context;I)V
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$800(Landroid/content/Context;I)V

    :cond_1
    const-string v0, "Mms:transaction"

    const-string v1, "[MmsSystemEventReceiver] PhoneStateListener Off Call"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
