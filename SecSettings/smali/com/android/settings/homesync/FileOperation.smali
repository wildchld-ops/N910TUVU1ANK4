.class public abstract Lcom/android/settings/homesync/FileOperation;
.super Ljava/lang/Object;
.source "FileOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homesync/FileOperation$OperationStopReason;,
        Lcom/android/settings/homesync/FileOperation$OpStatus;
    }
.end annotation


# static fields
.field public static mOpStatus:Lcom/android/settings/homesync/FileOperation$OpStatus;


# instance fields
.field public bIsoperationCancelled:Z

.field private futureTaskHandler:Landroid/os/Handler;

.field private futureTaskRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field public mErrMaxFilePath:Z

.field private mNotiBuilder:Landroid/app/Notification$Builder;

.field private mNotiManager:Landroid/app/NotificationManager;

.field public mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

.field private mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

.field public operationException:Ljava/lang/Exception;

.field private operationRunnable:Ljava/lang/Runnable;

.field private operationThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->NONE:Lcom/android/settings/homesync/FileOperation$OpStatus;

    sput-object v0, Lcom/android/settings/homesync/FileOperation;->mOpStatus:Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/homesync/FileOperationProgress;Lcom/android/settings/homesync/FileOperationPaste$RequestType;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
    .param p2    # Lcom/android/settings/homesync/FileOperationProgress;
    .param p3    # Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperation;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->None:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->None:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object p2, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/homesync/FileOperation;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne p3, v0, :cond_0

    const v0, 0x1080088

    invoke-direct {p0, v0}, Lcom/android/settings/homesync/FileOperation;->initNotification(I)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    iput-boolean v1, p0, Lcom/android/settings/homesync/FileOperation;->mErrMaxFilePath:Z

    iput-object v2, p0, Lcom/android/settings/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->INITIALIZED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/homesync/FileOperation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/FileOperation$1;-><init>(Lcom/android/settings/homesync/FileOperation;)V

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->operationRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation;->operationRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->operationThread:Ljava/lang/Thread;

    new-instance v0, Lcom/android/settings/homesync/FileOperation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/homesync/FileOperation$2;-><init>(Lcom/android/settings/homesync/FileOperation;)V

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;

    return-void

    :cond_0
    const v0, 0x1080081

    invoke-direct {p0, v0}, Lcom/android/settings/homesync/FileOperation;->initNotification(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/homesync/FileOperation;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/FileOperation;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/homesync/FileOperation;)V
    .locals 0
    .param p0    # Lcom/android/settings/homesync/FileOperation;

    invoke-direct {p0}, Lcom/android/settings/homesync/FileOperation;->releasePowerWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/homesync/FileOperation;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/FileOperation;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->futureTaskRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/homesync/FileOperation;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/settings/homesync/FileOperation;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/homesync/FileOperation;)V
    .locals 0
    .param p0    # Lcom/android/settings/homesync/FileOperation;

    invoke-direct {p0}, Lcom/android/settings/homesync/FileOperation;->saveFileOperationTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/homesync/FileOperation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .param p0    # Lcom/android/settings/homesync/FileOperation;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J

    invoke-direct/range {p0 .. p7}, Lcom/android/settings/homesync/FileOperation;->process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/homesync/FileOperation;IIJJ)V
    .locals 0
    .param p0    # Lcom/android/settings/homesync/FileOperation;
    .param p1    # I
    .param p2    # I
    .param p3    # J
    .param p5    # J

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/homesync/FileOperation;->updateNotification(IIJJ)V

    return-void
.end method

.method public static getOpStatus()Lcom/android/settings/homesync/FileOperation$OpStatus;
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperation;->mOpStatus:Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-object v0
.end method

.method private initNotification(I)V
    .locals 7
    .param p1    # I

    const/high16 v6, 0x8000000

    const/4 v5, 0x0

    const-string v0, ""

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v4, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091833

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4, v5, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.homesync.HOMESYNC_BACKUP_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mNotiManager:Landroid/app/NotificationManager;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f091834

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private process(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # J
    .param p6    # J

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->filenameView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalNumberView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v1, p4, p5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalPercentageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v1, p6, p7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private declared-synchronized releasePowerWakeLock()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "HomeSyncFileOperation"

    const-string v1, "FileOperation.releasePowerWakeLock - SCREEN_DIM_WAKE_LOCK is Off."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private saveFileOperationTime()V
    .locals 7

    iget-object v4, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    const-string v5, "com.android.settings.homesync_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, p0, Lcom/android/settings/homesync/FileOperation;->mRequestType:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    sget-object v5, Lcom/android/settings/homesync/FileOperationPaste$RequestType;->Backup:Lcom/android/settings/homesync/FileOperationPaste$RequestType;

    if-ne v4, v5, :cond_0

    const-string v4, "last_backup_time"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_0
    const-string v4, "last_restore_time"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V
    .locals 0
    .param p0    # Lcom/android/settings/homesync/FileOperation$OpStatus;

    sput-object p0, Lcom/android/settings/homesync/FileOperation;->mOpStatus:Lcom/android/settings/homesync/FileOperation$OpStatus;

    return-void
.end method

.method private updateNotification(IIJJ)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # J
    .param p5    # J

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v2, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v2, p5, p6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v1, 0x457

    iget-object v2, p0, Lcom/android/settings/homesync/FileOperation;->mNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method protected cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homesync/FileOperation;->bIsoperationCancelled:Z

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->CANCELLED:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OperationStopReason;->Canceled:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mOperationStopReason:Lcom/android/settings/homesync/FileOperation$OperationStopReason;

    return-void
.end method

.method public destroyNotification()V
    .locals 2

    const-string v0, "HomeSyncFileOperation"

    const-string v1, "destroyNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method protected abstract doFileOperation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract done(Ljava/lang/Exception;)V
.end method

.method public execute()V
    .locals 2

    const-string v0, "HomeSyncFileOperation"

    const-string v1, "Fileoperation : progressDialog - show"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->operationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/android/settings/homesync/FileOperation$OpStatus;->RUNNING:Lcom/android/settings/homesync/FileOperation$OpStatus;

    invoke-static {v0}, Lcom/android/settings/homesync/FileOperation;->setOpStatus(Lcom/android/settings/homesync/FileOperation$OpStatus;)V

    return-void
.end method

.method public publish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJZ)V
    .locals 13
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # I
    .param p7    # J
    .param p9    # J
    .param p11    # Z

    iget-object v12, p0, Lcom/android/settings/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/homesync/FileOperation$3;

    move-object v1, p0

    move/from16 v2, p5

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move/from16 v11, p6

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/homesync/FileOperation$3;-><init>(Lcom/android/settings/homesync/FileOperation;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZI)V

    invoke-virtual {v12, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected setProgress(JJII)V
    .locals 3
    .param p1    # J
    .param p3    # J
    .param p5    # I
    .param p6    # I

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->perFilePercentageView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalNumberView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalProgressBarView:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p6}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/android/settings/homesync/FileOperation;->mProgressScreen:Lcom/android/settings/homesync/FileOperationProgress;

    sget-object v0, Lcom/android/settings/homesync/FileOperationProgress;->totalPercentageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/homesync/FileOperation;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
