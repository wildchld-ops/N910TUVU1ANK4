.class Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;
.super Ljava/lang/Object;
.source "PhoneVoiceRecorderManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/PhoneVoiceRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/incallui/PhoneVoiceRecorderManager$1;)V
    .locals 0
    .param p1    # Lcom/android/incallui/PhoneVoiceRecorderManager;
    .param p2    # Lcom/android/incallui/PhoneVoiceRecorderManager$1;

    invoke-direct {p0, p1}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    new-instance v2, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;

    iget-object v3, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/incallui/PhoneVoiceRecorderManager$1;)V

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$102(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    invoke-static {p2}, Lcom/android/phone/IPhoneVoiceRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v2

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$302(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$100(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->registerCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->isVoiceRecording()Z

    move-result v2

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$402(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->isPaused()Z

    move-result v2

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsPaused:Z
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$502(Lcom/android/incallui/PhoneVoiceRecorderManager;Z)Z

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mIsRecording:Z
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$400(Lcom/android/incallui/PhoneVoiceRecorderManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$600(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection$1;-><init>(Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1    # Landroid/content/ComponentName;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$300(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    # getter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$100(Lcom/android/incallui/PhoneVoiceRecorderManager;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IPhoneVoiceRecorderService;->unregisterCallback(Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)V

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderCallback:Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$102(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;)Lcom/android/phone/IPhoneVoiceRecorderServiceCallback;

    iget-object v1, p0, Lcom/android/incallui/PhoneVoiceRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/PhoneVoiceRecorderManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/PhoneVoiceRecorderManager;->mRecorderSrv:Lcom/android/phone/IPhoneVoiceRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/PhoneVoiceRecorderManager;->access$302(Lcom/android/incallui/PhoneVoiceRecorderManager;Lcom/android/phone/IPhoneVoiceRecorderService;)Lcom/android/phone/IPhoneVoiceRecorderService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "PhoneVoiceRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
