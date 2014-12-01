.class Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateTimeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SoftwareUpdateSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/SoftwareUpdateSettings;Lcom/android/settings/SoftwareUpdateSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;-><init>(Lcom/android/settings/SoftwareUpdateSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    const-string v1, "Software Update"

    const-string v2, "Intent is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Software Update"

    const-string v2, "Action is null!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v1, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Software Update"

    const-string v2, "Software Update date is updated"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SoftwareUpdateSettings$UpdateTimeBroadcastReceiver;->this$0:Lcom/android/settings/SoftwareUpdateSettings;

    # invokes: Lcom/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V
    invoke-static {v1}, Lcom/android/settings/SoftwareUpdateSettings;->access$000(Lcom/android/settings/SoftwareUpdateSettings;)V

    goto :goto_0
.end method
