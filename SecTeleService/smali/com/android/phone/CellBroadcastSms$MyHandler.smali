.class Lcom/android/phone/CellBroadcastSms$MyHandler;
.super Landroid/os/Handler;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CellBroadcastSms;


# direct methods
.method private constructor <init>(Lcom/android/phone/CellBroadcastSms;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CellBroadcastSms;Lcom/android/phone/CellBroadcastSms$1;)V
    .locals 0
    .param p1    # Lcom/android/phone/CellBroadcastSms;
    .param p2    # Lcom/android/phone/CellBroadcastSms$1;

    invoke-direct {p0, p1}, Lcom/android/phone/CellBroadcastSms$MyHandler;-><init>(Lcom/android/phone/CellBroadcastSms;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string v3, "CellBroadcastSms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! Unhandled message in CellBroadcastSms.java. Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v3, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    aget v3, v2, v5

    if-nez v3, :cond_1

    const/16 v3, 0x1f

    aput v3, v2, v5

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # getter for: Lcom/android/phone/CellBroadcastSms;->mButtonBcSms:Landroid/preference/CheckBoxPreference;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSms;->access$700(Lcom/android/phone/CellBroadcastSms;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # getter for: Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # getter for: Lcom/android/phone/CellBroadcastSms;->mHandler:Lcom/android/phone/CellBroadcastSms$MyHandler;
    invoke-static {v4}, Lcom/android/phone/CellBroadcastSms;->access$800(Lcom/android/phone/CellBroadcastSms;)Lcom/android/phone/CellBroadcastSms$MyHandler;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v6, v4}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # getter for: Lcom/android/phone/CellBroadcastSms;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/CellBroadcastSms;->access$900(Lcom/android/phone/CellBroadcastSms;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cdma_cell_broadcast_sms"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # invokes: Lcom/android/phone/CellBroadcastSms;->enableDisableAllCbConfigButtons(Z)V
    invoke-static {v3, v5}, Lcom/android/phone/CellBroadcastSms;->access$1000(Lcom/android/phone/CellBroadcastSms;Z)V

    :cond_1
    # invokes: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsConfig([I)V
    invoke-static {v2}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1100([I)V

    iget-object v3, p0, Lcom/android/phone/CellBroadcastSms$MyHandler;->this$0:Lcom/android/phone/CellBroadcastSms;

    # invokes: Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsBselectedValues()[I
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->access$1200()[I

    move-result-object v4

    # invokes: Lcom/android/phone/CellBroadcastSms;->setAllCbConfigButtons([I)V
    invoke-static {v3, v4}, Lcom/android/phone/CellBroadcastSms;->access$1300(Lcom/android/phone/CellBroadcastSms;[I)V

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "CellBroadcastSms"

    const-string v4, "NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
