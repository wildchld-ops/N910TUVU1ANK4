.class public Lcom/android/settings/notificationreminder/NotificationReminderService;
.super Landroid/app/Service;
.source "NotificationReminderService.java"


# static fields
.field public static mService:Lcom/android/settings/notificationreminder/NotificationReminderService;


# instance fields
.field private currentNotiList:[Landroid/service/notification/StatusBarNotification;

.field private mListener:Landroid/service/notification/INotificationListener$Stub;

.field private final mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

.field private notificationAlarmManager:Landroid/app/AlarmManager;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationPendingIntent:Landroid/app/PendingIntent;

.field private notificationStubManager:Landroid/app/INotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationreminder/NotificationReminderService$1;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderService;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderService$2;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderService$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationreminder/NotificationReminderService$3;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderService;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mListener:Landroid/service/notification/INotificationListener$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)[Landroid/service/notification/StatusBarNotification;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->currentNotiList:[Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/notificationreminder/NotificationReminderService;)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->loadNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/notificationreminder/NotificationReminderService;[Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/notificationreminder/NotificationReminderService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/notificationreminder/NotificationReminderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->updateSoundLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/notificationreminder/NotificationReminderService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->updateAlaramRepeating()V

    return-void
.end method

.method private hasCheckedPacakages([Landroid/service/notification/StatusBarNotification;)Z
    .locals 7

    const-string v4, "NotificationReminderService"

    const-string v5, "hasCheckedPacakages"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_reminder_app_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-string v5, "NotificationReminderService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check List : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_2

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "NotificationReminderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check List contains : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p1, v2

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_2
    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private hasClearableItems([Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    const-string v1, "NotificationReminderService"

    const-string v2, "hasClearableItems"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NotificationReminderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is clearable item in Notification List :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private loadNotifications()[Landroid/service/notification/StatusBarNotification;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationStubManager:Landroid/app/INotificationManager;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateAlaramRepeating()V
    .locals 8

    :try_start_0
    const-string v0, "NotificationReminderService"

    const-string v1, "setRepeating"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_key_selectable"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "time_key_selectable"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateLedFlashLocked(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_reminder_led_indicator_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateSoundLocked()V
    .locals 10

    const-wide/16 v8, 0x1f4

    const-string v5, "NotificationReminderService"

    const-string v6, " updateSoundLocked "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const-string v5, "vibrator"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const-string v5, "NotificationReminderService"

    const-string v6, "Vibrate"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :goto_0
    return-void

    :cond_1
    const/4 v5, 0x2

    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_vibrate"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    const-string v5, "NotificationReminderService"

    const-string v6, "Sound"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/settings/notificationreminder/NotificationReminderService$4;

    invoke-direct {v5, p0}, Lcom/android/settings/notificationreminder/NotificationReminderService$4;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderService;)V

    invoke-virtual {v2, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationManager:Landroid/app/NotificationManager;

    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationStubManager:Landroid/app/INotificationManager;

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationStubManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mListener:Landroid/service/notification/INotificationListener$Stub;

    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getUserId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/app/INotificationManager;->registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v3, Lcom/android/settings/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/settings/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_ACTION:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->updateLedFlashLocked(Z)V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->notificationPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    sput-object p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mService:Lcom/android/settings/notificationreminder/NotificationReminderService;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_key_selectable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderService;->mNotificationReminderServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderService;->updateAlaramRepeating()V

    const/4 v0, 0x1

    return v0
.end method
