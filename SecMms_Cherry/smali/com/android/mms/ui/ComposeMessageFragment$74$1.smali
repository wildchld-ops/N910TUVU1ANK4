.class Lcom/android/mms/ui/ComposeMessageFragment$74$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$74;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$74;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$74;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$74$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$74$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$74;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$74;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Vibrator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$74$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$74;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$74;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MmsNotification;->getInstance()Lcom/android/mms/ui/MmsNotification;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$74$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$74;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment$74;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const v4, 0x7f070003

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/ui/MmsNotification;->playMmsNotice(Landroid/content/Context;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Mms/ComposeMessageFragment"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
