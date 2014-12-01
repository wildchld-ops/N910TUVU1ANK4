.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings/applications/ApplicationsState$Session;,
        Lcom/android/settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALL_ENABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTALLEDDATE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field public final THIRD_PARTY_START_RUNNING_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field final mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

.field final mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->INSTALLEDDATE:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->DISABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALL_ENABLED_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    const-wide/16 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$7;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$7;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_START_RUNNING_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0xa200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    const v0, 0x8200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .locals 2

    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    :cond_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage acquired lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ApplicationsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: not resumed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "ApplicationsState"

    const-string v3, "Package already exists!"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ApplicationsState"

    const-string v3, "addPackage release lock: already exists"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v3, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_3

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    const-string v1, "ApplicationsState"

    const-string v3, "addPackage releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method doResumeIfNeededLocked()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRetrieveFlags:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_8

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v5, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_8
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_5

    iput-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    :cond_9
    iput-object v7, p0, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6

    const-string v3, "ApplicationsState"

    const-string v4, "getEntry about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...getEntry releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking up entry of pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string v1, "ApplicationsState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating AppEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public haveDisabledApps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method invalidatePackage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->removePackage(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method public newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 3

    new-instance v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsState$Session;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuildActiveSessions()V
    .locals 4

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v2, :cond_0

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-boolean v2, v1, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 8

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_0
    const-string v4, "ApplicationsState"

    const-string v6, "removePackage acquired lock"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v2

    const-string v4, "ApplicationsState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " @ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    const-string v4, "ApplicationsState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removePackage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mHaveDisabledApps:Z

    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    const-string v4, "ApplicationsState"

    const-string v6, "removePackage releasing lock"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4

    const-string v1, "ApplicationsState"

    const-string v2, "requestSize about to acquire lock..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    :cond_0
    const-string v1, "ApplicationsState"

    const-string v3, "...requestSize releasing lock"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sumCacheSizes()J
    .locals 7

    const-wide/16 v1, 0x0

    const-string v3, "ApplicationsState"

    const-string v4, "sumCacheSizes about to acquire lock..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    const-string v3, "ApplicationsState"

    const-string v5, "-> sumCacheSizes now has lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const-string v3, "ApplicationsState"

    const-string v5, "...sumCacheSizes releasing lock"

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    return-wide v1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
