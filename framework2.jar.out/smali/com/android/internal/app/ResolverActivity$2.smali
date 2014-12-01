.class Lcom/android/internal/app/ResolverActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mReceiver - action : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "extra_auth_result"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.sec.orca.easysignup.ACTION_AUTH_RESULT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mReceiver - result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    # setter for: Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivity;->access$1202(Z)Z

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    # invokes: Lcom/android/internal/app/ResolverActivity;->sendRequesRecentContactsHistoryList()Z
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$1400(Lcom/android/internal/app/ResolverActivity;)Z

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mEasySignUpReceiver.onReceive : Authenticate Success"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivity;->mIsEasySingUpIsCertificated:Z
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->access$1202(Z)Z

    const-string v2, "ResolverActivity"

    const-string/jumbo v3, "mEasySignUpReceiver.onReceive : Authenticate failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    # getter for: Lcom/android/internal/app/ResolverActivity;->mEasySignUpReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivity;->access$1300(Lcom/android/internal/app/ResolverActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$2;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
