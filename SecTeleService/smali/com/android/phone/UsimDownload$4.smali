.class Lcom/android/phone/UsimDownload$4;
.super Landroid/telephony/PhoneStateListener;
.source "UsimDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/UsimDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UsimDownload;


# direct methods
.method constructor <init>(Lcom/android/phone/UsimDownload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 9
    .param p1    # Landroid/telephony/ServiceState;

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "ril.domesticOta"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "otamode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->updateNetworkStatus()V
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$200(Lcom/android/phone/UsimDownload;)V

    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceStateChanged : networkStatusValue = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ScreenMode ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "KtfNumberReg"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegSuccess:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    if-eq v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-eq v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    :cond_0
    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_IN_SERVICE, KtNumRegSendMsg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$500(Lcom/android/phone/UsimDownload;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # setter for: Lcom/android/phone/UsimDownload;->AttacReject_161722:Z
    invoke-static {v4, v7}, Lcom/android/phone/UsimDownload;->access$602(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # setter for: Lcom/android/phone/UsimDownload;->AttacReject_121315:Z
    invoke-static {v4, v7}, Lcom/android/phone/UsimDownload;->access$702(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # setter for: Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    invoke-static {v4, v7}, Lcom/android/phone/UsimDownload;->access$802(Lcom/android/phone/UsimDownload;Z)Z

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumTimerExpired:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$900(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegFail:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    if-eq v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    iget-object v5, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v5}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v5

    # invokes: Lcom/android/phone/UsimDownload;->updateScreen(Lcom/android/phone/UsimDownload$ScreenMode;)V
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$1400(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)V

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$500(Lcom/android/phone/UsimDownload;)B

    move-result v4

    if-ne v4, v8, :cond_4

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_a

    :cond_6
    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_OUT_OF_SERVICE, KtNumRegSendMsg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$500(Lcom/android/phone/UsimDownload;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_161722:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$600(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNumRegOutOfService:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_8
    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish by reject!! cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1100(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCausePS:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1200(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_121315:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$700(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "ril.reject_121315"

    const-string v5, "rejected"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$800(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V
    invoke-static {v4, v7}, Lcom/android/phone/UsimDownload;->access$1300(Lcom/android/phone/UsimDownload;I)V

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v4}, Lcom/android/phone/UsimDownload;->finish()V

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_b

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkStatusValue:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$300(Lcom/android/phone/UsimDownload;)I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_f

    :cond_b
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$400(Lcom/android/phone/UsimDownload;)Lcom/android/phone/UsimDownload$ScreenMode;

    move-result-object v4

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtRegister:Lcom/android/phone/UsimDownload$ScreenMode;

    if-ne v4, v5, :cond_f

    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RIL_NWK_STATUS_REGISTRATION_DENIED, KtNumRegSendMsg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$500(Lcom/android/phone/UsimDownload;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1100(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCausePS:I
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$1200(Lcom/android/phone/UsimDownload;)I

    move-result v4

    if-eqz v4, :cond_2

    :cond_c
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_161722:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$600(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "UsimDownload"

    const-string v5, "AttacReject_161722 !"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0

    :cond_d
    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish by reject!! cause="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseIdle:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1000(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCauseCS:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1100(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->networkRejectCausePS:I
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$1200(Lcom/android/phone/UsimDownload;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_121315:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$700(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "ril.reject_121315"

    const-string v5, "rejected"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->AttacReject_ByPass:Z
    invoke-static {v4}, Lcom/android/phone/UsimDownload;->access$800(Lcom/android/phone/UsimDownload;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # invokes: Lcom/android/phone/UsimDownload;->queryRequestSetOtaReg(I)V
    invoke-static {v4, v7}, Lcom/android/phone/UsimDownload;->access$1300(Lcom/android/phone/UsimDownload;I)V

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    invoke-virtual {v4}, Lcom/android/phone/UsimDownload;->finish()V

    goto/16 :goto_0

    :cond_f
    const-string v4, "UsimDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "STATE_OUT_OF_SERVICE, KtNumRegSendMsg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    # getter for: Lcom/android/phone/UsimDownload;->KtNumRegSendMsg:B
    invoke-static {v6}, Lcom/android/phone/UsimDownload;->access$500(Lcom/android/phone/UsimDownload;)B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/UsimDownload$4;->this$0:Lcom/android/phone/UsimDownload;

    sget-object v5, Lcom/android/phone/UsimDownload$ScreenMode;->KtNetRegistering:Lcom/android/phone/UsimDownload$ScreenMode;

    # setter for: Lcom/android/phone/UsimDownload;->mMode:Lcom/android/phone/UsimDownload$ScreenMode;
    invoke-static {v4, v5}, Lcom/android/phone/UsimDownload;->access$402(Lcom/android/phone/UsimDownload;Lcom/android/phone/UsimDownload$ScreenMode;)Lcom/android/phone/UsimDownload$ScreenMode;

    goto/16 :goto_0
.end method
