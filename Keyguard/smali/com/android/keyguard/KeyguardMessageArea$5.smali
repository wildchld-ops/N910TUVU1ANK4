.class Lcom/android/keyguard/KeyguardMessageArea$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMessageArea;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMessageArea;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/16 v4, 0x12c2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "CMASMessage"

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardMessageArea$5;->this$0:Lcom/android/keyguard/KeyguardMessageArea;

    # getter for: Lcom/android/keyguard/KeyguardMessageArea;->mCmasHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMessageArea;->access$300(Lcom/android/keyguard/KeyguardMessageArea;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
