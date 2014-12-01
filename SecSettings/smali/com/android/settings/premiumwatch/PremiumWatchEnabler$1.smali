.class Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "PremiumWatchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/premiumwatch/PremiumWatchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/premiumwatch/PremiumWatchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.PREMIUM_WATCH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PremiumWatchEnabler"

    const-string v2, "android.settings.PREMIUM_WATCH_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PremiumWatchEnabler"

    const-string v2, "android.settings.PREMIUM_WATCH_SWITCH_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/premiumwatch/PremiumWatchEnabler$1;->this$0:Lcom/android/settings/premiumwatch/PremiumWatchEnabler;

    invoke-virtual {v1}, Lcom/android/settings/premiumwatch/PremiumWatchEnabler;->updateSwitch()V

    goto :goto_0
.end method
