.class Lcom/android/phone/CallNotifier$10$1;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/CallNotifier$10;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier$10;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGeneratorLock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v2, v2, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$4300(Lcom/android/phone/CallNotifier;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]mToneGenerator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v2, v2, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$4400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$2000(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGeneratorLock["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v2, v2, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$4300(Lcom/android/phone/CallNotifier;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]mToneGenerator["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v2, v2, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v2}, Lcom/android/phone/CallNotifier;->access$4400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$4300(Lcom/android/phone/CallNotifier;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$4400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1700(Lcom/android/phone/CallNotifier;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[InCallScreen.java]mReceiver:SS_INFO_FWIM_NSS:postDelayed:mToneGenerator[null]"

    invoke-static {v0, v2}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$1500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$4400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0}, Lcom/android/phone/CallNotifier;->access$4400(Lcom/android/phone/CallNotifier;)Landroid/media/ToneGenerator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    iget-object v0, p0, Lcom/android/phone/CallNotifier$10$1;->this$1:Lcom/android/phone/CallNotifier$10;

    iget-object v0, v0, Lcom/android/phone/CallNotifier$10;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v2, 0x0

    # setter for: Lcom/android/phone/CallNotifier;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v0, v2}, Lcom/android/phone/CallNotifier;->access$4402(Lcom/android/phone/CallNotifier;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
