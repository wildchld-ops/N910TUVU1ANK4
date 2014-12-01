.class public Lcom/android/mms/ui/BoxListViewActivity;
.super Landroid/app/Activity;
.source "BoxListViewActivity.java"


# static fields
.field public static final FOLDER_VIEW_SPLIT_MODE:Z = false

.field public static final FROM_SEARCH_VIEW:Ljava/lang/String; = "FromSearchView"

.field public static final HISTORY_SEARCHVIEW:Ljava/lang/String; = "history_searchView"

.field private static final LOADING_TASK_LIMIT:I = 0xf

.field private static final MMSVIEWER:I = 0x65

.field protected static final MMS_NOTI_TYPE:I = 0xd

.field protected static final MMS_TYPE:I = 0xc

.field protected static final NONE_TYPE:I = 0x0

.field private static final SMSVIEWER:I = 0x66

.field protected static final SMS_TYPE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BoxListViewActivity"

.field public static sIsBackToMsg:Z

.field public static sisOnPreLaunch:Z


# instance fields
.field private final mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mBackKeyPressed:Z

.field private mBoxList:Lcom/android/mms/ui/BoxListFrame;

.field private mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHomeKeyPressed:Z

.field private mIsComposerOnly:Z

.field private mIsFinish:Z

.field public mIsFromFestivalMemory:Z

.field private mIsLandscape:Z

.field private mIsSplitBarTouch:Z

.field private mIsViewerOnly:Z

.field public mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

.field public mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

.field public mMsgType:I

.field private mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mOptionMenuCount:I

.field mOptionSelectResult:Z

.field public mPrevViewMode:I

.field private mRightScreen:Landroid/widget/LinearLayout;

.field public mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

.field private mSplitBar:Landroid/view/View;

.field private mSplitBarLine:Landroid/view/View;

.field private mSplitManager:Lcom/android/mms/ui/SplitManager;

.field private mUseMoveTaskToBack:Z

.field private mUseSplitView:Z

.field private mVto:Landroid/view/ViewTreeObserver;

.field private onViewerClose:Lcom/android/mms/ui/OnEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/BoxListViewActivity;->sisOnPreLaunch:Z

    sput-boolean v0, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mPrevViewMode:I

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBackKeyPressed:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mHomeKeyPressed:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$1;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$4;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    new-instance v0, Lcom/android/mms/ui/BoxListViewActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BoxListViewActivity$5;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/SplitManager;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/BoxListViewActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/BoxListViewActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/BoxListViewActivity;)Lcom/android/mms/ui/BoxListFrame;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/BoxListViewActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/BoxListViewActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    return-void
.end method

.method private calcSplitMode()I
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():unknown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_NONE"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_LEFT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_RIGHT_ONLY"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "calcSplitMode():SPLIT_MODE_SPLITED"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private checkDefaultSmsApps(Landroid/content/Intent;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-boolean v3, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    if-nez v3, :cond_2

    const-string v3, "FromSearchActivity"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "fromInternal"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v2, "Mms/BoxListViewActivity"

    const-string v3, "checkDefaultSmsApps - sIsBackToMsg or FromSearchActivity or fromInternal flag true so do not show default popup again"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "isInsideCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startActivity(Landroid/content/Intent;)V

    move v1, v2

    goto :goto_0
.end method

.method private createMultiWindowInstance()Z
    .locals 3

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mActivityStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLauncherList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private handleMoveTaskToBack()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/BoxListViewActivity;->isIntentFromLauncher(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isLauncherTaskRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mPrevViewMode:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->onStop()V

    :goto_0
    return-void

    :cond_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "move to back"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->moveTaskToBack(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "Exception."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "finish"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private initBoxList()Lcom/android/mms/ui/BoxListFrame;
    .locals 2

    const v1, 0x7f0b00a1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/BoxListFrame;->setActivity(Landroid/app/Activity;)V

    return-object v0
.end method

.method private initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;
    .locals 5

    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initMmsSingleViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0b00a2

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04007c

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b02c5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/MmsSinglePageFrame;->setActivity(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setBackgroundColor(I)V

    return-object v1
.end method

.method private initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;
    .locals 5

    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "initSmsViewer"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f0b00a2

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0400aa

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0b0389

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/SmsViewFrame;->setActivity(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->onViewerClose:Lcom/android/mms/ui/OnEventListener;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/SmsViewFrame;->setBackgroundColor(I)V

    return-object v1
.end method

.method private initSplitManager()Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "Mms/BoxListViewActivity"

    const-string v5, "initSplitManager()"

    invoke-static {v2, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0b00a5

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    const v2, 0x7f0b00a6

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBarLine:Landroid/view/View;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    new-instance v5, Lcom/android/mms/ui/BoxListViewActivity$2;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListViewActivity$2;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportHoveringUI()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    new-instance v5, Lcom/android/mms/ui/BoxListViewActivity$3;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/BoxListViewActivity$3;-><init>(Lcom/android/mms/ui/BoxListViewActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    const-string v2, "FromSearchView"

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    :cond_3
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    :cond_4
    :goto_1
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v2, "Mms/BoxListViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSplitManager width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/mms/ui/SplitManager;

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mRightScreen:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitBar:Landroid/view/View;

    invoke-direct {v2, v5, v6, v7, p0}, Lcom/android/mms/ui/SplitManager;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/mms/ui/BoxListViewActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    if-ne v2, v4, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move v2, v4

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsComposerOnly:Z

    if-nez v2, :cond_8

    const-string v2, "FromSearchView"

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/BoxListViewActivity;->getFromSearchView(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_2
.end method

.method private isIntentForList(Landroid/content/Intent;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIntentForList(),return="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private static isIntentFromLauncher(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLauncherTaskRunning()Z
    .locals 10

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getLauncherList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v7

    :cond_1
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v7, "Mms/BoxListViewActivity"

    const-string v8, "Launcher task Running"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const-string v8, "Mms/BoxListViewActivity"

    const-string v9, "Launcher task not Running"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSearchMode()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v0

    :cond_0
    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSearchMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private refreshSplitManager(Z)V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshSplitManager(),ignoreSameSplitView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_2
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    if-ne v2, v1, :cond_4

    if-nez p1, :cond_0

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->calcSplitMode()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v5}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseSplitView:Z

    const/4 v0, 0x0

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v2, :cond_5

    const/4 v0, 0x2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2, v0, v5}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v2}, Lcom/android/mms/ui/SplitManager;->refreshLayouts()Z

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    iget-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SplitManager;->setUseSplitMode(Z)V

    goto :goto_1
.end method

.method private showEmptyScreen(IZ)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEmptyScreen(),show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SlideshowFrame;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MmsSinglePageFrame;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SmsViewFrame;->setVisibility(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public canUseSplitMode()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearFocusOfBoxListIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->clearFocus()V

    :cond_0
    return-void
.end method

.method protected clearViewer()V
    .locals 2

    const/16 v1, 0xc

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_2
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v6}, Lcom/android/mms/ui/SplitManager;->getXpositon()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getStatusBarHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBarHeight()I

    move-result v0

    const-string v6, "Mms/BoxListViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchTouchEvent():SPLIT_MODE_SPLITED (x,y)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v3, v2, :cond_0

    add-int v6, v1, v0

    if-ge v4, v6, :cond_2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_0
    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v6}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/SmsViewFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eq v6, v5, :cond_1

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v6}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/SmsViewFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v6, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    if-ne v6, v5, :cond_3

    goto :goto_0
.end method

.method public getActionBarHeight()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action bar height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getCurrentViewMsgId()J
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SmsViewFrame;->msgId:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-wide v0, v0, Lcom/android/mms/ui/MmsSinglePageFrame;->msgId:J

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getFromSearchView(Ljava/lang/String;Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/MmsApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getNextSplitMode()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSplitMode()I
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSplitMode,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    const-string v2, "Mms/BoxListViewActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status bar height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v1, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getXpositon()I
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1}, Lcom/android/mms/ui/SplitManager;->getXpositon()I

    move-result v0

    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getXpositon,return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMultiWindowMode()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplitBarTouch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsSplitBarTouch:Z

    return v0
.end method

.method public notifyBoxDataChanged(Z)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->splitListChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->splitListChanged()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->splitListChanged()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->close()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->close()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SmsViewFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/SlideshowFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/mms/ui/MmsSinglePageFrame;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onBoxListDeleteMode()V
    .locals 2

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListDeleteMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    return-void
.end method

.method public onBoxListViewbyMode()V
    .locals 2

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onBoxListViewbyMode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10

    const/16 v9, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v4, "Mms/BoxListViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged(),newConfig="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    move v1, v5

    :goto_0
    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eq v4, v1, :cond_7

    const-string v4, "Mms/BoxListViewActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged():Landscape changed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    if-eqz v4, :cond_0

    const-string v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/mms/ui/SplitManager;->setWidth(I)V

    :cond_0
    invoke-direct {p0, v6}, Lcom/android/mms/ui/BoxListViewActivity;->refreshSplitManager(Z)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v4, :cond_1

    if-ne v3, v5, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    :cond_1
    :goto_1
    if-ne v1, v5, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v4, p1, v2}, Lcom/android/mms/ui/BoxListFrame;->configurationChanged(Landroid/content/res/Configuration;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v4, :cond_5

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v4, :cond_6

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v4, :cond_7

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_8
    move v1, v6

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v4, v6}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v4, 0x0

    const-string v3, "Mms/BoxListViewActivity"

    const-string v5, "onCreate()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    const v3, 0x7f040026

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    const v3, 0x7f0b00a2

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mRightScreen:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "Mms/BoxListViewActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folder view : intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initBoxList()Lcom/android/mms/ui/BoxListFrame;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    iput-boolean v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsViewerOnly:Z

    if-eqz v1, :cond_0

    const-string v3, "festivalMemoryWidget"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    const-string v3, "prevViewMode"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mPrevViewMode:I

    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/BoxListFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v3}, Lcom/android/mms/ui/BoxListFrame;->getBoxListAdapter()Lcom/android/mms/ui/BoxListAdapter;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/BoxListAdapter;->setSplitMode(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v3, :cond_7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSplitManager()Z

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->createMultiWindowInstance()Z

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v4, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    move v3, v4

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v3, :cond_9

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_8
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_a
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onDestroy()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onDestroy()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onDestroy()V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    iput-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMultiWindowActivity:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mVto:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mGolbalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-nez v3, :cond_4

    if-ne p1, v5, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v3}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    if-ne p1, v5, :cond_5

    const-string v3, "Mms/BoxListViewActivity"

    const-string v4, "onKeyUp():KEYCODE_BACK"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBackKeyPressed:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/SplitManager;->getSplitMode()I

    move-result v0

    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    if-eq v0, v1, :cond_5

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    :cond_5
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/SmsViewFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/SlideshowFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2}, Lcom/android/mms/ui/BoxListFrame;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v2, p1, p2}, Lcom/android/mms/ui/BoxListFrame;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_9
    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    if-eqz v2, :cond_a

    if-ne p1, v5, :cond_a

    iget-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mUseMoveTaskToBack:Z

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->handleMoveTaskToBack()V

    goto/16 :goto_0

    :cond_a
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string v5, "Mms/BoxListViewActivity"

    const-string v6, "onNewIntent()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v5, "StatusBarNoti"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "notifyFailed"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "fromWidget"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "Mms/BoxListViewActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onNewIntent] mStatusBarNoti="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",notifyFailed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v5, "festivalMemoryWidget"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    const-string v5, "prevViewMode"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mPrevViewMode:I

    iget-boolean v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    const-string v5, "Mms/BoxListViewActivity"

    const-string v6, "onNewIntent()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_5

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getRecoverViewModeFlag(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setRecoverViewModeFlag(Landroid/content/Context;Z)V

    invoke-static {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "noti"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "thread_id"

    invoke-virtual {p1, v5, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_3

    const-string v5, "isFromRecvNoti"

    invoke-virtual {v2, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v5, "thread_id"

    const-string v6, "thread_id"

    invoke-virtual {p1, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_2
    const/high16 v5, 0x34000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/BoxListViewActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->onStop()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    goto :goto_0

    :cond_3
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/BoxListFrame;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "Mms/BoxListViewActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOptionsItemSelected(),item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onOptionsMenuClosed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "\t\tonPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onPrepareOptionsMenu()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionSelectResult:Z

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    :cond_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mOptionMenuCount:I

    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :sswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/BoxListFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SlideshowFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x1

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getMmsViewMode(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "conversationList"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onResume()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_4
    :goto_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onResume()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_1
    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "onSaveInstanceState()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onSearchRequested()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onSearchRequested(), invoke search mode"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->closeOptionsMenu()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->startSearchView()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->checkDefaultSmsApps(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFinish:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/BoxListViewActivity;->refreshSplitManager(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStart()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    :cond_3
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBackKeyPressed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mHomeKeyPressed:Z

    if-eqz v0, :cond_5

    :cond_3
    iput-boolean v2, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    iget v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mPrevViewMode:I

    if-nez v0, :cond_4

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->finish()V

    :cond_5
    const-string v0, "Mms/BoxListViewActivity"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/SmsViewFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsFromFestivalMemory:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mHomeKeyPressed:Z

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListFrame;->onUserLeaveHint()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "Mms/BoxListViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/SlideshowFrame;->onWindowFocusChanged(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method protected removeViewer(I)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b00a2

    const/4 v3, 0x0

    const-string v1, "Mms/BoxListViewActivity"

    const-string v2, "removeComposer()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStop()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onDestroy()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowFrame;->onStop()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/BoxListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStop()V

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v5, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iput v3, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public requestFocusOnViewer()Z
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsViewer:Lcom/android/mms/ui/SlideshowFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected startNotiViewer(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V

    :cond_1
    const/16 v1, 0xd

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    :cond_4
    const/16 v1, 0x66

    invoke-direct {p0, v1, v4}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected startViewer(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BoxListFrame;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    const-string v1, "sms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    const/16 v1, 0xb

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initSmsViewer()Lcom/android/mms/ui/SmsViewFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1, v4, p2, v2}, Lcom/android/mms/ui/SmsViewFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onStart()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSmsViewer:Lcom/android/mms/ui/SmsViewFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsViewFrame;->onResume()V

    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    :cond_3
    const/16 v1, 0x66

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BoxListFrame;->setVisibility(I)V

    :cond_5
    return-void

    :cond_6
    const-string v1, "mms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->clearViewer()V

    const/16 v1, 0xc

    iput v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMsgType:I

    invoke-direct {p0}, Lcom/android/mms/ui/BoxListViewActivity;->initMmsSingleViewer()Lcom/android/mms/ui/MmsSinglePageFrame;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1, v4, p2}, Lcom/android/mms/ui/MmsSinglePageFrame;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onStart()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mMmsSingleViewer:Lcom/android/mms/ui/MmsSinglePageFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsSinglePageFrame;->onResume()V

    :cond_7
    iget-boolean v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mIsLandscape:Z

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->useSplitView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mSplitManager:Lcom/android/mms/ui/SplitManager;

    invoke-virtual {v1, v3, v2}, Lcom/android/mms/ui/SplitManager;->setSplitMode(IZ)Z

    :cond_9
    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onPause()V

    iget-object v1, p0, Lcom/android/mms/ui/BoxListViewActivity;->mBoxList:Lcom/android/mms/ui/BoxListFrame;

    invoke-virtual {v1}, Lcom/android/mms/ui/BoxListFrame;->onStop()V

    :cond_a
    const/16 v1, 0x65

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/BoxListViewActivity;->showEmptyScreen(IZ)V

    goto :goto_0
.end method
