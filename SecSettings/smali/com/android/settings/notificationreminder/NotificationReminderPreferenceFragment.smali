.class public Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NotificationReminderPreferenceFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mOpenDetailMenu:Z

.field private static mOpenDetailMenuKey:Ljava/lang/String;


# instance fields
.field public final DIALOG_ID_LED_INDICATOR:I

.field public final KEY_LED_INDICATOR:Ljava/lang/String;

.field public final KEY_PACKAGE_LIST_CATEGORY:Ljava/lang/String;

.field public final KEY_PACKAGE_SELECT_ALL:Ljava/lang/String;

.field public final KEY_SETTING_CATEGORY:Ljava/lang/String;

.field public final KEY_TIME_INTERVAL:Ljava/lang/String;

.field public final KEY_VIBRATE:Ljava/lang/String;

.field public SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

.field public SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private indicatorPreference:Landroid/preference/CheckBoxPreference;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

.field private mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private mPreferenceFragmentActivity:Landroid/app/Activity;

.field private mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeInterval:Landroid/preference/ListPreference;

.field private packageCategory:Landroid/preference/PreferenceCategory;

.field private packagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private selectAllPreference:Landroid/preference/CheckBoxPreference;

.field private settingCategory:Landroid/preference/PreferenceCategory;

.field private vibratePreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenu:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "NotificationReminderPreferenceFragment"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->TAG:Ljava/lang/String;

    const-string v0, "notification_reminder_category_options"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_SETTING_CATEGORY:Ljava/lang/String;

    const-string v0, "notification_reminder_vibrate"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_VIBRATE:Ljava/lang/String;

    const-string v0, "notification_reminder_indicator"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_LED_INDICATOR:Ljava/lang/String;

    const-string v0, "notification_time_interval"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_TIME_INTERVAL:Ljava/lang/String;

    const-string v0, "notification_reminder_category_packages"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_PACKAGE_LIST_CATEGORY:Ljava/lang/String;

    const-string v0, "notification_reminder_select_all"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->KEY_PACKAGE_SELECT_ALL:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->DIALOG_ID_LED_INDICATOR:I

    const-string v0, "notification_reminder"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const-string v0, "time_key"

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$1;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$2;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    const-string v0, "NotificationReminderPreferenceFragment"

    const-string v1, "NotificationReminderPreferenceFragment()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private addPackagePreference()V
    .locals 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_app_list"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->loadPackages()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    if-nez v5, :cond_1

    const-string v5, "NotificationReminderPreferenceFragment"

    const-string v6, "Package load error!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    new-instance v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string v5, "notification_reminder_app_list"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packagesList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v5, "notification_reminder_app_list"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/settings/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "notification_reminder_app_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0
.end method

.method private handleReminderCheckPackage()V
    .locals 6

    const-string v3, "NotificationReminderPreferenceFragment"

    const-string v4, "handleReminderCheckPackage"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/settings/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_reminder_app_list"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v3, "NotificationReminderPreferenceFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReminderCheckPackage / RESULT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleReminderLED()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v2, "NotificationReminderPreferenceFragment"

    const-string v5, "handleReminderLED"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SHOW_LED_DIALOG"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "notification_reminder_led_indicator"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "led_indicator_missed_event"

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "notification_reminder_led_indicator"

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_voice_recording"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_low_battery"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_reminder_led_indicator_enabled"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private handleReminderSelectAll()V
    .locals 7

    const-string v4, "NotificationReminderPreferenceFragment"

    const-string v5, "handleReminderSelectAll"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    sget-object v4, Lcom/android/settings/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "notification_reminder_app_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "NotificationReminderPreferenceFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleReminderSelectAll / RESULT : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleReminderVibrate()V
    .locals 3

    const-string v0, "NotificationReminderPreferenceFragment"

    const-string v1, "handleReminderVibrate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_reminder_vibrate"

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPackages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/settings/notificationreminder/GlobalConstant;->Contain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method private reSizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private updateNotificationReminderSaving()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "NotificationReminderPreferenceFragment"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    const v2, 0x7f070096

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->addPreferencesFromResource(I)V

    const-string v2, "notification_reminder_category_options"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "notification_reminder_vibrate"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    const-string v2, "notification_reminder_indicator"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    const-string v2, "notification_reminder_category_packages"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "notification_reminder_select_all"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    const-string v2, "notification_time_interval"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-static {}, Lcom/android/settings/notificationreminder/GlobalConstant;->isSpr()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f090993

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    const-string v2, "notification_reminder_selectable"

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    const-string v2, "time_key_selectable"

    iput-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    const v3, 0x7f0a00f7

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    const v3, 0x7f0a00f8

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :goto_0
    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_LED_INDICATOR"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    sget v4, Lcom/android/settings/notificationreminder/GlobalConstant;->TIME_VALUE_DEFAULT:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    sget v5, Lcom/android/settings/notificationreminder/GlobalConstant;->TIME_VALUE_DEFAULT:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_fragment_bundle_key"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "extra_from_search"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenu:Z

    const-string v2, "extra_parent_preference_key"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mOpenDetailMenuKey:Ljava/lang/String;

    :cond_4
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->settingCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->packageCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v2, "notification_reminder_category_packages"

    invoke-virtual {p0, v2}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v7, 0x7f0401ac

    invoke-virtual {v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v6, 0x7f0b0439

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v6, 0x7f0b0438

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v6, 0x7f09099b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f09099a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;

    invoke-direct {v8, p0, v0, v5}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$5;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v7, 0x1040000

    new-instance v8, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$4;

    invoke-direct {v8, p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$4;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$3;

    invoke-direct {v7, p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment$3;-><init>(Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v0}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/settings/notificationreminder/GlobalConstant;->isSpr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "notification_time_interval"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "NotificationReminderPreferenceFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_0
    const-string v2, "NotificationReminderPreferenceFragment"

    const-string v3, "onPreferenceChange"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderVibrate()V

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderLED()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mTimeInterval:Landroid/preference/ListPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "NotificationReminderPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_TIME_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 13

    const/16 v11, 0x10

    const/4 v7, 0x1

    const/4 v12, -0x2

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09098d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Landroid/widget/Switch;

    iget-object v9, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0f004c

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v3, v8}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const v11, 0x800015

    invoke-direct {v10, v12, v12, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->requestFocus()Z

    :cond_0
    :goto_0
    new-instance v6, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    iget-object v9, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v6, v9, v10}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->updateNotificationReminderSaving()V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderEnabler:Lcom/android/settings/notificationreminder/NotificationReminderEnabler;

    invoke-virtual {v6}, Lcom/android/settings/notificationreminder/NotificationReminderEnabler;->resume()V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/notificationreminder/GlobalConstant;->isSpr()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v9, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->indicatorPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "notification_reminder_led_indicator"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->vibratePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "notification_reminder_vibrate"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move v8, v7

    :cond_2
    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    sget-object v6, Lcom/android/settings/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_START_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v6, Lcom/android/settings/notificationreminder/GlobalConstant;->INTENT_NOTIFICATION_STOP_SREVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mReminderPreferenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v8, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->addPackagePreference()V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->selectAllPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderSelectAll()V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v8, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->SETTING_SYSTEM_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v8, v7, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v5, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_4
    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    const-string v9, "layout_inflater"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f040065

    const/4 v9, 0x0

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    instance-of v6, v6, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    iget-object v4, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    check-cast v4, Landroid/preference/PreferenceActivity;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v9, Landroid/app/ActionBar$LayoutParams;

    const/16 v10, 0x15

    invoke-direct {v9, v12, v12, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v6, 0x7f0b013e

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->requestFocus()Z

    goto/16 :goto_0

    :cond_5
    move v6, v8

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->handleReminderCheckPackage()V

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notificationreminder/NotificationReminderPreferenceFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
