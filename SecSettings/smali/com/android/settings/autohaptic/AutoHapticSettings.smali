.class public Lcom/android/settings/autohaptic/AutoHapticSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AutoHapticSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;,
        Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;,
        Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;
    }
.end annotation


# static fields
.field public static final REVERB_URI:Landroid/net/Uri;

.field private static mActuator:I

.field private static mActuatorChecked:I


# instance fields
.field private appCount:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

.field private mIncludedApps:Landroid/preference/PreferenceCategory;

.field private mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

.field mNoPopupOnExcute:Z

.field private mReverbSharedPrefs:Landroid/content/SharedPreferences;

.field mText:Landroid/widget/TextView;

.field mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    sput v1, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    sput v1, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    iput-boolean v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/autohaptic/AutoHapticSettings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/autohaptic/AutoHapticSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->initAppList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/autohaptic/AutoHapticSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    return-void
.end method

.method private filterAdd(Landroid/content/pm/PackageInfo;)V
    .locals 10

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getActuator()I
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/immersion/Device;->getCapabilityInt32(I)I

    move-result v0

    invoke-virtual {v1}, Lcom/immersion/Device;->close()V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    :cond_0
    sput v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    const/4 v3, 0x1

    sput v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    :goto_1
    return v3

    :cond_2
    :try_start_1
    const-string v3, "AutoHapticSettings"

    const-string v4, "Error: REVERB_ACTUATOR_INDEX does not point to an ERM, LRA or PIEZO actuator."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "AutoHapticSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1

    :catchall_0
    move-exception v3

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1
.end method

.method private getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v9, v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v4, v0, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_3

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    :cond_3
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v1, v2

    iget-object v9, v7, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initAppList()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iput v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v3}, Lcom/android/settings/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->appCount:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7

    const/16 v4, 0x8

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v4, "com.immersion.android.haptictheme."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "AutoHapticSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private refreshAppListUI()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/autohaptic/AutoHapticSettings$1;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;

    iget-boolean v2, v2, Lcom/android/settings/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static storeReverbSettings(Landroid/content/ContentResolver;III)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    sget v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getActuator()I

    :cond_0
    if-nez p0, :cond_1

    const-string v3, "AutoHapticSettings"

    const-string v4, "Invalid content resolver, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v3, "AutoHapticSettings"

    const-string v4, "Failed to acquire content provider client, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eq p2, v8, :cond_5

    const-string v3, "AutoHapticSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeReverbSettings(), intensity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-ge p2, v4, :cond_3

    const/4 p2, 0x1

    :cond_3
    const/16 v3, 0x9

    if-le p2, v3, :cond_4

    const/16 p2, 0x9

    :cond_4
    const-string v3, "strength"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "density"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "sharpness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    if-eq p1, v8, :cond_6

    const-string v6, "enable"

    if-lez p1, :cond_8

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    if-eq p3, v8, :cond_7

    const-string v3, "mediaplayer"

    if-lez p3, :cond_9

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_7
    :try_start_0
    sget-object v3, Lcom/android/settings/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v2, 0x0

    goto :goto_0

    :cond_8
    move v3, v5

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f09134e

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 16

    const-string v12, "AutoHapticSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCheckChanged : desiredState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    if-eqz v5, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    if-eqz v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.android.settings_reverb"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v12, "DoNotShowDialog"

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    if-nez v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->showGuideDialog()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v12, "com.ensight.android.radioalarm"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.google.android.apps.books"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.samsung.SMT"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.google.android.tts"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.sec.android.app.dmb"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.ktmusic.geniemusic"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "kt.navi"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v12, "com.kt.otv"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_2

    const/4 v12, 0x1

    :goto_0
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_3

    const/4 v12, 0x1

    :goto_1
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    if-ge v6, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v2, v11

    array-length v9, v2

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v10, v2, v7

    invoke-interface {v4, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v2, v11

    array-length v9, v2

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v9, :cond_5

    aget-object v10, v2, v7

    const-string v12, "disabled"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f070025

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v3, "included_apps"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    new-instance v3, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    invoke-direct {v3, p0}, Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;)V

    iput-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings/autohaptic/AutoHapticSettings$IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "DoNotShowDialog"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "enable"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/16 v4, 0x11

    const/4 v3, -0x1

    iput-object p2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const v3, 0x7f090853

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x41c80000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    instance-of v7, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    move-object v3, p2

    check-cast v3, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v7, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    :goto_0
    return v7

    :cond_1
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "AutoHapticSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, item.getKey()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-object v0, v6

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    const-string v7, "disabled"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "AutoHapticSettings"

    const-string v8, "onPreferenceTreeClick(), Update Reverb settings"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable"

    iget-object v3, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->initAppList()V

    invoke-direct {p0}, Lcom/android/settings/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    iput-object v6, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040080

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v4, 0x7f0b00a6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09134f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f09134e

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f090859

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v4, p0, Lcom/android/settings/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/autohaptic/AutoHapticSettings$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/autohaptic/AutoHapticSettings$2;-><init>(Lcom/android/settings/autohaptic/AutoHapticSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
