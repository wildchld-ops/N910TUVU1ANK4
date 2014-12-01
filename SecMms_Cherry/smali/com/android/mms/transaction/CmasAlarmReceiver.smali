.class public Lcom/android/mms/transaction/CmasAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CmasAlarmReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/CmasAlarmReceiver"

.field private static mTMOreminderCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static getReminderCount()I
    .locals 3

    const-string v0, "Mms/CmasAlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetReminderCount as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    return v0
.end method

.method public static setReminderCount(I)V
    .locals 3

    const-string v0, "Mms/CmasAlarmReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetReminderCount as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput p0, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-wide/16 v6, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v5, "threadId"

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "msgId"

    invoke-virtual {p2, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v5, "Mms/CmasAlarmReceiver"

    const-string v6, "Alarm Fire"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v5, "ONCECMAS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;JJ)V

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    const-string v5, "TMOCMAS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Mms/CmasAlarmReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTMOreminderCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/android/mms/transaction/CmasAlarmReceiver;->mTMOreminderCount:I

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    const/4 v5, -0x1

    invoke-static {v5}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;JJ)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateCMASRepeatNotifications(Landroid/content/Context;JJ)V

    goto :goto_0
.end method
