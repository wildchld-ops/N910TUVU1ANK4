.class public Lcom/android/systemui/recent/cardholder/RecentsPreloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RecentsPreloadReceiver.java"


# static fields
.field public static final CANCEL_PRELOAD_INTENT:Ljava/lang/String; = "com.sec.android.app.FlashBarService.recent.CANCEL_PRELOAD"

.field public static final PRELOAD_INTENT:Ljava/lang/String; = "com.sec.android.app.FlashBarService.recent.action.PRELOAD"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "com.sec.android.app.FlashBarService.recent.action.PRELOAD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->preloadRecentTasksList()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "com.sec.android.app.FlashBarService.recent.CANCEL_PRELOAD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/cardholder/RecentTasksLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recent/cardholder/RecentTasksLoader;->cancelPreloadingRecentTasksList()V

    goto :goto_0
.end method
