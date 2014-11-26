.class Lcom/android/keyguard/sec/KeyguardUnlockView$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "coverOpen"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # setter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mClearCoverOpened:Z
    invoke-static {v3, v1}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1302(Lcom/android/keyguard/sec/KeyguardUnlockView;Z)Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "automatic_unlock"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mIsVoiceUnlockFailed:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onResume()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$3;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    # getter for: Lcom/android/keyguard/sec/KeyguardUnlockView;->mVoiceEngineThread:Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;
    invoke-static {v2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->access$1400(Lcom/android/keyguard/sec/KeyguardUnlockView;)Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/sec/KeyguardVoiceEngineThread;->onPause()V

    goto :goto_1
.end method
