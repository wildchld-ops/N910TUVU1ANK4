.class public Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeNotiReceiver.java"


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method private UpdateDataPowerSaving(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    goto :goto_0
.end method

.method private cancelOnGoingAlarm(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "alarm"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SLEEPINGMODE_ONGOING_ALARM_START"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.SLEEPINGMODE_ONGOING_ALARM_END"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private isSleepingModeTime(Landroid/content/Context;)Z
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v11, 0xb

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    mul-int/lit16 v11, v11, 0xe10

    const/16 v12, 0xc

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x3c

    add-int/2addr v11, v12

    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    add-int v2, v11, v12

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sleepingmode_start_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sleepingmode_start_min"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sleepingmode_end_hour"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "sleepingmode_end_min"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    mul-int/lit16 v11, v6, 0xe10

    mul-int/lit8 v12, v7, 0x3c

    add-int v8, v11, v12

    mul-int/lit16 v11, v3, 0xe10

    mul-int/lit8 v12, v4, 0x3c

    add-int v5, v11, v12

    if-le v8, v5, :cond_1

    if-ge v2, v8, :cond_0

    if-ge v2, v5, :cond_2

    :cond_0
    :goto_0
    return v9

    :cond_1
    if-le v2, v8, :cond_2

    if-lt v2, v5, :cond_0

    :cond_2
    move v9, v10

    goto :goto_0
.end method

.method private setOnGoingAlarm(Landroid/content/Context;)V
    .locals 21

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0x3c

    add-int v18, v18, v19

    const/16 v19, 0xd

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v19

    add-int v7, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sleepingmode_start_hour"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sleepingmode_start_min"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sleepingmode_end_hour"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "sleepingmode_end_min"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    mul-int/lit16 v0, v15, 0xe10

    move/from16 v18, v0

    mul-int/lit8 v19, v16, 0x3c

    add-int v17, v18, v19

    mul-int/lit16 v0, v8, 0xe10

    move/from16 v18, v0

    mul-int/lit8 v19, v9, 0x3c

    add-int v10, v18, v19

    sub-int v14, v7, v17

    sub-int v13, v7, v10

    if-lez v14, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0xb

    div-int/lit16 v0, v14, 0xe10

    move/from16 v19, v0

    rsub-int/lit8 v19, v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xc

    rem-int/lit16 v0, v14, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xd

    rem-int/lit8 v19, v14, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    :goto_0
    if-ge v10, v7, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0xb

    div-int/lit16 v0, v13, 0xe10

    move/from16 v19, v0

    rsub-int/lit8 v19, v19, 0x17

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xc

    rem-int/lit16 v0, v13, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xd

    rem-int/lit8 v19, v13, 0x3c

    rsub-int/lit8 v19, v19, 0x3b

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    :cond_0
    :goto_1
    const-string v18, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.settings.SLEEPINGMODE_ONGOING_ALARM_START"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    const/16 v18, 0x0

    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.settings.SLEEPINGMODE_ONGOING_ALARM_END"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    const/16 v18, 0x1

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v4, v0, v1, v2, v12}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v18, 0x1

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v19

    move/from16 v0, v18

    move-wide/from16 v1, v19

    invoke-virtual {v4, v0, v1, v2, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0xb

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xc

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xd

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v19

    rem-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0

    :cond_2
    if-le v10, v7, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0xb

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xc

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v19

    rem-int/lit16 v0, v0, 0xe10

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v18, 0xd

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v19

    rem-int/lit8 v19, v19, 0x3c

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSleepingMode()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.settings.SLEEPINGMODE_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.settings.SLEEPINGMODE_ONGOING_ALARM_START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.settings.SLEEPINGMODE_ONGOING_ALARM_END"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.settings.SLEEPINGMODE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sleepingmode_switch_onoff"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v5, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->isSleepingModeTime(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1, v5}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->UpdateDataPowerSaving(Landroid/content/Context;I)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->setOnGoingAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->UpdateDataPowerSaving(Landroid/content/Context;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->UpdateDataPowerSaving(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/sleepingmode/SleepingModeNotiReceiver;->cancelOnGoingAlarm(Landroid/content/Context;)V

    goto :goto_0
.end method
