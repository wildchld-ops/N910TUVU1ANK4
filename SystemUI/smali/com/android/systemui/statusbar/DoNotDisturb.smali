.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DORMANT_MODE_OFF:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_OFF"

.field private static final DORMANT_MODE_ON:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_ON"

.field private static final DORMANT_MODE_UPDATE:Ljava/lang/String; = "android.intent.action.DORMANT_MODE_UPDATE"

.field static final MSEC_A_DAY:J = 0x5265c00L

.field private static final MSEC_A_HALF_SEC:J = 0x1f4L

.field private static final TW_TAG:Ljava/lang/String; = "StatusBar-DoNotDistrub"


# instance fields
.field private isAlwaysDormant:Z

.field private isDormantModeOn:Z

.field private isDormantModeSwitchedOn:Z

.field private isNotificationDisabled:Z

.field private isPrayModeOn:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

.field mEndTimePendingIntent:Landroid/app/PendingIntent;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mStartTimePendingIntent:Landroid/app/PendingIntent;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/high16 v7, 0x10000000

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    new-instance v3, Lcom/android/systemui/statusbar/DoNotDisturb$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/DoNotDisturb$1;-><init>(Lcom/android/systemui/statusbar/DoNotDisturb;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "StatusBar-DoNotDistrub"

    const-string v4, "DoNotDisturb constructor called"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "statusbar"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DORMANT_MODE_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    const-string v3, "dormant_switch_onoff"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_disable_notifications"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_disable_led_indicator"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_always"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_start_hour"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_start_min"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_end_hour"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "dormant_end_min"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v1, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.DORMANT_MODE_UPDATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.settings.PRAYMODE_PREFERENCE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeEnabled(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDoNotDisturbStatus()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/DoNotDisturb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DoNotDisturb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isDormantTime()Z
    .locals 14

    const/16 v13, 0xd

    const/16 v12, 0xc

    const/16 v11, 0xb

    const/4 v10, -0x2

    const/4 v7, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_hour"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_start_min"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v13, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_hour"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v11, v8}, Ljava/util/Calendar;->set(II)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dormant_end_min"

    invoke-static {v8, v9, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    invoke-virtual {v4, v12, v8}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v13, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v8, v5, v2

    if-gez v8, :cond_0

    cmp-long v8, v0, v5

    if-ltz v8, :cond_0

    cmp-long v8, v0, v2

    if-ltz v8, :cond_1

    :cond_0
    cmp-long v8, v5, v2

    if-lez v8, :cond_2

    cmp-long v8, v0, v5

    if-gez v8, :cond_1

    cmp-long v8, v0, v2

    if-gez v8, :cond_2

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7
.end method

.method private setDormantAlarm()V
    .locals 22

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    const/16 v4, 0xb

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dormant_start_hour"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v15, v4, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dormant_start_min"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v15, v4, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/16 v4, 0xb

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dormant_end_hour"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v14, v4, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dormant_end_min"

    const/4 v9, 0x0

    const/4 v10, -0x2

    invoke-static {v7, v8, v9, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v14, v4, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    const/4 v7, 0x0

    invoke-virtual {v14, v4, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v4, v7, v16

    if-lez v4, :cond_0

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    :goto_0
    const-wide/16 v9, 0x1f4

    add-long v5, v7, v9

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    cmp-long v4, v7, v16

    if-lez v4, :cond_1

    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    :goto_1
    const-wide/16 v9, 0x1f4

    add-long v18, v7, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v7, "alarm"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x0

    const-wide/32 v7, 0x5265c00

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStartTimePendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v8, 0x0

    const-wide/32 v11, 0x5265c00

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/DoNotDisturb;->mEndTimePendingIntent:Landroid/app/PendingIntent;

    move-object v7, v3

    move-wide/from16 v9, v18

    invoke-virtual/range {v7 .. v13}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v4, "StatusBar-DoNotDistrub"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set Repeating event for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v21 .. v21}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    const-wide/32 v9, 0x5265c00

    add-long/2addr v7, v9

    goto/16 :goto_1
.end method

.method private updateDisableRecord()V
    .locals 3

    const/high16 v0, 0x40000

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDormantModeObserver:Lcom/android/systemui/statusbar/DoNotDisturb$DormantModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public isPrayModeEnabled(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "com.sec.android.settings.praymodewidget"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v4, "PraymodePreference"

    const/4 v5, 0x5

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "isPrayerNotiOn"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "StatusBar-DoNotDistrub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Pray mode call isPrayModeEnabled value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v2

    const-string v4, "StatusBar-DoNotDistrub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not data shared "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDoNotDisturbStatus()V
    .locals 5

    const/4 v4, -0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_switch_onoff"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_disable_notifications"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isNotificationDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dormant_always"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isPrayModeOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeSwitchedOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantTime()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v0, :cond_8

    const-string v0, "android.intent.action.DORMANT_MODE_ON"

    :goto_3
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "StatusBar-DoNotDistrub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBroadcast "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isDormantModeOn:Z

    if-eqz v0, :cond_9

    const-string v0, "android.intent.action.DORMANT_MODE_ON"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    const-string v0, "StatusBar-DoNotDistrub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The STREAM NOTIFICATION volume is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->isAlwaysDormant:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->setDormantAlarm()V

    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    const-string v0, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_3

    :cond_9
    const-string v0, "android.intent.action.DORMANT_MODE_OFF"

    goto :goto_4
.end method
