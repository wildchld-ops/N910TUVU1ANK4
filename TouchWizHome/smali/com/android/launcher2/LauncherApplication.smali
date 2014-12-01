.class public Lcom/android/launcher2/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# static fields
.field public static final ACTION_DYNAMICCSC_MODE:Ljava/lang/String; = "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

.field public static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static DEVICE_NAME:Ljava/lang/String; = null

.field public static final FEATURE_NAME_ENTER_APPS_MENU:Ljava/lang/String; = "MENU"

.field public static final FEATURE_NAME_HOME_PAGE_COUNT:Ljava/lang/String; = "HOME"

.field public static final FEATURE_NAME_HOTSEAT_ADD:Ljava/lang/String; = "HSAD"

.field public static final FEATURE_NAME_HOTSEAT_DELETE:Ljava/lang/String; = "HSDT"

.field public static final FEATURE_NAME_WIDGET_ADD:Ljava/lang/String; = "WGAD"

.field public static final FEATURE_NAME_WIDGET_COUNT:Ljava/lang/String; = "WGCT"

.field public static final FEATURE_NAME_WIDGET_DELETE:Ljava/lang/String; = "WGDT"

.field static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field static final PREFERENCES_SCREENCOUNT_FESTIVAL:Ljava/lang/String; = "screencount.festival"

.field static final PREFERENCES_SCREENCOUNT_SECRET:Ljava/lang/String; = "screencount.secret"

.field static final PREFERENCES_SCREENINDEX:Ljava/lang/String; = "homescreenindex"

.field static final PREFERENCES_SCREENINDEX_FESTIVAL:Ljava/lang/String; = "homescreenindex.festival"

.field static final PREFERENCES_SCREENINDEX_SECRET:Ljava/lang/String; = "homescreenindex.secret"

.field static final PREFERENCES_SCREENMODE_FOR_FESTIVAL:Ljava/lang/String; = "screenmode.festival"

.field static final PREFERENCES_SCREENMODE_FOR_SECRET:Ljava/lang/String; = "screenmode.secret"

.field public static RemovablePreloadEnabled:I = 0x0

.field public static final SHOW_DEFAULT_WALLPAPER_KEY:Ljava/lang/String; = "SHOW_DEFAULT_WALLPAPER"

.field public static final SHOW_EMPTY_PAGE_MSG_KEY:Ljava/lang/String; = "SHOW_EMPTY_PAGE_MSG"

.field private static final TAG:Ljava/lang/String; = "LauncherApplication"

.field public static sDNDBinding:Z = false

.field public static sDensityDpi:I = 0x0

.field public static sFestivalPageLauncher:Z = false

.field private static sHasMenuKey:Z = false

.field private static sInst:Lcom/android/launcher2/LauncherApplication; = null

.field private static sIsAppsListAllowed:Z = false

.field private static sIsDeleteDropTargetTextRight:Z = false

.field private static sIsDeleteDropTargetTop:Z = false

.field public static sIsFolderColorSupport:Z = false

.field private static sIsLargeTabletLayout:Z = false

.field private static sIsScreenLarge:Z = false

.field private static sIsScreenSmall:Z = false

.field private static sIsTabletLayout:Z = false

.field public static sIsTheFisrt:Z = false

.field private static sIsUsingMoreLineinFolder:Z = false

.field private static sIsWidgetSearchTextColorLight:Z = false

.field private static sLauncher:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field private static sLauncherProvider:Ljava/lang/ref/WeakReference; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static sMaxFestivalScreenCount:I = 0x0

.field private static sMaxScreenCount:I = 0x0

.field private static sMaxSecretScreenCount:I = 0x0

.field private static sMenuIconSize:I = 0x0

.field private static sScreenCountFestival:I = 0x0

.field private static sScreenCountNormal:I = 0x0

.field private static sScreenCountSecret:I = 0x0

.field private static sScreenDensity:F = 0.0f

.field private static sScreenIndexNormal:I = 0x0

.field private static sScreenModeForFestival:I = 0x0

.field private static sScreenModeForSecret:I = 0x0

.field public static final sSecretPageLauncher:Z = true


# instance fields
.field public SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

.field private busBooster:Landroid/os/DVFSHelper;

.field private cpuBooster:Landroid/os/DVFSHelper;

.field private cpuMaxBooster:Landroid/os/DVFSHelper;

.field private gpuBooster:Landroid/os/DVFSHelper;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field private mFactoryModeString:Ljava/lang/String;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsFactoryMode:Z

.field private mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

.field private mModel:Lcom/android/launcher2/LauncherModel;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mThemeLoader:Lcom/android/launcher2/ThemeLoader;

.field private sKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    const-string v0, "ro.product.model"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->DEVICE_NAME:Ljava/lang/String;

    const-string v0, "ro.config.rm_preload_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/launcher2/LauncherApplication;->RemovablePreloadEnabled:I

    sput-boolean v2, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    sput v2, Lcom/android/launcher2/LauncherApplication;->sDensityDpi:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    iput-object v1, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    new-instance v0, Lcom/android/launcher2/LauncherApplication$1;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$1;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/launcher2/LauncherApplication$2;

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/launcher2/LauncherApplication$2;-><init>(Lcom/android/launcher2/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    sput-object p0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method public static getFestivalScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    return v0
.end method

.method public static getHomeScreenIndex()I
    .locals 2

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v1, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    goto :goto_0
.end method

.method public static getInst()Lcom/android/launcher2/LauncherApplication;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sInst:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method public static getMaxFestivalScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    return v0
.end method

.method public static getMaxScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    return v0
.end method

.method public static getMaxSecretScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMaxSecretScreenCount:I

    return v0
.end method

.method public static getScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    return v0
.end method

.method public static getScreenDensity()F
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    return v0
.end method

.method public static getScreenModeForFestival()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    return v0
.end method

.method public static getScreenModeForSecret()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    return v0
.end method

.method public static getSecretScreenCount()I
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    return v0
.end method

.method public static getSmallestWidth()I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method public static hasMenuKey()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    return v0
.end method

.method public static isAppsListAllowed()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    return v0
.end method

.method public static isDeleteDropTargetTextRight()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    return v0
.end method

.method public static isDeleteDropTargetTop()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    return v0
.end method

.method private isFactoryMode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "/efs/FactoryApp/factorymode"

    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherApplication;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mFactoryModeString:Ljava/lang/String;

    const-string v1, "ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherApplication;->mIsFactoryMode:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v0, "999999999999999"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "999999999999999"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isKioskModeEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "isKioskModeEnabled"

    invoke-static {p0, v1}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "true"

    const-string v2, "isKioskModeEnabled"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLargeTabletLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    return v0
.end method

.method public static isMenuIconSizeChanged()Z
    .locals 1

    sget v0, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOwner()Z
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPossibleAddToPersonal(Ljava/lang/String;)Z
    .locals 6

    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " isPossibleAddToPersonal(name) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher2/LauncherApplication;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/os/PersonaManager;->isPossibleAddToPersonal(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call android.os.PersonaManager."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v3, "LauncherApplication"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not call isPossibleAddToPersonal."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isScreenLarge()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    return v0
.end method

.method public static isScreenSmall()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    return v0
.end method

.method public static isTabletLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    return v0
.end method

.method public static isUsingMoreLineinFolder()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    return v0
.end method

.method public static isWidgetSearchTextColorLight()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    return v0
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v6, ""

    const/4 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x1fa0

    invoke-direct {v1, v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    if-eqz v5, :cond_0

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v4, v5

    move-object v0, v1

    :cond_2
    :goto_0
    if-nez v6, :cond_7

    const-string v6, ""

    :goto_1
    return-object v6

    :catch_0
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v5

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v3

    :goto_2
    :try_start_4
    const-string v7, "LauncherApplication"

    const-string v8, "FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_3
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v2

    :goto_3
    :try_start_6
    const-string v7, "LauncherApplication"

    const-string v8, "IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_4
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v7, "LauncherApplication"

    const-string v8, "IOException close()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v4, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_6
    :goto_5
    throw v7

    :catch_5
    move-exception v2

    const-string v8, "LauncherApplication"

    const-string v9, "IOException close()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    goto :goto_1

    :catchall_1
    move-exception v7

    move-object v4, v5

    goto :goto_4

    :catchall_2
    move-exception v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v2

    move-object v4, v5

    goto :goto_3

    :catch_7
    move-exception v2

    move-object v4, v5

    move-object v0, v1

    goto :goto_3

    :catch_8
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_9
    move-exception v3

    move-object v4, v5

    move-object v0, v1

    goto :goto_2
.end method

.method public static setFestivalScreenCount(Landroid/content/Context;I)V
    .locals 4

    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-eq v2, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screencount.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setHomeScreenIndex(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static setHomeScreenIndex(Landroid/content/Context;IZ)V
    .locals 5

    sget v3, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-eq v3, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "homescreenindex"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    :cond_1
    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    return-void
.end method

.method public static setScreenCount(Landroid/content/Context;IZ)V
    .locals 9

    sget v0, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    const-string v0, "com.sec.android.app.launcher.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v0, "screencount"

    invoke-interface {v6, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    const-string v1, "HOME"

    const/4 v2, 0x0

    int-to-long v3, p1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public static setScreenModeForFestival(Landroid/content/Context;I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screenmode.festival"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    return-void
.end method

.method public static setScreenModeForSecret(Landroid/content/Context;I)V
    .locals 4

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screenmode.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    return-void
.end method

.method public static setSecretScreenCount(Landroid/content/Context;I)V
    .locals 4

    sget v2, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    if-eq v2, p1, :cond_0

    sput p1, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "screencount.secret"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFactoryMode()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactorySim()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/LauncherApplication;->isFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBinaryType()Ljava/lang/String;
    .locals 3

    const-string v1, "ro.build.type"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBusBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getCpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getCpuMaxBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method public getGpuBoosterObject()Landroid/os/DVFSHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method getLauncher()Lcom/android/launcher2/Launcher;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getLauncherProvider()Lcom/android/launcher2/LauncherProvider;
    .locals 1

    sget-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherProvider;

    return-object v0
.end method

.method getModel()Lcom/android/launcher2/LauncherModel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    return-object v0
.end method

.method getPkgResCache()Lcom/android/launcher2/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method getPkgResCacheForMenu()Lcom/android/launcher2/PkgResCache;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCacheForMenu:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method

.method public getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method getThemeLoader()Lcom/android/launcher2/ThemeLoader;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    return-object v0
.end method

.method public insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 5

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    if-eqz v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    const-string v3, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1

    const-string v2, "value"

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, p3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p5, :cond_3

    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public isKnoxMode()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iput v3, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "isKnoxMode"

    invoke-static {p0, v4}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "2.0"

    const-string v5, "version"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "true"

    const-string v5, "isKnoxMode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/launcher2/LauncherApplication;->sKnox:I

    if-ne v4, v2, :cond_1

    :goto_1
    return v2

    :catch_0
    move-exception v1

    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not call android.os.PersonaManager."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "LauncherApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not call getKnoxInfoForApp."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public onCreate()V
    .locals 15

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v12

    if-nez v12, :cond_0

    const v12, 0x7f0a0004

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_16

    :cond_0
    const/4 v12, 0x1

    :goto_0
    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sHasMenuKey:Z

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v10, v12, 0xf

    const/4 v12, 0x1

    if-ne v10, v12, :cond_17

    const/4 v12, 0x1

    :goto_1
    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsScreenSmall:Z

    const/4 v12, 0x3

    if-eq v10, v12, :cond_1

    const/4 v12, 0x4

    if-ne v10, v12, :cond_18

    :cond_1
    const/4 v12, 0x1

    :goto_2
    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsScreenLarge:Z

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenDensity:F

    const v12, 0x7f0a000b

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsTabletLayout:Z

    const v12, 0x7f0a0011

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTop:Z

    const v12, 0x7f0a0010

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsDeleteDropTargetTextRight:Z

    const v12, 0x7f0a0005

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsAppsListAllowed:Z

    const v12, 0x7f0a000d

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsWidgetSearchTextColorLight:Z

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v13, 0x320

    if-lt v12, v13, :cond_19

    const/4 v12, 0x1

    :goto_3
    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsLargeTabletLayout:Z

    const v12, 0x7f0a000c

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsUsingMoreLineinFolder:Z

    new-instance v12, Lcom/android/launcher2/ThemeLoader;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/launcher2/ThemeLoader;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mThemeLoader:Lcom/android/launcher2/ThemeLoader;

    sget-object v12, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mMenuAppModel:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v12, p0}, Lcom/android/launcher2/MenuAppModel;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    new-instance v12, Lcom/android/launcher2/PkgResCache;

    invoke-direct {v12, p0}, Lcom/android/launcher2/PkgResCache;-><init>(Lcom/android/launcher2/LauncherApplication;)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    const v12, 0x7f0a0007

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    const/4 v12, 0x0

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-eqz v5, :cond_2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0294

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c00ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    float-to-int v0, v12

    :goto_4
    sget v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    if-ne v12, v0, :cond_2

    const/4 v12, 0x0

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMenuIconSize:I

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v14, "none"

    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_3

    const-string v12, "festival"

    invoke-virtual {v3, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    :cond_3
    new-instance v12, Lcom/android/launcher2/LauncherExModel;

    iget-object v13, p0, Lcom/android/launcher2/LauncherApplication;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-direct {v12, p0, v13}, Lcom/android/launcher2/LauncherExModel;-><init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/PkgResCache;)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v12, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-direct {v4, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.samsung.android.intent.action.UPDATING_APPWIDGET_COMPLETED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v12, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v12, :cond_4

    const-string v12, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.sec.festival.FESTIVAL_SETTINGS_CHANGED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "com.sec.festival.FESTIVAL_HOME_CHANGED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v12, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v12, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v12, p0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v12, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v4, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v12, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.STK_TITLE_IS_LOADED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "package"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v12, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "com.sec.sprextension.FORCE_LAUNCHER_REFRESH"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Launcher_DynamicCSCFeature"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "com.android.launcher.action.DYNAMICCSC_MODE_CHANGE"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v12, "Dynamic_CSC"

    const-string v13, "Widget Intent Registered in Launcher App."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v12, v4}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v12, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v12, "com.sec.android.app.launcher.prefs"

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const v12, 0x7f0e0014

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    const-string v12, "screencount"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v12, :cond_7

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v12, v13, :cond_b

    :cond_7
    const-string v12, "CscFeature_Launcher_TotalPageCount"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v12, :cond_8

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v12, v13, :cond_a

    :cond_8
    const v12, 0x7f0e0010

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lez v12, :cond_9

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    if-le v12, v13, :cond_a

    :cond_9
    sget v12, Lcom/android/launcher2/LauncherApplication;->sMaxScreenCount:I

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    :cond_a
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v12, "screencount"

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_b
    const-string v12, "homescreenindex"

    const/4 v13, -0x1

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v12, :cond_c

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v12, v13, :cond_10

    :cond_c
    const-string v12, "CscFeature_Launcher_DefaultPageNumber"

    invoke-virtual {v1, v12}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v12, :cond_d

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v12, v13, :cond_f

    :cond_d
    const v12, 0x7f0e000e

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    if-ltz v12, :cond_e

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountNormal:I

    if-lt v12, v13, :cond_f

    :cond_e
    const/4 v12, 0x0

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    :cond_f
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v12, "homescreenindex"

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenIndexNormal:I

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_10
    const v12, 0x7f0e0015

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMaxSecretScreenCount:I

    const-string v12, "screencount.secret"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    const-string v12, "screenmode.secret"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenModeForSecret:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_11

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sMaxSecretScreenCount:I

    if-le v12, v13, :cond_12

    :cond_11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->getSecretPackageList(I)Ljava/util/List;

    move-result-object v11

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    if-nez v12, :cond_1a

    if-eqz v11, :cond_1a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1a

    const/4 v12, 0x1

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    :goto_5
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v12, "screencount.secret"

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_12
    sget-boolean v12, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v12, :cond_14

    const v12, 0x7f0e0013

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    const-string v12, "screencount.festival"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    const-string v12, "screenmode.festival"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenModeForFestival:I

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    if-ltz v12, :cond_13

    sget v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    sget v13, Lcom/android/launcher2/LauncherApplication;->sMaxFestivalScreenCount:I

    if-le v12, v13, :cond_14

    :cond_13
    const/4 v12, 0x0

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v12, "screencount.festival"

    sget v13, Lcom/android/launcher2/LauncherApplication;->sScreenCountFestival:I

    invoke-interface {v2, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider;->updateScreenCount()V

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider;->updateScreenIndex()V

    :cond_15
    new-instance v12, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    new-instance v12, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0x13

    invoke-direct {v12, v13, v14}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    new-instance v12, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0xe

    invoke-direct {v12, v13, v14}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    new-instance v12, Landroid/os/DVFSHelper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const/16 v14, 0x10

    invoke-direct {v12, v13, v14}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v12, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    const-string v13, "Launcher_homemenu"

    invoke-virtual {v12, v13}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    sget-object v12, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v9, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v12, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v12}, Lcom/android/launcher2/LauncherModel;->reloadBadges()V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v12

    const-string v13, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v12, v13}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/launcher2/LauncherApplication;->SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE:Z

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    return-void

    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_17
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_18
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_19
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_1a
    const/4 v12, 0x0

    sput v12, Lcom/android/launcher2/LauncherApplication;->sScreenCountSecret:I

    goto/16 :goto_5

    :catch_0
    move-exception v12

    goto/16 :goto_4
.end method

.method public onTerminate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mModel:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/launcher2/LauncherApplication;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->cpuBooster:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->busBooster:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->cpuMaxBooster:Landroid/os/DVFSHelper;

    iput-object v2, p0, Lcom/android/launcher2/LauncherApplication;->gpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method setLauncherProvider(Lcom/android/launcher2/LauncherProvider;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/launcher2/LauncherApplication;->sLauncherProvider:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updatePageCount()V
    .locals 10

    const/4 v9, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Launcher_EnableInegratedLauncher"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncher()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v4

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherProvider;->getScreenCount()I

    move-result v6

    invoke-static {p0, v6, v9}, Lcom/android/launcher2/LauncherApplication;->setScreenCount(Landroid/content/Context;IZ)V

    sub-int v0, v6, v4

    if-lez v0, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->addPage()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-gez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    mul-int/lit8 v7, v0, -0x1

    if-ge v2, v7, :cond_0

    invoke-virtual {v1, v9}, Lcom/android/launcher2/HomeView;->deletePage(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
