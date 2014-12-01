.class public Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;
.super Ljava/lang/Object;
.source "MultiWindowTrayInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;,
        Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;,
        Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;
    }
.end annotation


# static fields
.field public static final APPLIST_POSITION_LEFT:I = 0x67

.field public static final APPLIST_POSITION_RIGHT:I = 0x68

.field public static final EXISTED_PAIREDWINDOW_INDEX:I = -0x2

.field private static final FLASH_BAR_LIST_FILE_NAME:Ljava/lang/String; = "flash_bar_list"

.field public static final INVALID_PAIREDWINDOW_INDEX:I = -0x1

.field public static final MINIMODE_ACTION_NAME:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field public static final MINIMODE_CATEGORY_NAME:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final POPUP_LIST_FILE_NAME:Ljava/lang/String; = "popup_list"

.field private static final TAG:Ljava/lang/String; = "MultiWindowTrayInfo"

.field private static final mStartPosition:I


# instance fields
.field private final DEBUG:Z

.field private final ESTIMATE_INVALID_VALUE:S

.field private final MAXIMUM_TEMPLATE_NUM:I

.field private final MAX_TASKS:I

.field private final PREF_KEY_FILE_SAVE:Ljava/lang/String;

.field private final PREF_KEY_FILE_SAVE_POPUP:Ljava/lang/String;

.field private final PREF_KEY_NUM_APP:Ljava/lang/String;

.field private final PREF_KEY_NUM_APP_POPUP:Ljava/lang/String;

.field private final PREF_KEY_NUM_TEMPLATE:Ljava/lang/String;

.field private final SEPARATOR:Ljava/lang/String;

.field private mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

.field private mContext:Landroid/content/Context;

.field private mFeatureMultiwindowRecentUI:Z

.field private mFlashBarAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashBarDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashBarListFileName:Ljava/lang/String;

.field private mIsTabletConcept:Z

.field private mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

.field private mPenWindowOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPixelOfShadow:I

.field private mPopupAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupListFileName:Ljava/lang/String;

.field private mRemovedFromDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRemovingTask:I

.field private mRunningAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowAlpha:I

.field private mShadowOfIconY:I

.field private mSupportExampleTemplate:Z

.field private mSupportMultiInstance:Z

.field private mTemplateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

.field private prefixTemplate:Ljava/lang/String;

.field private final prefixTemplate_:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->DEBUG:Z

    iput-short v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->ESTIMATE_INVALID_VALUE:S

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovedFromDelList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    const-string v0, "flash_bar_list"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarListFileName:Ljava/lang/String;

    const-string v0, "popup_list"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupListFileName:Ljava/lang/String;

    const-string v0, "KEY_FILE_SAVE"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->PREF_KEY_FILE_SAVE:Ljava/lang/String;

    const-string v0, "KEY_NUM_APP"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->PREF_KEY_NUM_APP:Ljava/lang/String;

    const-string v0, "KEY_FILE_SAVE_POPUP"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->PREF_KEY_FILE_SAVE_POPUP:Ljava/lang/String;

    const-string v0, "KEY_NUM_APP_POPUP"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->PREF_KEY_NUM_APP_POPUP:Ljava/lang/String;

    const-string v0, "KEY_NUM_TEMPLATE"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->PREF_KEY_NUM_TEMPLATE:Ljava/lang/String;

    const-string v0, "Paired window "

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    const-string v0, "Pairedwindow_no"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate_:Ljava/lang/String;

    const-string v0, "#/#"

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->SEPARATOR:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportExampleTemplate:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->MAX_TASKS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->MAXIMUM_TEMPLATE_NUM:I

    iput v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovingTask:I

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mIsTabletConcept:Z

    const-string v0, "MultiWindowTrayInfo"

    const-string v1, "FlashBarInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->updateSupportedAppList()V

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportMultiInstance(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    new-instance v0, Lcom/samsung/android/theme/SThemeManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/theme/SThemeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mThemeMgr:Lcom/samsung/android/theme/SThemeManager;

    iput-boolean v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mIsTabletConcept:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mShadowOfIconY:I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mShadowAlpha:I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPixelOfShadow:I

    iput-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.multiwindow.recentui"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFeatureMultiwindowRecentUI:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowTrayInfo"

    const-string v4, "addwithcheckduplicate  duplicated item return false!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private addwithcheckduplicateForPenWindow(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowTrayInfo"

    const-string v4, "addwithcheckduplicateForPenWindow duplicated item return false!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private addwithcheckduplicateForPenWindowOnly(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MultiWindowTrayInfo"

    const-string v4, "addwithcheckduplicateForPenWindowOnly duplicated item return false!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    invoke-interface {v3, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private addwithcheckduplicateForTemplate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MultiWindowTrayInfo"

    const-string v3, "addwithcheckduplicateForTemplate  duplicated item return false!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    move-result v2

    goto :goto_0
.end method

.method private findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return-object v1

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private generateMultiIcon(Ljava/util/List;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/BitmapDrawable;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private generateRecentIcon(Ljava/util/List;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-static {v4, v2}, Lcom/android/systemui/recent/multiwindow/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v4
.end method

.method private getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getLauncherLargeIconDensity()I

    move-result v2

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_2

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_1
    const/4 v1, 0x0

    if-eqz v6, :cond_0

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v7, :cond_3

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ComponentInfo;->getIconResource()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v6, v4, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1080093

    invoke-direct {p0, v7, v8, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getFullResIcon(Landroid/content/res/Resources;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    iget-object v7, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_2
.end method

.method private makeExampleTemplate(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method

.method private queryResolveInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v5
.end method

.method private updateMultiAppList(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;I)V
    .locals 3

    const-string v1, "MultiWindowTrayInfo"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultiAppList : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addInstalledPackage(Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->updateSupportedAppList()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovedFromDelList:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    iget-object v13, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovedFromDelList:Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v13, 0xc0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    invoke-virtual {v8, v5, v13, v14}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    const/4 v1, 0x0

    const/4 v12, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object v12, v10

    :cond_d
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_15

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v13, :cond_15

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_1
    if-eqz v7, :cond_16

    const-string v13, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "com.sec.android.support.multiwindow"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_e

    const-string v13, "com.samsung.android.sdk.multiwindowonly.enable"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_16

    :cond_e
    move-object v1, v10

    :cond_f
    :goto_2
    if-eqz p2, :cond_10

    if-eqz v12, :cond_10

    const-string v13, "MultiWindowTrayInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateFlashBarList() : loading penwidnow app (activityInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindow(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->savePopupList()V

    :cond_10
    if-nez p2, :cond_11

    if-eqz v1, :cond_11

    const-string v13, "MultiWindowTrayInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mIsTabletConcept:Z

    if-eqz v13, :cond_12

    if-eqz v12, :cond_12

    if-nez v1, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_12

    new-instance v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindowOnly(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    :cond_12
    if-eqz p2, :cond_13

    if-nez v12, :cond_14

    :cond_13
    if-nez p2, :cond_c

    if-eqz v1, :cond_c

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->sortAppList()V

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_15
    :try_start_1
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v13, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_1

    :cond_16
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v13, :cond_18

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v14, "android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_17

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v14, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    :cond_17
    move-object v1, v10

    goto/16 :goto_2

    :cond_18
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    if-eqz v13, :cond_c

    :cond_19
    move-object v1, v10

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    const-string v13, "MultiWindowTrayInfo"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_1a
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public addTemplate(Ljava/util/List;Ljava/lang/String;Z)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v11}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v12, :cond_1

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-nez v9, :cond_1

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    :cond_1
    if-eqz v9, :cond_0

    const-string v12, "MultiWindowTrayInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addTemplate r = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v12, v11, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v12}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v13

    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v13, v12, :cond_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    new-instance v12, Landroid/util/Pair;

    iget-object v13, v11, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v13}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v12, v9, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v6, v8, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_8

    new-instance v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-nez p3, :cond_5

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-direct {v4, p0, v6, v0, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Ljava/util/List;Ljava/lang/String;Z)V

    invoke-direct {p0, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForTemplate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, -0x2

    :goto_3
    return v12

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    :cond_6
    const-string v12, "MultiWindowTrayInfo"

    const-string v13, "Add new template!!"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroid/content/pm/ResolveInfo;

    const-string v12, "MultiWindowTrayInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Stored Package : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    iget-object v12, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    const-string v12, "MultiWindowTrayInfo"

    const-string v13, "template add fail. current running app is null or only have 1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    goto :goto_3
.end method

.method public canAddTemplate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeApplistItem(IIZ)V
    .locals 3

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    if-le p2, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public changeSmartWindowItem(IIZ)V
    .locals 3

    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    if-le p2, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    invoke-interface {v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;->notifyAppListSizeChanged()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public createShadowIcon(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPixelOfShadow:I

    div-int/lit16 v8, v2, 0xa0

    mul-int v6, v7, v8

    add-int v7, p3, v6

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const v7, 0x3f733333

    const/high16 v8, 0x3f800000

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v7, p2

    int-to-float v8, p2

    const v9, 0x3f733333

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    int-to-float v8, v6

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v7, Landroid/graphics/LightingColorFilter;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mShadowAlpha:I

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v1, p1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, p1, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->release()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public generateFlashBarList()V
    .locals 35

    const-string v32, "MultiWindowTrayInfo"

    const-string v33, "generateFlashBarList"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v32, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v32, 0x40

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v33

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    const/4 v5, 0x0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    :try_start_0
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    new-instance v32, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v8, :cond_4

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_4

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z

    move-result v32

    if-eqz v32, :cond_1

    new-instance v27, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindow(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    :cond_1
    const/16 v31, 0x0

    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_2

    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    const-string v33, "com.sec.android.multiwindow.activity.STYLE"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->parseActivityInfoMetaData(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v31

    :cond_2
    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isHideAppList(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_5

    const-string v32, "MultiWindowTrayInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "generateFlashBarList() : SKIP package="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const/4 v5, 0x0

    const-string v32, "MultiWindowTrayInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    if-eqz v5, :cond_0

    const-string v32, "MultiWindowTrayInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "generateFlashBarList() : loading mw app (activityInfo="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v16, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    goto/16 :goto_1

    :cond_5
    if-eqz v21, :cond_7

    const-string v32, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6

    const-string v32, "com.sec.android.support.multiwindow"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6

    const-string v32, "com.samsung.android.sdk.multiwindowonly.enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_7

    :cond_6
    move-object/from16 v5, v30

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportApp(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportPackageList(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportComponentList(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_0

    :cond_8
    move-object/from16 v5, v30

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFeatureMultiwindowRecentUI:Z

    move/from16 v32, v0

    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v32

    if-eqz v32, :cond_3

    move-object/from16 v5, v30

    goto/16 :goto_2

    :cond_a
    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v32, "com.sec.android.intent.category.MULTIWINDOW_LAUNCHER"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v32, 0x40

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v33

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_b
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_b

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    :try_start_2
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    new-instance v32, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v8, :cond_c

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_c

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    :goto_4
    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v21, :cond_b

    const-string v32, "com.samsung.android.sdk.multiwindow.enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    new-instance v16, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v12

    const-string v32, "MultiWindowTrayInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_c
    :try_start_3
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :cond_d
    new-instance v18, Landroid/content/Intent;

    const-string v32, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v32, "com.samsung.android.intent.category.PENWINDOW_LAUNCHER"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v32, 0x40

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v33

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/content/pm/ComponentInfo;->exported:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    :try_start_4
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    new-instance v32, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v33, 0xc0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    if-eqz v8, :cond_f

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    iget-object v0, v8, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    :goto_6
    move-object/from16 v0, v30

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v8, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v21, :cond_e

    const-string v32, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_e

    new-instance v27, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindow(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_5

    :catch_2
    move-exception v12

    const-string v32, "MultiWindowTrayInfo"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "generateFlashBarList() : exception occurs! while loading mw app (activityInfo="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ")"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_5

    :cond_f
    :try_start_5
    iget-object v0, v4, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x107005a

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    move-object v9, v11

    array-length v0, v9

    move/from16 v20, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_8
    move/from16 v0, v20

    if-ge v15, v0, :cond_14

    aget-object v24, v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_12
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v6}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_8

    :cond_14
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mIsTabletConcept:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportFreeStyleLaunch(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_16
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_17

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    move-result v32

    if-eqz v32, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindowOnly(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    goto :goto_b

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->sortAppList()V

    new-instance v28, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarListFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    const-string v32, "KEY_FILE_SAVE"

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeExampleTemplate(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x0

    :goto_c
    if-ge v13, v7, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    add-int v33, v13, v10

    add-int/lit8 v33, v33, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_c

    :cond_18
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->loadFlashBarList(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)V

    new-instance v29, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupListFileName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    const/16 v34, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    const-string v32, "KEY_FILE_SAVE_POPUP"

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    if-nez v32, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v7

    const/4 v13, 0x0

    :goto_d
    if-ge v13, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    add-int/lit8 v33, v13, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->loadPopupList(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)V

    return-void
.end method

.method public getActivityInfoForPenWindow(I)Landroid/content/pm/ActivityInfo;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method

.method public getAppCnt()I
    .locals 2

    const-string v0, "MultiWindowTrayInfo"

    const-string v1, "getAppCnt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAppListForSmartWindow()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    return-object v0
.end method

.method public getAppResolveInfo(I)Landroid/content/pm/ResolveInfo;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    return-object v1
.end method

.method public getAppTitle(IZ)Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    goto :goto_1
.end method

.method public getAvailableTemplateText()Ljava/lang/CharSequence;
    .locals 7

    const/4 v2, 0x0

    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$1;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->prefixTemplate:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v5, v4

    goto :goto_0
.end method

.method public getComponentInfo(I)Landroid/content/pm/ComponentInfo;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v1
.end method

.method public getDefaultTemplateText(Ljava/util/List;)Ljava/lang/CharSequence;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    const/4 v8, 0x4

    new-array v6, v8, [Ljava/lang/String;

    const-string v8, ""

    aput-object v8, v6, v10

    const-string v8, ""

    aput-object v8, v6, v11

    const-string v8, ""

    aput-object v8, v6, v12

    const-string v8, ""

    aput-object v8, v6, v13

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    :cond_0
    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    :cond_1
    if-eqz v3, :cond_6

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v7

    and-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_4

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_3

    aput-object v0, v6, v10

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v11

    goto :goto_1

    :cond_4
    and-int/lit8 v8, v7, 0xc

    if-eqz v8, :cond_2

    and-int/lit8 v8, v7, 0x4

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v12

    goto :goto_1

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v13

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_2
    return-object v8

    :cond_7
    const/4 v1, 0x0

    :goto_3
    array-length v8, v6

    if-ge v1, v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move-object v8, v5

    goto :goto_2
.end method

.method public getFlashBarIndex(Ljava/lang/String;)I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getFlashBarIntent(IZZ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_2

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    :goto_0
    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v2

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    goto :goto_0

    :cond_3
    const/high16 v8, 0x10200000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/content/pm/ResolveInfo;

    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v8, "com.google.android.youtube"

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_3
    if-eqz p2, :cond_5

    invoke-virtual {p0, v6, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    :cond_5
    new-instance v7, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/high16 v8, 0x10200000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_3
.end method

.method public getFlashBarState()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "MultiWindowTrayInfo"

    const-string v2, "getFlashBarState"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_flashbar_shown"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getIconByIndex(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getIconByIndexForSmartWindow(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public getIconByRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getLauncherLargeIconDensity()I
    .locals 5

    const/16 v3, 0x140

    iget-object v4, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-ge v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    int-to-float v3, v0

    const/high16 v4, 0x3fc00000

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000

    add-float/2addr v3, v4

    float-to-int v0, v3

    goto :goto_0

    :sswitch_0
    const/16 v0, 0xa0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xf0

    goto :goto_0

    :sswitch_2
    move v0, v3

    goto :goto_0

    :sswitch_3
    move v0, v3

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x1e0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x280

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xd5 -> :sswitch_2
        0xf0 -> :sswitch_3
        0x140 -> :sswitch_4
        0x1e0 -> :sswitch_5
    .end sparse-switch
.end method

.method public getListItemByIndex(IZ)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    goto :goto_0
.end method

.method public getPopupAppCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getPopupIntent(IZ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "com.google.android.youtube"

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const/high16 v5, 0x10200000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getRunningAppByIndex(I)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    goto :goto_0
.end method

.method public getRunningAppCnt()I
    .locals 2

    const-string v0, "MultiWindowTrayInfo"

    const-string v1, "getRunningAppCnt"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getRunningAppTaskIdByIndex(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getRunningAppByIndex(I)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTaskId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSmartWindowItemByIndex(IZ)Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    goto :goto_0
.end method

.method public getUnableAppCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUnableSmartAppCnt()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public isPenWindowOnly(I)Z
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isTemplate(IZ)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-le p1, v3, :cond_3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v1, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const-string v1, "MultiWindowTrayInfo"

    const-string v3, "isTemplate : index == ESTIMATE_INVALID_VALUE"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method public loadFlashBarList(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)V
    .locals 30

    const-string v27, "MultiWindowTrayInfo"

    const-string v28, "loadFlashBarList"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const-string v27, "KEY_NUM_APP"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "loadFlashBarList : app = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", order = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v14, :cond_1

    if-le v14, v13, :cond_0

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Abnormal xml(Too Large Order) order = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_0
    new-instance v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;I)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-eq v13, v0, :cond_3

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Abnormal xml(Empty Order) or the list of multiwindow apps is changed. size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v3, :cond_7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v15, :cond_4

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mItem:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    const/4 v7, 0x1

    :cond_4
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    const-string v27, "KEY_NUM_TEMPLATE"

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Need to add templates. total size = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :goto_3
    move/from16 v0, v23

    if-ge v8, v0, :cond_e

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const-string v27, "Pairedwindow_no"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "templateItem = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v24, :cond_8

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    const-string v27, "#/#"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v27, 0x0

    aget-object v27, v25, v27

    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v22

    const/16 v27, 0x1

    aget-object v27, v25, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Component = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v27, "#/#"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    aget-object v27, v26, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v19

    if-eqz v19, :cond_9

    new-instance v27, Landroid/util/Pair;

    const/16 v28, 0x1

    aget-object v28, v26, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    const-string v27, "true"

    const/16 v28, 0x2

    aget-object v28, v25, v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    const/4 v5, 0x1

    :cond_b
    new-instance v10, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const/16 v27, 0x0

    aget-object v27, v25, v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v10, v0, v12, v1, v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Ljava/util/List;Ljava/lang/String;Z)V

    if-lez v14, :cond_d

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " added to AppList"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    new-instance v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, v17

    invoke-direct {v0, v10, v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;I)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->clear()V

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_d
    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " added to DelList"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->clear()V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v15

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v15, :cond_10

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->getItem()Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mDuplicatedOrder:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    const-string v27, "MultiWindowTrayInfo"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Abnormal xml(Duplicated Order) order = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->getOrder()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    if-ne v13, v0, :cond_11

    if-eqz v6, :cond_12

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    :cond_12
    return-void
.end method

.method public loadPopupList(Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;)V
    .locals 17

    const-string v14, "MultiWindowTrayInfo"

    const-string v15, "loadPopupList"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const-string v14, "KEY_NUM_APP_POPUP"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v6}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lez v9, :cond_1

    if-le v9, v8, :cond_0

    const-string v14, "MultiWindowTrayInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Abnormal xml(Too Large Order) order = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    new-instance v11, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    invoke-direct {v11, v6, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;I)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-eq v8, v14, :cond_3

    const/4 v3, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v10, :cond_4

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    iget-object v14, v11, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mItem:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v4, 0x1

    :cond_4
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v12}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v10, :cond_9

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-virtual {v11}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->getItem()Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;

    iget-boolean v14, v14, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$OrderedItem;->mDuplicatedOrder:Z

    if-eqz v14, :cond_8

    const/4 v3, 0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-ne v8, v14, :cond_a

    if-eqz v3, :cond_b

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->savePopupList()V

    :cond_b
    return-void
.end method

.method public makeAppListForScrollView(Ljava/util/List;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeAppListForScrollView(Ljava/util/List;ZIZ)V

    return-void
.end method

.method public makeAppListForScrollView(Ljava/util/List;ZIZ)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;ZIZ)V"
        }
    .end annotation

    const-string v21, "MultiWindowTrayInfo"

    const-string v22, "makeAppListForScrollView"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "activity"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    const/16 v21, 0x64

    const/16 v22, 0x2

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v20

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_0

    if-ge v8, v5, :cond_0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v21, 0x7f08000e

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v21, 0x7f080011

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const v21, 0x7f08000f

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const v21, 0x7f080010

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v21

    if-nez v21, :cond_2

    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v21

    const/high16 v22, 0x8000000

    and-int v21, v21, v22

    if-eqz v21, :cond_7

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovingTask:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, v19

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovingTask:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    :cond_4
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual {v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_6

    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    :cond_6
    const/4 v7, 0x1

    const/16 v21, 0x67

    move/from16 v0, p3

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, 0x15

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v21, 0x7f0200a2

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    if-eqz v7, :cond_9

    :cond_8
    if-eqz p2, :cond_c

    invoke-virtual {v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    invoke-virtual {v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    invoke-virtual {v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v21, 0x13

    move/from16 v0, v21

    iput v0, v15, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v6, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v21, 0x7f0200a3

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_c
    invoke-virtual {v14}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v21, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public makeAppListForSmartEditWindow(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v6, 0x7f08000e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v6, 0x7f080011

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-eqz v2, :cond_0

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public makeFlashBarList()V
    .locals 2

    const-string v0, "MultiWindowTrayInfo"

    const-string v1, "makeFlashBarList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->generateFlashBarList()V

    return-void
.end method

.method public makeInstancebadgeForGridView(Landroid/widget/ImageView;II)V
    .locals 14

    const-string v11, "MultiWindowTrayInfo"

    const-string v12, "makeInstancebadgeForGridView"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    iget-object v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move/from16 v0, p2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v11}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-boolean v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    const/4 v12, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v0, v11, v12}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getFlashBarIntent(IZZ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x0

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mSupportMultiInstance:Z

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v11, v12}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v11

    const/high16 v12, 0x8000000

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    :cond_2
    const/16 v11, 0x64

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v12

    if-ne v11, v12, :cond_3

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v12, v9, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v6}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_5

    :cond_4
    iget-object v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v11, :cond_3

    iget-object v11, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_5
    const/4 v2, 0x1

    const/16 v11, 0x67

    move/from16 v0, p3

    if-ne v0, v11, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x15

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f0200a2

    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v11, 0x13

    iput v11, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v11, 0x7f020075

    invoke-virtual {p1, v11}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public makeMultiInstanceIntent(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x8000000

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    :goto_0
    if-eqz v0, :cond_0

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v4, :cond_4

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eq v2, v5, :cond_4

    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.launchmode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_2

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v4, :cond_6

    const-string v2, "singleTask"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v2, v5, :cond_2

    const-string v2, "singleInstance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_7
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public makeRecentApp(Ljava/util/List;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    :goto_0
    return-object v9

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v8}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-virtual {v6, v3, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_4

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->loadIconForResolve(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->generateRecentIcon(Ljava/util/List;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto :goto_0
.end method

.method public moveToAppListItem(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-gez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicate(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveToEditListItem(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveToSmartEditItem(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;->notifyAppListSizeChanged()V

    goto :goto_0
.end method

.method public moveToSmartWindowItem(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    if-gez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addwithcheckduplicateForPenWindow(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupDelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public pkgManagerList(Landroid/content/Intent;Z)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "MultiWindowTrayInfo"

    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addInstalledPackage(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "MultiWindowTrayInfo"

    const-string v7, "android.intent.action.PACKAGE_REMOVE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->removeInstalledPackage(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    :goto_1
    move v4, v5

    goto :goto_0

    :cond_3
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, "MultiWindowTrayInfo"

    const-string v7, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, -0x1

    if-eqz v3, :cond_4

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    :cond_4
    const/4 v6, 0x3

    if-eq v1, v6, :cond_5

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    :cond_5
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->removeInstalledPackage(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    if-ne v1, v4, :cond_8

    :cond_7
    invoke-virtual {p0, v2, p2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->addInstalledPackage(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_8
    const-string v4, "MultiWindowTrayInfo"

    const-string v6, "android.intent.action.PACKAGE_CHANGED : state is invalid"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v6, "MultiWindowTrayInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.intent.action.PACKAGE_REPLACED packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->updateInstalledPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_0

    :cond_a
    const-string v4, "MultiWindowTrayInfo"

    const-string v6, "RECEIVER"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public releaseAppListBitmap(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;)V"
        }
    .end annotation

    const-string v5, "MultiWindowTrayInfo"

    const-string v6, "releaseAppListBitmap"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    if-ge v3, v1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v5, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public removeInstalledPackage(Ljava/lang/String;Z)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return v6

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo2()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovedFromDelList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v5, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo2()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPenWindowOnlyList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    invoke-interface {v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;->notifyAppListSizeChanged()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->savePopupList()V

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    :goto_5
    move v6, v5

    goto/16 :goto_0

    :cond_c
    move v5, v6

    goto :goto_5
.end method

.method public removeTemplate(IZ)V
    .locals 3

    const/4 v1, -0x1

    if-le p1, v1, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mTemplateList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "MultiWindowTrayInfo"

    const-string v2, "removeTemplate : index == ESTIMATE_INVALID_VALUE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public reorderApplist(II)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-le p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->saveFlashBarList()V

    return-void
.end method

.method public reorderSmartWindowList(II)V
    .locals 2

    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    if-le p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;->notifyAppListSizeChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->savePopupList()V

    return-void
.end method

.method public resetMultiWindowTray()V
    .locals 5

    new-instance v0, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarListFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    new-instance v1, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    iget-object v2, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupListFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->clear()V

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->clear()V

    invoke-virtual {v0}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    invoke-virtual {v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    invoke-virtual {p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->makeFlashBarList()V

    return-void
.end method

.method public saveFlashBarList()V
    .locals 22

    const-string v19, "MultiWindowTrayInfo"

    const-string v20, "saveFlashBarList"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarListFileName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v13, v0, v1, v2}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    const/4 v15, 0x0

    invoke-virtual {v13}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v8, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v8, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->isDefaultTitle()Z

    move-result v19

    if-eqz v19, :cond_2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_2
    const-string v19, "Pairedwindow_no"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_3

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/content/pm/ResolveInfo;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v6}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "0"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->isDefaultTitle()Z

    move-result v19

    if-eqz v19, :cond_5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_5
    const-string v19, "Pairedwindow_no"

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v15, 0x1

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v11, :cond_6

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/content/pm/ResolveInfo;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Pair;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "#/#"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "false"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v6}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    :cond_8
    const-string v19, "KEY_FILE_SAVE"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putBoolean(Ljava/lang/String;Z)V

    const-string v19, "KEY_NUM_APP"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    const-string v19, "KEY_NUM_TEMPLATE"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0, v15}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v13}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    return-void
.end method

.method public savePopupList()V
    .locals 8

    const/4 v7, 0x1

    const-string v5, "MultiWindowTrayInfo"

    const-string v6, "savePopupList"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupListFileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->clear()V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    const-string v5, "KEY_FILE_SAVE_POPUP"

    invoke-virtual {v4, v5, v7}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    const-string v5, "KEY_NUM_APP_POPUP"

    iget-object v6, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mPopupAppList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiUserPreferences;->commit()V

    return-void
.end method

.method public setAppListSizeChangeListener(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mListener:Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$AppListSizeChangeListener;

    return-void
.end method

.method public setFlashBarState(Z)V
    .locals 4

    const-string v0, "MultiWindowTrayInfo"

    const-string v1, "setFlashBarState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multi_window_flashbar_shown"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRemoveTask(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRemovingTask:I

    return-void
.end method

.method public sortAppList()V
    .locals 7

    new-instance v0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$2;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-string v6, "google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateAppListForScrollView(Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;Z)V"
        }
    .end annotation

    const-string v8, "MultiWindowTrayInfo"

    const-string v9, "updateAppListForScrollView"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    if-ge v3, v1, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f08000e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f080011

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f08000f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    invoke-virtual {v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateInstalledPackage(Ljava/lang/String;)Z
    .locals 13

    iget-object v10, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    const/4 v9, 0x0

    :cond_0
    return v9

    :cond_1
    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    iget-object v10, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarAppList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "MultiWindowTrayInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateInstalledPackage() : item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_0

    :cond_5
    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->updateResolveInfo(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->refreshItemIcon()V

    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mFlashBarDelList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    const-string v10, "MultiWindowTrayInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateInstalledPackage() : mFlashBarDelList item title="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getLists()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v10, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "MultiWindowTrayInfo"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateInstalledPackage() : item="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    goto :goto_2

    :cond_a
    if-eqz v9, :cond_7

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v5, v3}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->updateResolveInfo(Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->refreshItemIcon()V

    goto :goto_3
.end method

.method public updateRunningAppList()V
    .locals 14

    const/16 v13, 0xbc

    const/4 v12, 0x0

    const-string v9, "MultiWindowTrayInfo"

    const-string v10, "updateRunningAppList"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v9, 0x64

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11}, Landroid/app/ActivityManager;->getRunningTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p0, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getClassName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->sourceActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->findResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-direct {p0, v7}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->queryResolveInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    :cond_3
    if-eqz v4, :cond_2

    new-instance v2, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;-><init>(Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;Landroid/content/pm/ResolveInfo;)V

    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v5, 0x0

    if-eqz v8, :cond_4

    invoke-static {v8, v12, v12, v13, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_4
    invoke-virtual {v2, v5}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->setThumbnail(Landroid/graphics/Bitmap;)V

    iget v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v2, v9}, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo$LaunchItem;->setTaskId(I)V

    iget-object v9, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mRunningAppList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateSupportedAppList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/multiwindow/MultiWindowTrayInfo;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->loadCscAppList()V

    return-void
.end method
