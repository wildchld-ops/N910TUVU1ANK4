.class public Lcom/android/settings/TactileAssistBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TactileAssistBroadcastReceiver.java"


# instance fields
.field private mTactileAssist:Landroid/os/TactileAssist;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "tactileassist"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/TactileAssist;

    iput-object v2, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    iget-object v2, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "def_tactileassist_level"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "def_tactileassist_enable"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    if-ne v2, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    if-ne v0, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/os/TactileAssist;->setEnable(Z)Z

    iget-object v2, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    invoke-virtual {v2, v1}, Landroid/os/TactileAssist;->setLevel(I)Z

    iget-object v2, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    invoke-virtual {v2}, Landroid/os/TactileAssist;->storeAppList()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    if-eq v2, v3, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/settings/TactileAssistBroadcastReceiver;->mTactileAssist:Landroid/os/TactileAssist;

    invoke-virtual {v2}, Landroid/os/TactileAssist;->storeAppList()Z

    goto :goto_1

    :cond_4
    const-string v2, "TactileAssist"

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "TactileAssist"

    const-string v3, "ERROR - TactileAssist received a broadcast event it shouldn\'t receive."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
