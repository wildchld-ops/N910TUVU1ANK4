.class public Lcom/android/settings/wifi/WifiTimerService;
.super Landroid/app/Service;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

.field private mSheduleHandlerThread:Ljava/lang/Thread;

.field final wifiOffNotificationIcon:I

.field final wifiOnNotificationIcon:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f020689

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOnNotificationIcon:I

    iput v0, p0, Lcom/android/settings/wifi/WifiTimerService;->wifiOffNotificationIcon:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiTimerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V

    return-void
.end method

.method private cancelAllAlarms()V
    .locals 7

    const/4 v6, 0x0

    const-string v4, "WifiTimer"

    const-string v5, "cancelAllAlarm"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d1

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x7d2

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private cancelStartAlarms()V
    .locals 6

    const-string v3, "WifiTimer"

    const-string v4, "cancelStartAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private cancelStopAlarms()V
    .locals 6

    const-string v3, "WifiTimer"

    const-string v4, "cancelStopAlarm"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x7d2

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private enableWifi(Ljava/lang/Boolean;)V
    .locals 11

    const/4 v7, 0x1

    const-string v8, "WifiTimer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enableWifi "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ChinaNalSecurity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v7, "WifiTimer"

    const-string v8, "Wi-Fi is not allowed (Policy)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-ne v7, v8, :cond_2

    if-ne v7, v4, :cond_2

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    const/16 v7, 0x46

    iput v7, v6, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiTimerService;->showNotification(Ljava/lang/Boolean;)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v7, "wifitimer_wifi_start"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_2
.end method

.method private sheduleAllAlarms()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_start_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStartAlarm()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "wifitimer_end_time_checked"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->wifiStopAlarm()V

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStartAlarms()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTimerService;->cancelStopAlarms()V

    goto :goto_1
.end method

.method private showNotification(Ljava/lang/Boolean;)V
    .locals 13

    const v12, 0x7f090463

    const/16 v11, 0x138d

    const/16 v10, 0x10

    const/4 v9, 0x0

    const v8, 0x7f020689

    const-string v5, "WifiTimer"

    const-string v6, "showNotification"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v3, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f090464

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const v6, 0x7f090464

    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f090465

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput v10, v3, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v8, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-static {v5, v9, v2, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f090465

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iput v10, v4, Landroid/app/Notification;->flags:I

    invoke-virtual {v1, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private wifiStartAlarm()V
    .locals 12

    const/4 v11, 0x0

    const-string v7, "WifiTimer"

    const-string v8, "wifiStartAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_start_time"

    const-string v9, "19:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v2, v7, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    const-string v7, "WifiTimer"

    const-string v8, "Add one day"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_0
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SystemTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SheduledTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3e9

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d1

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private wifiStopAlarm()V
    .locals 12

    const/4 v11, 0x0

    const-string v7, "WifiTimer"

    const-string v8, "wifiStopAlarm"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v8, "wifitimer_end_time"

    const-string v9, "21:00"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getHour(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3}, Lcom/android/settings/wifi/WifiTimer;->getMinute(Ljava/lang/String;)I

    move-result v5

    const/16 v7, 0xb

    invoke-virtual {v2, v7, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    invoke-virtual {v2, v7, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    invoke-virtual {v2, v7, v11}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_0

    const/4 v7, 0x6

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Ljava/util/Calendar;->add(II)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v7, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v8, 0x138c

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "wifisheduler_alarm_type"

    const/16 v8, 0x3ea

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x7d2

    const/high16 v9, 0x8000000

    invoke-static {v7, v8, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v11, v7, v8, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SheduleHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v1, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandlerThread:Ljava/lang/Thread;

    check-cast v0, Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;-><init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "WifiTimer"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    const-string v1, "WifiTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiTimerService;->mSheduleHandler:Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
