.class public Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;
.super Landroid/appwidget/AppWidgetProvider;
.source "AccessibilityEasyWidgetProviderAssistiveLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final mHandler:Landroid/os/Handler;

.field private static mStaticBatteryCharging:Z

.field private static mStaticBatteryLevel:I

.field private static sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;


# instance fields
.field private mAssistiveNotification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.accessibilitywidget.AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    const/16 v0, 0x64

    sput v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$1;

    invoke-direct {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0    # I

    sput p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .param p0    # Landroid/content/Context;

    const v2, 0x7f040002

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const v1, 0x7f0b0028

    invoke-static {p0, v3}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v0, p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_1

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040001

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v2, "buildUpdate LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkBroadcastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->registerBroadcastReceiver()V

    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getWidgetMode(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torch_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWidgetMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private sendWidgetStateUpdateIntent(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "from"

    const-string v2, "widget"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private toggleWidgetMode(Landroid/content/Context;)V
    .locals 12
    .param p1    # Landroid/content/Context;

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toggleWidgetMode() Static Battery Level : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "prefs"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "torch_light"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    const-string v8, "SEC_FLOATING_FEATURE_COMMON_FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL"

    invoke-static {v8}, Lcom/android/settings/feature/Feature$Floating;->getInteger(Ljava/lang/String;)I

    move-result v3

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FLASH_LIGHT_DEFAULT_BRIGHTNESS_LEVEL : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_4

    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    const/4 v9, 0x5

    if-gt v8, v9, :cond_0

    sget-boolean v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryCharging:Z

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0xbb8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v8, :cond_1

    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    iput-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f020682

    iput v9, v8, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v9, 0x0

    iput-wide v9, v8, Landroid/app/Notification;->when:J

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x2

    iput v9, v8, Landroid/app/Notification;->flags:I

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f090ecf

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.cocktailbar"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "com.sec.feature.cocktailbar enabled, so removed ticker"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v9, 0x0

    iput-object v9, v8, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {p1, v8, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const v9, 0x7f090ecf

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f090ed0

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, p1, v9, v10, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->icon:I

    iget-object v9, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v5, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "key_flash_notitification_eabled"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    :goto_1
    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toggleWidgetMode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sendWidgetStateUpdateIntent(Landroid/content/Context;)V

    return-void

    :cond_4
    const/4 v8, 0x1

    :try_start_1
    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "could not turn off torch light"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "torch_light"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v8}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    sget-object v8, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "toggleWidgetMode() : cancel Timer"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "notification"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const v8, 0x7f020682

    invoke-virtual {v5, v8}, Landroid/app/NotificationManager;->cancel(I)V

    const-string v8, "key_flash_notitification_eabled"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "flash_notification"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v8, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v9, "could not turn off torch light"

    invoke-static {v8, v9, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .param p0    # Landroid/widget/RemoteViews;
    .param p1    # Landroid/content/Context;

    const v5, 0x7f0b0032

    const v7, 0x7f0b0028

    const/4 v3, 0x0

    const-string v2, ""

    invoke-virtual {p0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x7f091269

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0b0029

    const v4, 0x7f02000c

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0215

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v3, 0x7f090ed2

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f090ecb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v4, "updateButtons , icon_on"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0029

    const v4, 0x7f02000b

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0216

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v4, "updateButtons , icon_off"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f090ed3

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f090ecb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v7, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "AccessibilityEasyWidgetProviderAssistiveLight"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 5
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateWidget : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    invoke-static {p0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeleted(Landroid/content/Context;[I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # [I

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "torch_light"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7f020682

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sendWidgetStateUpdateIntent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v3, "could not turn off torch light"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;->unregisterBroadcastReceiver()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->sBroadcastReceiver:Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight$SettingsBroadcastReceiver;

    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->checkBroadcastReceiver(Landroid/content/Context;)V

    const/16 v0, 0x64

    sput v0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mStaticBatteryLevel:I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const v11, 0x7f090ecf

    const v9, 0x7f020682

    const/4 v10, 0x0

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    const-string v7, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v8, "BUTTON_CENTER : "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->toggleWidgetMode(Landroid/content/Context;)V

    :cond_0
    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->getWidgetMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "notification"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v9}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iput v9, v7, Landroid/app/Notification;->icon:I

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f090ed0

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, p1, v8, v9, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->icon:I

    iget-object v8, p0, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->mAssistiveNotification:Landroid/app/Notification;

    invoke-virtual {v4, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_OFF_WIDGETUPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v7, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "quicktool"

    const-string v8, "from"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "value"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->updateWidget(Landroid/content/Context;)V

    :cond_6
    const-string v7, "AccessibilityEasyWidgetProviderAssistiveLight"

    const-string v8, "android.intent.action.ACTION_ASSISTIVE_WIDGET_STATE_CHANGE"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/appwidget/AppWidgetManager;
    .param p3    # [I

    const-string v2, "AccessibilityEasyWidgetProviderAssistiveLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate, appWidgetIds.length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/accessibilitywidget/AccessibilityEasyWidgetProviderAssistiveLight;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
