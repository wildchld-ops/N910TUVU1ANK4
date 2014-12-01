.class Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;
.super Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;
.source "PhoneVoiceRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/PhoneVoiceRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Lcom/android/phone/IPhoneVoiceRecorderServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/incallui/PhoneVoiceRecorderManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager;)V

    return-void
.end method


# virtual methods
.method public messageCallback(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x64

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "PhoneVoiceRecorderManager"

    const-string v3, "IPhoneVoiceRecorderServiceCallback : INFO_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v3, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/IPhoneVoiceRecorderService;->isVoiceRecording()Z

    move-result v3

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$402(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v3, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/phone/IPhoneVoiceRecorderService;->isPaused()Z

    move-result v3

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z
    invoke-static {v2, v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$502(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback$1;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const-string v2, "PhoneVoiceRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IPhoneVoiceRecorderServiceCallback : isVoiceRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z
    invoke-static {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$400(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsPaused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z
    invoke-static {v4}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$500(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PhoneVoiceRecorderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoiceRecording() -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z
    invoke-static {v2, v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$402(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z
    invoke-static {v2, v3}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$502(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
