.class public Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FtRetryAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/FtRetryAlarmReceiver"

.field private static isFromBootAction:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->isFromBootAction:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getIsFromBootAction()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->isFromBootAction:Z

    return v0
.end method

.method public static setIsFromBootAction(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/mms/rcs/transaction/FtRetryAlarmReceiver;->isFromBootAction:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v3, "Mms/FtRetryAlarmReceiver"

    const-string v4, "onReceive()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIPME()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "Mms/FtRetryAlarmReceiver"

    const-string v4, "Disabled FtAutoResumeRetry()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "rcsdb_id"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "direction"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FtRetryAlarmReceiver rcsdb_id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->resumeSendingFile(J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    invoke-static {v1, v2}, Lcom/android/mms/rcs/transaction/ActionsFactoryFT;->resumeIncomingFile(J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
