.class public Lcom/android/launcher2/FestivalPageManager;
.super Ljava/lang/Object;
.source "FestivalPageManager.java"


# static fields
.field private static final ACTION_FESTIVAL_CARDWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_GREETINGWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_MEMORYWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_MEMORYWIDGET_ADDED"

.field public static final BIRTHDAY_FESTIVAL:I = 0x3e7

.field public static final CHILDREN_DAY_FESTIVAL:I = 0x6

.field public static final CHINESE_VALENTINE_DAY_FESTIVAL:I = 0xf

.field public static final CHRISTMAS_FESTIVAL:I = 0xb

.field public static final CHRISTMAS_XML_FESTIVAL:I = 0x12

.field public static final CONGRATULATION_FESTIVAL:I = 0x3e6

.field public static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z

.field public static final DOUBLE_NINTH_DAY_FESTIVAL:I = 0x11

.field public static final DRAGON_BOAT_FESTIVAL:I = 0xe

.field public static final LANTERN_FESTIVAL:I = 0xd

.field public static final MAY_DAY_FESTIVAL:I = 0x4

.field public static final MID_AUTUMN_FESTIVAL:I = 0x10

.field public static final NATIONAL_DAY_FESTIVAL:I = 0xa

.field private static final NETWORK_STATE_MOBILE:I = 0x1

.field private static final NETWORK_STATE_NONE:I = 0x0

.field private static final NETWORK_STATE_WIFI:I = 0x2

.field public static final NEW_YEAR_DAY_FESTIVAL:I = 0x1

.field public static final NEW_YEAR_DAY_XML_FESTIVAL:I = 0x13

.field static final PREFERENCES_FESTIVAL_INTENT_STRING:Ljava/lang/String; = "festivalstring"

.field public static final SPRING_FESTIVAL:I = 0xc

.field public static final TAG:Ljava/lang/String; = "FestivalPageManager"

.field public static final TEACHER_DAY_FESTIVAL:I = 0x9

.field public static final THANK_YOU_DAY_FESTIVAL:I = 0x3

.field public static final TOMB_SWEEPING_DAY_FESTIVAL:I = 0x82

.field public static final VALENTINE_DAY_FESTIVAL:I = 0x2

.field private static final festivalIndexArray:[I

.field public static final festivalNameArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLauncher:Lcom/android/launcher2/Launcher;


# instance fields
.field adb:Landroid/app/AlertDialog$Builder;

.field callBrowserIntent:Landroid/content/Intent;

.field public dontShowAgain:Landroid/widget/CheckBox;

.field private mCompleteShowHidedPage:Z

.field private mHidedPage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher2/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mPageSwitchByFestivalMode:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    new-instance v0, Lcom/android/launcher2/FestivalPageManager$1;

    invoke-direct {v0}, Lcom/android/launcher2/FestivalPageManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x9
        0xa
        0x11
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x82
        0x3e6
        0x3e7
    .end array-data
.end method

.method public constructor <init>(Lcom/android/launcher2/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    sput-object p1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-void
.end method

.method static synthetic access$000()Lcom/android/launcher2/Launcher;
    .locals 1

    sget-object v0, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FestivalPageManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/FestivalPageManager;->checkNetwork()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FestivalPageManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FestivalPageManager;->show_checkbox_dialog(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FestivalPageManager;->showRetry(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/FestivalPageManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FestivalPageManager;)Lcom/android/launcher2/HomeView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method private checkNetwork()I
    .locals 7

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WIFI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    :cond_0
    :goto_0
    const-string v4, "FestivalPageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork netStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkPrevFestivalStatus(Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/launcher2/FestivalPageManager;->getFestivalDateEffect()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "current_festival_effect_package"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v3, "FestivalPageManager"

    const-string v5, "checkPrevFestivalStatus : current status is same as previous."

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto :goto_0
.end method

.method private static getFestivalDateEffect()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "festivalDateEffect"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFestivalString()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v2, "com.sec.android.app.launcher.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "festivalstring"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFestivalType(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v0, v3, v2

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->festivalNameArray:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalType of festivalName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " festivalIndexArray[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/FestivalPageManager;->festivalIndexArray:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v1, v0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v3, "FestivalPageManager"

    const-string v4, "festival widget is not installed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchLearnAboutFestivalDayURL(I)V
    .locals 6

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :sswitch_0
    const-string v0, "http://wapbaike.baidu.com/view/3116.htm"

    goto :goto_0

    :sswitch_1
    const-string v0, "http://wapbaike.baidu.com/view/3108.htm"

    goto :goto_0

    :sswitch_2
    const-string v0, "http://wapbaike.baidu.com/subview/1949/13291116.htm"

    goto :goto_0

    :sswitch_3
    const-string v0, "http://wapbaike.baidu.com/subview/2533/7683709.htm"

    goto :goto_0

    :sswitch_4
    const-string v0, "http://wapbaike.baidu.com/view/3148.htm"

    goto :goto_0

    :sswitch_5
    const-string v0, "http://wapbaike.baidu.com/view/44253.htm"

    goto :goto_0

    :sswitch_6
    const-string v0, "http://wapbaike.baidu.com/subview/2567/5060532.htm"

    goto :goto_0

    :sswitch_7
    const-string v0, "http://wapbaike.baidu.com/view/16194.htm"

    goto :goto_0

    :sswitch_8
    const-string v0, "http://wapbaike.baidu.com/view/25833.htm"

    goto :goto_0

    :sswitch_9
    const-string v0, "http://wapbaike.baidu.com/view/2568.htm"

    goto :goto_0

    :sswitch_a
    const-string v0, "http://wapbaike.baidu.com/view/14446.htm"

    goto :goto_0

    :sswitch_b
    const-string v0, "http://wapbaike.baidu.com/view/2572.htm"

    goto :goto_0

    :sswitch_c
    const-string v0, "http://wapbaike.baidu.com/view/2547.htm"

    goto :goto_0

    :sswitch_d
    const-string v0, "http://wapbaike.baidu.com/view/8489.htm"

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v3, "com.sec.android.app.sbrowser"

    const-string v4, "com.sec.android.app.sbrowser.SBrowserMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLearnAboutFestivalDayURL  [ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x4 -> :sswitch_5
        0x6 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_a
        0xb -> :sswitch_c
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_6
        0xf -> :sswitch_d
        0x10 -> :sswitch_9
        0x11 -> :sswitch_b
        0x82 -> :sswitch_4
    .end sparse-switch
.end method

.method private setFestivalDateEffect(Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "festivalDateEffect"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setFestivalString(Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "festivalstring"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showRetry(I)V
    .locals 6

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0031

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f100010

    invoke-virtual {v3, v4}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f002f

    new-instance v5, Lcom/android/launcher2/FestivalPageManager$8;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/FestivalPageManager$8;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0f002b

    new-instance v5, Lcom/android/launcher2/FestivalPageManager$7;

    invoke-direct {v5, p0}, Lcom/android/launcher2/FestivalPageManager$7;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/launcher2/FestivalPageManager$6;

    invoke-direct {v4, p0}, Lcom/android/launcher2/FestivalPageManager$6;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private show_checkbox_dialog(II)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    move v5, p1

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const-string v8, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v7, v8, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "data_charging_checkbox"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v9, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher2/FestivalPageManager;->launchLearnAboutFestivalDayURL(I)V

    :goto_0
    return-void

    :cond_0
    if-ne v5, v9, :cond_2

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f002d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_1
    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    const v8, 0x7f100010

    invoke-virtual {v7, v8}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f03000a

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v7, 0x7f090033

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->dontShowAgain:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->dontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f002b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/FestivalPageManager$9;

    invoke-direct {v9, p0}, Lcom/android/launcher2/FestivalPageManager$9;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    sget-object v8, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/launcher2/FestivalPageManager$10;

    invoke-direct {v9, p0, p2}, Lcom/android/launcher2/FestivalPageManager$10;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    new-instance v8, Lcom/android/launcher2/FestivalPageManager$11;

    invoke-direct {v8, p0}, Lcom/android/launcher2/FestivalPageManager$11;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->adb:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_2
    const/4 v7, 0x2

    if-ne v5, v7, :cond_1

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0033

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0034

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private updateFestivalTitle(Lcom/android/launcher2/CellLayout;I)V
    .locals 16

    const v12, 0x7f0900d8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v2, "com.bst.festivalrespreload2"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "current_festival_effect_package"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/FestivalPageManager;->setFestivalDateEffect(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v10, 0x1

    :cond_0
    sparse-switch p2, :sswitch_data_0

    :goto_0
    const v12, 0x7f0900db

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const v12, 0x7f0900dd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_2

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0035

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v12, 0x3e7

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v12, 0x7f0900dc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :sswitch_0
    if-eqz v10, :cond_4

    const v12, 0x7f0b0006

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0047

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0036

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    const v12, 0x7f0b0015

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :sswitch_1
    if-eqz v10, :cond_5

    const v12, 0x7f0b000b

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_2
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f004c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_5
    const v12, 0x7f0b001a

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    :sswitch_2
    if-eqz v10, :cond_6

    const v12, 0x7f0b0011

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_3
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0053

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0042

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_6
    const v12, 0x7f0b0020

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    :sswitch_3
    if-eqz v10, :cond_7

    const v12, 0x7f0b0014

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_4
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020034

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0057

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0046

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_7
    const v12, 0x7f0b0023

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :sswitch_4
    if-eqz v10, :cond_8

    const v12, 0x7f0b0012

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_5
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0055

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0044

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    const v12, 0x7f0b0021

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_5

    :sswitch_5
    if-eqz v10, :cond_9

    const v12, 0x7f0b0013

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_6
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020031

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0056

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0045

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_9
    const v12, 0x7f0b0022

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :sswitch_6
    if-eqz v10, :cond_a

    const v12, 0x7f0b000e

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0050

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_a
    const v12, 0x7f0b001d

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :sswitch_7
    if-eqz v10, :cond_b

    const v12, 0x7f0b0007

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_8
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020022

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0048

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0037

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_b
    const v12, 0x7f0b0016

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_8

    :sswitch_8
    const v12, 0x7f0b0005

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020030

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0054

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0043

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_9
    if-eqz v10, :cond_c

    const v12, 0x7f0b0010

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_9
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0052

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0041

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_c
    const v12, 0x7f0b001f

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    :sswitch_a
    const v12, 0x7f0b0005

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020027

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f004d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :sswitch_b
    if-eqz v10, :cond_d

    const v12, 0x7f0b000a

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_a
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020026

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f004b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_d
    const v12, 0x7f0b0019

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_a

    :sswitch_c
    if-eqz v10, :cond_e

    const v12, 0x7f0b0008

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_b
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020023

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0049

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0038

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_e
    const v12, 0x7f0b0017

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_b

    :sswitch_d
    if-eqz v10, :cond_f

    const v12, 0x7f0b000d

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_c
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020029

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f004f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_f
    const v12, 0x7f0b001c

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_c

    :sswitch_e
    if-eqz v10, :cond_10

    const v12, 0x7f0b000c

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_d
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020028

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f003d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_10
    const v12, 0x7f0b001b

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_d

    :sswitch_f
    if-eqz v10, :cond_11

    const v12, 0x7f0b0009

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_e
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f004a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0039

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_11
    const v12, 0x7f0b0018

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_e

    :sswitch_10
    if-eqz v10, :cond_12

    const v12, 0x7f0b000f

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_f
    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f02002b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0051

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v12}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0f0040

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_12
    const v12, 0x7f0b001e

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_f

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x6 -> :sswitch_7
        0x9 -> :sswitch_8
        0xa -> :sswitch_9
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_a
        0x82 -> :sswitch_5
        0x3e6 -> :sswitch_1
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public ShowEqualPageWithItem(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/Workspace$State;)V
    .locals 6

    const/4 v5, 0x2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsFestivalModeOn:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/FestivalPageManager;->setCompleteShowHidedPage(Z)V

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/PagedView;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getHomeScreenIndex()I

    move-result v2

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/PagedView;->setCurrentPage(I)V

    goto :goto_0
.end method

.method public ShowHidedPage()V
    .locals 11

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, "FestivalPageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ShowFestivalHidedPage - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " pages will be added"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v8

    add-int v6, v7, v8

    sget-boolean v7, Lcom/android/launcher2/Launcher;->sIsSecretModeOn:Z

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getSecretScreenCount()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lt v3, v1, :cond_2

    sub-int v2, v3, v1

    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    add-int v9, v1, v2

    invoke-virtual {v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_2
    iput-boolean v10, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    goto :goto_1

    :cond_2
    if-ge v3, v1, :cond_3

    sub-int v4, v1, v3

    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sub-int v9, v1, v4

    invoke-virtual {v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v8, v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->destroyDummyPanel()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher2/Workspace;->setAllEmptyMessageVisibility(Z)V

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0, v10}, Lcom/android/launcher2/FestivalPageManager;->setCompleteShowHidedPage(Z)V

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->removeCreatedPageForDrag()V

    :cond_7
    return-void
.end method

.method public bindFestivalWidget(Lcom/android/launcher2/AppWidgetBinder;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "com.sec.android.widget.greetingcardwidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.greetingcardwidget"

    const-string v2, "com.sec.android.widget.greetingcardwidget.CardTempleteProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-instance v1, Lcom/android/launcher2/FestivalPageManager$5;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/launcher2/FestivalPageManager$5;-><init>(Lcom/android/launcher2/FestivalPageManager;IILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/AppWidgetBinder;->allocateBindNew(Landroid/content/ComponentName;Lcom/android/launcher2/AppWidgetBinder$Callback;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "com.sec.android.widget.festivalmemorywidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.festivalmemorywidget"

    const-string v2, "com.sec.android.widget.festivalmemorywidget.FestivalMemoryProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "com.sec.android.widget.festivalsawidget"

    invoke-direct {p0, v1}, Lcom/android/launcher2/FestivalPageManager;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.festivalsawidget"

    const-string v2, "com.sec.android.widget.festivalsawidget.FestivalSAProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public drawFestivalPageTitle(Lcom/android/launcher2/CellLayout;I)Z
    .locals 6

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    const-string v4, "bindFestivalPage : Workspace is NULL!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    sget-boolean v3, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v3, :cond_2

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawFestivalPageTitle : festivalKey"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FestivalPageManager;->updateFestivalTitle(Lcom/android/launcher2/CellLayout;I)V

    const v3, 0x7f0900d8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/launcher2/FestivalPageManager$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FestivalPageManager$2;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v3, 0x7f0900da

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Lcom/android/launcher2/FestivalPageManager$3;

    invoke-direct {v3, p0}, Lcom/android/launcher2/FestivalPageManager$3;-><init>(Lcom/android/launcher2/FestivalPageManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0900dd

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v3, Lcom/android/launcher2/FestivalPageManager$4;

    invoke-direct {v3, p0, p2}, Lcom/android/launcher2/FestivalPageManager$4;-><init>(Lcom/android/launcher2/FestivalPageManager;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getCompleteShowHidedPage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mCompleteShowHidedPage:Z

    return v0
.end method

.method public getFestivalPageCount()I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getPageSwitchByFestivalMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    return v0
.end method

.method public initFestivalPage(Lcom/android/launcher2/HomeView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    iget-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-void
.end method

.method public printWorkspaceInfo()V
    .locals 6

    const-string v1, "|"

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FestivalPageManager;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "F|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getPageType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "S|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "N|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Festival WorkspaceInfo - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HidedPage size - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/FestivalPageManager;->mHidedPage:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendFestivalWidgetType(IILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "festivalType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/launcher2/FestivalPageManager;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v1, Lcom/android/launcher2/FestivalPageManager;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    const-string v1, "FestivalPageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFestivalWidgetType  [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.FESTIVAL_MEMORYWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCompleteShowHidedPage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FestivalPageManager;->mCompleteShowHidedPage:Z

    return-void
.end method

.method public setPageSwitchByFestivalMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/FestivalPageManager;->mPageSwitchByFestivalMode:Z

    return-void
.end method
