.class Lcom/android/server/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    const-string v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    const-string v0, "led_indicator_missed_event"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    const-string v0, "notification_reminder_led_indicator_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "notification_reminder"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "time_key"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/server/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p1, :cond_0

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string v6, "notification_light_pulse"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_9

    move v2, v4

    :goto_0
    const-string v6, "led_indicator_missed_event"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v4

    :goto_1
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v2, :cond_1

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z
    invoke-static {v6, v2}, Lcom/android/server/NotificationManagerService;->access$3402(Lcom/android/server/NotificationManagerService;Z)Z

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-virtual {v6}, Lcom/android/server/NotificationManagerService;->rebindListenerServices()V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->LED_INDICATOR_MISSED_EVENT_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string v6, "led_indicator_missed_event"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_b

    move v0, v4

    :goto_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v0, :cond_5

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z
    invoke-static {v6, v0}, Lcom/android/server/NotificationManagerService;->access$3502(Lcom/android/server/NotificationManagerService;Z)Z

    const-string v6, "STATUSBAR-NotificationService"

    const-string/jumbo v7, "update() : LED_INDICATOR_MISSED_EVENT"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->NOTIFICATION_REMINDER_LED_INDICATOR_URI:Landroid/net/Uri;

    invoke-virtual {v6, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v6, "notification_reminder_led_indicator_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v4

    :goto_3
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)Z

    move-result v6

    if-eq v6, v1, :cond_7

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # setter for: Lcom/android/server/NotificationManagerService;->mMissedNotificationReminderLightEnabled:Z
    invoke-static {v6, v1}, Lcom/android/server/NotificationManagerService;->access$3602(Lcom/android/server/NotificationManagerService;Z)Z

    const-string v6, "STATUSBAR-NotificationService"

    const-string/jumbo v7, "update() : NOTIFICATION_REMINDER_LED_INDICATOR_ENABLED"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)V

    :cond_7
    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const-string v7, "notification_reminder"

    invoke-static {v3, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_d

    :goto_4
    # setter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v6, v4}, Lcom/android/server/NotificationManagerService;->access$3702(Lcom/android/server/NotificationManagerService;Z)Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mMissedSoundEnabled:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->sendMsg()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3800(Lcom/android/server/NotificationManagerService;)V

    :cond_8
    :goto_5
    monitor-exit v5

    return-void

    :cond_9
    move v2, v5

    goto/16 :goto_0

    :cond_a
    move v0, v5

    goto/16 :goto_1

    :cond_b
    move v0, v5

    goto :goto_2

    :cond_c
    move v1, v5

    goto :goto_3

    :cond_d
    move v4, v5

    goto :goto_4

    :cond_e
    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v4

    if-eqz v4, :cond_8

    const-string v4, "NotificationService"

    const-string/jumbo v6, "update: cancel alarm"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->notificationAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->notificationPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/NotificationManagerService;->access$1400(Lcom/android/server/NotificationManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->isNotificationAlarmOn:Z
    invoke-static {v4, v6}, Lcom/android/server/NotificationManagerService;->access$1502(Lcom/android/server/NotificationManagerService;Z)Z

    goto :goto_5

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
