.class Lcom/android/keyguard/KeyguardActivityLauncher$4;
.super Ljava/lang/Object;
.source "KeyguardActivityLauncher.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardActivityLauncher;->launchLandingPage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardActivityLauncher;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardActivityLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$400(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$400(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v6

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->mLandingPageUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$400(Lcom/android/keyguard/KeyguardActivityLauncher;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardActivityLauncher$4;->this$0:Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    # invokes: Lcom/android/keyguard/KeyguardActivityLauncher;->startActivityForCurrentUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v2, v1, v3, v4, v5}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$100(Lcom/android/keyguard/KeyguardActivityLauncher;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    # getter for: Lcom/android/keyguard/KeyguardActivityLauncher;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/KeyguardActivityLauncher;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send pending intent due to : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
