.class Lcom/android/keyguard/sec/AdaptiveEventManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 8

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_additional_weather"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_show_info"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v0, v3

    :goto_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v4, v4, Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_CURRENT_LOCATION_WEATHER_DATA:Ljava/lang/String;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "START"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "PACKAGE"

    const-string v4, "com.android.keyguard"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CP"

    iget-object v4, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCPName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mAdaptiveEventCallback:Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$500(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager$AdaptiveEventCallback;->onBootCompleted()V

    return-void

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-string v0, "com.sec.android.app.shealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    const-string v1, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
