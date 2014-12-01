.class public Lcom/android/settings/accessibility/AccessibilitySettingsVision;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/DialogCreatable;


# static fields
.field private static final HUGE_FONT_INDEX:I

.field private static KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

.field private static final LARGE_FONT_SCALE:F

.field private static final isReminderTwo:Z

.field static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProductName:Ljava/lang/String;

.field static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private checkSetupWizard:Z

.field private mAccessControlObserver:Landroid/database/ContentObserver;

.field private mColorBlind:Landroid/preference/SwitchPreferenceScreen;

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private mFontSizePref:Lcom/android/settings/FontSizeListPreference;

.field private final mGlobalGestureObserver:Landroid/database/ContentObserver;

.field private mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mHandler:Landroid/os/Handler;

.field private mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

.field private mLcdCurtain:Landroid/preference/CheckBoxPreference;

.field private final mMagnification:Landroid/database/ContentObserver;

.field private final mMagnifier:Landroid/database/ContentObserver;

.field private mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;

.field private mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

.field private final mNotificationReminderObserver:Landroid/database/ContentObserver;

.field private final mPowerSavingObserver:Landroid/database/ContentObserver;

.field private mRapidKeyInput:Landroid/preference/CheckBoxPreference;

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSpokenServiceAvailble:Z

.field mSupportFolderType:Z

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisionCategory:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsLargeFontScale()F

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->LARGE_FONT_SCALE:F

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsHugeFontIndex()I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    const-string v0, "notification_preference"

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sProductName:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sProductName:Ljava/lang/String;

    const-string v1, "spr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sProductName:Ljava/lang/String;

    const-string v1, "sprsports"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sProductName:Ljava/lang/String;

    const-string v1, "refreshspr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isReminderTwo:Z

    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$5;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$6;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$7;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$8;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$9;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$10;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$11;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGestureObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/CheckBoxPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Lcom/android/settings/FontSizeListPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateSettingsScreen()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V
    .locals 6

    const v5, 0x7f09095a

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    const v4, 0x7f090959

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09095c

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    :goto_1
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return-void

    :cond_1
    const-string v3, "summary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f09095b

    invoke-virtual {p0, v5}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/SwitchPreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "title"

    const v4, 0x7f090960

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "summary"

    const v4, 0x7f090963

    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_accessibility_global_gesture_enabled"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-super {p0, p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0c0004

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "vision_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/FontSizeListPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->update7StepFontsizeList(Landroid/preference/ListPreference;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "easy_mode_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    const v3, 0x7f090644

    invoke-virtual {v0, v3}, Lcom/android/settings/FontSizeListPreference;->setTitle(I)V

    :cond_1
    const-string v0, "screen_magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "magnifier_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "com.sec.feature.overlaymagnifier"

    invoke-static {v0, v3}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string v0, "enable_global_gesture_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e001e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v3, 0x1a

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_3

    :cond_3
    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    const-string v0, "rapid_key_input"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_ACCESSIBILITY_RAPID_KEY_INPUT"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string v0, "color_blind"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "lcd_curtain"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    const-string v0, "tts_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    sget-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isReminderTwo:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_7

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lcd_curtain"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "firstRun"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-ne v0, v1, :cond_8

    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_CAMERA_ONLY_MODEL"

    invoke-static {v3}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/high16 v3, 0x1a40000

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_4
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateFontsizeList(Landroid/preference/ListPreference;)V

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto :goto_1

    :cond_c
    move v0, v2

    goto :goto_2

    :cond_d
    const/high16 v3, 0x1e40000

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_3

    :cond_e
    move v1, v2

    goto :goto_4
.end method

.method private isPowerSavingEnabled()V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaving_switch"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "blackgrey_powersaving_mode"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v3, v2

    :goto_0
    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "color_blind"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    return-void

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private isTalkbackAvailable()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "Screen reader does not installed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->sInstalledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private update7StepFontsizeList(Landroid/preference/ListPreference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionPreferences()V

    return-void
.end method

.method private updateExclusiveTalkback()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "TalkbackOnChagne "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Settings.Secure.ACCESSIBILITY_ENABLED,  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input_menu_checked"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rapid_key_input"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    aget-object v5, v1, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSettingsScreen()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AccessibilitySettings_Vision"

    const-string v4, "onChange() "

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "AccessibilitySettings_Vision"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACCESS_CONTROL_ENABLED = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateVisionPreferences()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateVisionService()V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessibility_magnifier"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSpokenServiceAvailble:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isTalkbackAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->readFontSizePreference(Landroid/preference/ListPreference;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_6
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2
    :goto_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rapid_key_input_menu_checked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_8
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->isPowerSavingEnabled()V

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "enable_accessibility_global_gesture_enabled"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_7

    :cond_c
    move v1, v2

    goto :goto_8
.end method

.method private updateVisionService()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    move v3, v0

    :goto_1
    if-ge v3, v6, :cond_9

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    const-string v2, "AccessibilitySettings_Vision"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AccessibilityApplicationKey : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_4

    invoke-interface {v5, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    const v11, 0x7f09099c

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    const/4 v11, -0x1

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    const-class v11, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "preference_key"

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "checked"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "title"

    invoke-virtual {v11, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v2, 0x7f0909d4

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v8, "summary"

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "settings_title"

    const v12, 0x7f090970

    invoke-virtual {p0, v12}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "settings_component_name"

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v13

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v13, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v8, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "component_name"

    invoke-virtual {v11, v2, v9}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.google.android.marvin.talkback"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "AccessibilitySettings_Vision"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Talkback is already added, so remove this menu, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_5
    const v11, 0x7f09099d

    invoke-virtual {p0, v11}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.googlecode.eyesfree.brailleback"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v2, "AccessibilitySettings_Vision"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Brailleback is already added, so remove this menu, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isBraillebackInstalled:Z

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mVisionCategory:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isTalkbackInstalled:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/accessibility/AccessibilitySettings;->isBraillebackInstalled:Z

    goto :goto_4

    :cond_9
    return-void
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sub-float v4, v3, v2

    const/high16 v5, 0x3f000000

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    add-int/lit8 v0, v1, -0x1

    :goto_2
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$12;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6b5

    if-ne p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_COLORBLIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->finish()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "AccessibilitySettings_Vision"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    const v3, 0x7f070004

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->initializeAllPreferences()V

    iget-boolean v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mOpenDetailMenu:Z

    if-eqz v3, :cond_0

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "extra_parent_preference_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    if-ne v3, v2, :cond_1

    :goto_0
    const-string v3, "screen_magnification_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "magnifier_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->KEY_NOTIFICATION_REMINDER:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v3, "color_blind"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v3, "enable_global_gesture_preference_screen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/SwitchPreferenceScreen;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x1

    const/4 v1, 0x0

    const/high16 v8, 0x1040000

    const/4 v7, 0x0

    const v6, 0x104000a

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0401ae

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b043a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v4

    if-ne v4, v9, :cond_1

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09007c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f0b0195

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0909cf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0909d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$14;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09007e

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$15;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Landroid/content/SharedPreferences$Editor;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909f4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909f5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$18;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$17;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$16;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v0}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f090959

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090986

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f091140

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090f59

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f091427

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090984

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$21;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$20;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f090985

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v7}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0909f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909f7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$24;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$23;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$22;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d1a

    new-instance v2, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$25;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->floatToIndex(F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-nez v10, :cond_0

    add-int/lit8 v2, v2, 0x3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ge v8, v10, :cond_3

    sget v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v2, v10, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "large_font"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v10, "pref_font_noti"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v2, v10, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    :cond_2
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;

    invoke-direct {v10, p0, p2}, Lcom/android/settings/accessibility/AccessibilitySettingsVision$13;-><init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;Ljava/lang/Object;)V

    const-wide/16 v11, 0x3e8

    invoke-virtual {v5, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v10, 0x1

    :goto_1
    return v10

    :cond_3
    sget v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v8, v10, :cond_1

    sget v10, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ge v2, v10, :cond_1

    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "large_font"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.samsung.android.app.NotificationReminder"

    const-string v12, "com.samsung.android.app.notificationreminder.settings.NotificationReminderService"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "notification_reminder"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "time_key"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "notification reminder"

    const-string v11, "Time interval value has not been set yet"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "time_key"

    const/16 v12, 0x12c

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v10, "Notification Reminder"

    const-string v11, "NotificationReminder Service Start!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v11, 0x7f09099c

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "notification_reminder"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_4
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_5
    const-string v10, "notification reminder"

    const-string v11, "Time interval value has already been set and written to DB"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v10, "AccessibilitySettings_Vision"

    const-string v11, "Notification Reminder service could not start"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    const-string v10, "NotificationReminder"

    const-string v11, "NotificationReminder Service Stop!!"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    const v11, 0x7f09099d

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    :cond_9
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind_test"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_d

    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.samsung.android.app.colorblind"

    const-string v12, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-boolean v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    const-string v10, "firstRun"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_b
    const/4 v10, 0x0

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string v10, "fromAccessibility"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v10, 0x6b5

    invoke-virtual {p0, v4, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.android.settings.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_5

    :cond_e
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.android.settings.ACTION_COLORBLIND_SWITCH_OFF"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v3, v11}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "color_blind"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5

    :cond_f
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "air_view_master_onoff"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v0, 0x1

    :cond_10
    :goto_6
    invoke-static {}, Lcom/android/settings/Utils;->isAutoAirViewSupported()Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_AIR_VIEW"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_writing_buddy"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_12

    const/4 v0, 0x1

    :cond_12
    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_14

    :cond_13
    const-string v10, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_FINGER_AIR_VIEW"

    invoke-static {v10}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "pen_hovering"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_16

    :cond_15
    const/4 v0, 0x1

    :cond_16
    const/4 v10, 0x1

    if-ne v0, v10, :cond_18

    const/4 v10, 0x5

    invoke-virtual {p0, v10}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    :goto_7
    const-string v11, "AccessibilitySettings_Vision"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ACCESSIBILITY_DISPLAY_MAGNIFICATION_ENABLED Use : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v10, 0x1

    :goto_8
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "finger_air_view"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_10

    const/4 v0, 0x1

    goto/16 :goto_6

    :cond_18
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_display_magnification_enabled"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_19

    const/4 v10, 0x1

    :goto_9
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v11, 0x7f09099c

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_7

    :cond_19
    const/4 v10, 0x0

    goto :goto_9

    :cond_1a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_display_magnification_enabled"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1b

    const/4 v10, 0x1

    :goto_a
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    const v11, 0x7f09099d

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto :goto_7

    :cond_1b
    const/4 v10, 0x0

    goto :goto_a

    :cond_1c
    const/4 v10, 0x0

    goto :goto_8

    :cond_1d
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "accessibility_magnifier"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1e

    const/4 v10, 0x1

    :goto_b
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1f

    const v10, 0x7f09099c

    :goto_c
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_1e
    const/4 v10, 0x0

    goto :goto_b

    :cond_1f
    const v10, 0x7f09099d

    goto :goto_c

    :cond_20
    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    move-object v9, p2

    check-cast v9, Ljava/lang/Boolean;

    iget-object v10, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v10, v11}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "checked"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "enable_accessibility_global_gesture_enabled"

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_21

    const/4 v10, 0x1

    :goto_d
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v11, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_22

    const v10, 0x7f09099c

    :goto_e
    invoke-virtual {v11, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_21
    const/4 v10, 0x0

    goto :goto_d

    :cond_22
    const v10, 0x7f09099d

    goto :goto_e

    :cond_23
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mOpenDetailMenu:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingValue:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleToggleSpeakPasswordPreferenceClick()V

    :goto_1
    return v2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleTogglEnableAccessibilityGesturePreferenceClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->handleDisplayMagnificationPreferenceScreenClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mRapidKeyInput:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "updateExclusiveTalkback : Rapid key input on"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rapid_key_input"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rapid_key_input_menu_checked"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1

    :cond_7
    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "updateExclusiveTalkback : Rapid key input off"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rapid_key_input"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rapid_key_input_menu_checked"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "color_blind"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_a

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->showDialog(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "high_contrast"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_9

    :goto_3
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isFontsizeForT()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_negativecolorswidget_noti"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.negativecolorwidget"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "appsName"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09126a

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "packageName"

    const-string v2, "com.sec.negativecolorwidget"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.accessibility.AccessibilityWidgetDialogActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    :cond_b
    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->setmDNIeNegative(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    const-string v1, "com.android.settings.colorblind.ColorChipReport"

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setFragment(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.app.colorblind"

    const-string v4, "com.samsung.android.app.colorblind.ColorChipReport"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "toStartActivity"

    const-string v3, "fromSetting"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->checkSetupWizard:Z

    if-ne v1, v2, :cond_f

    const-string v1, "firstRun"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 12

    const v11, 0x7f09099d

    const v10, 0x7f09099c

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, ":android:show_fragment"

    const-class v4, Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mFontSizePref:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/FontSizeListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->loadInstalledServices()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateAllPreferences()V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateExclusiveTalkback()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->updateSettingsScreen()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnification:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_magnifier"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifier:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "high_contrast"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "powersaving_switch"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mPowerSavingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "notification_reminder"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminderObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "access_control_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "enable_accessibility_global_gesture_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_magnifier"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "high_contrast"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "color_blind"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v1

    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "notification_reminder"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_6

    move v6, v1

    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "enable_accessibility_global_gesture_enabled"

    invoke-static {v7, v9, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v1

    :goto_5
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_6
    if-eqz v3, :cond_9

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_7
    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_8
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_9
    if-eqz v6, :cond_c

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_a
    if-eqz v7, :cond_d

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v10}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_c
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mLcdCurtain:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lcd_curtain"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "notification_reminder"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_11

    move v0, v1

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "accessibility_display_magnification_enabled"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :goto_10
    invoke-virtual {v4, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_magnifier"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_13

    :goto_11
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    :cond_1
    iput-boolean v8, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto/16 :goto_1

    :cond_4
    move v4, v2

    goto/16 :goto_2

    :cond_5
    move v5, v2

    goto/16 :goto_3

    :cond_6
    move v6, v2

    goto/16 :goto_4

    :cond_7
    move v7, v2

    goto/16 :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mDisplayMagnificationPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_6

    :cond_9
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mMagnifierPreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_7

    :cond_a
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_8

    :cond_b
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_9

    :cond_c
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mNotificationReminder:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_a

    :cond_d
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mGlobalGesturePreferenceScreen:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v11}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_b

    :cond_e
    move v0, v2

    goto/16 :goto_c

    :cond_f
    move v0, v2

    goto/16 :goto_d

    :cond_10
    move v0, v2

    goto/16 :goto_e

    :cond_11
    move v0, v2

    goto :goto_f

    :cond_12
    move v0, v2

    goto :goto_10

    :cond_13
    move v1, v2

    goto :goto_11
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->floatToIndex(F)I

    move-result v0

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : font index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "AccessibilitySettings_Vision"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KKK readFontSizePreference : Settings.Global.FONT_SIZE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x3

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK Easy readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0a002e

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    :goto_2
    const v3, 0x7f090645

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v0, v1, v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "Unable to retrieve font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    sget v2, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    sget v2, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    if-ne v1, v2, :cond_0

    sget v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->HUGE_FONT_INDEX:I

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isEasyMode30Status(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f0a002d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->has7StepsFontSizeFeature()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0a002b

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const v1, 0x7f0a0029

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/high16 v1, 0x3fc00000

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    sget v0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->LARGE_FONT_SCALE:F

    const-string v1, "AccessibilitySettings_Vision"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "AccessibilitySettings_Vision"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
