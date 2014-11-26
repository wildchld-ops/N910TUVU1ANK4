.class public Lcom/android/mms/freemessage/FreeMessageTimeoutManager;
.super Ljava/lang/Object;
.source "FreeMessageTimeoutManager.java"


# static fields
.field private static DEFAULT_TIMEOUT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/FreeMessageTimeoutManager"

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/mms/freemessage/FreeMessageTimeoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->sInstance:Lcom/android/mms/freemessage/FreeMessageTimeoutManager;

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/16 v0, 0x4e20

    sput v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Mms/FreeMessageTimeoutManager"

    const-string v1, "ReservationManager()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/mms/freemessage/FreeMessageTimeoutManager;
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v0, "Mms/FreeMessageTimeoutManager"

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->sInstance:Lcom/android/mms/freemessage/FreeMessageTimeoutManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;

    invoke-direct {v0, p0}, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->sInstance:Lcom/android/mms/freemessage/FreeMessageTimeoutManager;

    :cond_0
    sget-object v0, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->sInstance:Lcom/android/mms/freemessage/FreeMessageTimeoutManager;

    return-object v0
.end method

.method private makeAlarmIntent(JJI)Landroid/app/PendingIntent;
    .locals 5
    .param p1    # J
    .param p3    # J
    .param p5    # I

    const-string v3, "Mms/FreeMessageTimeoutManager"

    const-string v4, "makeAlarmIntent()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v2, p3

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.mms.freemessage.ACTION_SENDING_TIMEOUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "extra_thread_id"

    invoke-virtual {v0, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "extra_msg_type"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "extra_msg_id"

    invoke-virtual {v0, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    sget-object v3, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelAlarm(JJI)V
    .locals 4
    .param p1    # J
    .param p3    # J
    .param p5    # I

    const-string v1, "Mms/FreeMessageTimeoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAlarm() : transactionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->makeAlarmIntent(JJI)Landroid/app/PendingIntent;

    move-result-object v0

    sget-object v1, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setAlarm(JJI)V
    .locals 10
    .param p1    # J
    .param p3    # J
    .param p5    # I

    const-string v7, "Mms/FreeMessageTimeoutManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessageAlarm() : transactionId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget v7, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->DEFAULT_TIMEOUT:I

    int-to-long v5, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long v0, v2, v5

    invoke-direct/range {p0 .. p5}, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->makeAlarmIntent(JJI)Landroid/app/PendingIntent;

    move-result-object v4

    sget-object v7, Lcom/android/mms/freemessage/FreeMessageTimeoutManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v0, v1, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method
