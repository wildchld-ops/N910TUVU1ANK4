.class public Lcom/android/settings/toolbox/ToolboxList;
.super Landroid/app/ListFragment;
.source "ToolboxList.java"

# interfaces
.implements Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;
.implements Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;,
        Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;
    }
.end annotation


# static fields
.field static ACTION_MEMO:Ljava/lang/String;

.field static FLASH_ANNOTATE:Ljava/lang/String;

.field static MAGNIFIER:Ljava/lang/String;

.field static MAX_DEFAULT_APPS:I

.field static MAX_TOOLBOX_APPS:I

.field static PHOTO_EDITOR:Ljava/lang/String;

.field static QUICK_CONNECT:Ljava/lang/String;

.field static SCRAPBOOK:Ljava/lang/String;

.field static S_FINDER:Ljava/lang/String;

.field static TOUCH_LIGHT:Ljava/lang/String;

.field private static list_view:Landroid/widget/ListView;


# instance fields
.field private KIDS:Ljava/lang/String;

.field private KNOX:Ljava/lang/String;

.field private SavedApplist:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

.field private mExtraAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field mMenuCancel:Landroid/view/MenuItem;

.field mMenuDone:Landroid/view/MenuItem;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSaveButton:Landroid/widget/Button;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedToolboxAppsNums:I

.field private mTempApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCheckedApplist:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

.field private mapp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mcancelButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/android/settings/toolbox/ToolboxList;->MAX_TOOLBOX_APPS:I

    sput v0, Lcom/android/settings/toolbox/ToolboxList;->MAX_DEFAULT_APPS:I

    const-string v0, "com.samsung.android.app.galaxyfinder"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    const-string v0, "com.samsung.android.sconnect"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    const-string v0, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->TOUCH_LIGHT:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.pinboard"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->SCRAPBOOK:Ljava/lang/String;

    const-string v0, "com.samsung.android.widgetapp.actionmemo"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->ACTION_MEMO:Ljava/lang/String;

    const-string v0, "com.sec.android.mimage.photoretouching"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    const-string v0, "com.sec.spen.flashannotate"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    const-string v0, "com.sec.android.app.magnifier"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    const-string v0, "com.sec.android.app.kidshome"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->KIDS:Ljava/lang/String;

    const-string v0, "sec.knox"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->KNOX:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mapp:Ljava/util/List;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private SavedToolboxList()V
    .locals 6

    const-string v2, ""

    const-string v1, ""

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTempCheckedApplist.get("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedToolboxList mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "toolbox_apps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/toolbox/ToolboxList;)I
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->getCheckedToolboxAppNum()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/toolbox/ToolboxList;)Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/toolbox/ToolboxList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/toolbox/ToolboxList;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/toolbox/ToolboxList;)Lcom/android/settings/toolbox/SelectModeCallback;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/toolbox/ToolboxList;)V
    .locals 0
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/toolbox/ToolboxList;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/toolbox/ToolboxList;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxList;
    .param p1    # I
    .param p2    # Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/toolbox/ToolboxList;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private configureActionBar()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    const v2, 0x7f040064

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    :cond_1
    return-void
.end method

.method private getCheckedToolboxAppNum()I
    .locals 6

    const/4 v1, 0x0

    const-string v2, ""

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ToolboxList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCheckedToolboxAppNum mCheckedAppNum :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1    # I
    .param p2    # Landroid/content/pm/ActivityInfo;

    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    iget-object v8, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    iget v10, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v10, :cond_1

    :goto_0
    invoke-virtual {v9, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v7, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v0, v8

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v6, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v7, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v9

    invoke-virtual {v1, p1, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v9, "ToolboxList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v9, "ToolboxList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "ToolboxList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadAppIcon : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 29
    .param p1    # Landroid/os/Bundle;

    invoke-super/range {p0 .. p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_2

    const-string v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "com.nttdocomo.android.docomo_market"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "com.felicanetworks.mfm"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->KIDS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->KNOX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_5

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v21

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    move/from16 v0, v21

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v8, Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/toolbox/ToolboxList$AlphaComparator;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-static {v1, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->S_FINDER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v19

    new-instance v14, Landroid/content/pm/ActivityInfo;

    invoke-direct {v14}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "S Finder"

    iput-object v1, v14, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const-string v1, "index0"

    iput-object v1, v14, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const v1, 0x7f0206c3

    iput v1, v14, Landroid/content/pm/PackageItemInfo;->icon:I

    const v1, 0x7f0206c3

    iput v1, v14, Landroid/content/pm/PackageItemInfo;->logo:I

    const-string v26, "S Finder/index0;"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    new-instance v13, Landroid/content/pm/ActivityInfo;

    invoke-direct {v13}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "Quick connect"

    iput-object v1, v13, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const-string v1, "index1"

    iput-object v1, v13, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const v1, 0x7f0206c2

    iput v1, v13, Landroid/content/pm/PackageItemInfo;->icon:I

    const v1, 0x7f0206c2

    iput v1, v13, Landroid/content/pm/PackageItemInfo;->logo:I

    const-string v25, "Quick connect/index1;"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    :cond_7
    new-instance v16, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ActivityInfo;-><init>()V

    const v1, 0x7f091269

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "Torch"

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const-string v1, "index2"

    move-object/from16 v0, v16

    iput-object v1, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const v1, 0x7f0206c6

    move-object/from16 v0, v16

    iput v1, v0, Landroid/content/pm/PackageItemInfo;->icon:I

    const v1, 0x7f0206c6

    move-object/from16 v0, v16

    iput v1, v0, Landroid/content/pm/PackageItemInfo;->logo:I

    const-string v28, "Torch/index2;"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v10, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v23, Lcom/android/settings/toolbox/ToolboxList;->PHOTO_EDITOR:Ljava/lang/String;

    :goto_4
    if-eqz v23, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, v23

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    new-instance v15, Landroid/content/pm/ActivityInfo;

    invoke-direct {v15}, Landroid/content/pm/ActivityInfo;-><init>()V

    const v1, 0x7f091adf

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "Screen write"

    iput-object v1, v15, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const-string v1, "index3"

    iput-object v1, v15, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const v1, 0x7f0206c5

    iput v1, v15, Landroid/content/pm/PackageItemInfo;->icon:I

    const v1, 0x7f0206c5

    iput v1, v15, Landroid/content/pm/PackageItemInfo;->logo:I

    const-string v27, "Screen write/index3;"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getAppInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v17

    new-instance v12, Landroid/content/pm/ActivityInfo;

    invoke-direct {v12}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v1, "Magnifier"

    iput-object v1, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    const-string v1, "index4"

    iput-object v1, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const v1, 0x7f0206c0

    iput v1, v12, Landroid/content/pm/PackageItemInfo;->icon:I

    const v1, 0x7f0206c0

    iput v1, v12, Landroid/content/pm/PackageItemInfo;->logo:I

    const-string v24, "Magnifier/index4;"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v10, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v11, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_13

    const/4 v9, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    const-string v2, "null"

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    :cond_a
    const/16 v21, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    move/from16 v0, v21

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_c
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_6

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v23, Lcom/android/settings/toolbox/ToolboxList;->FLASH_ANNOTATE:Ljava/lang/String;

    goto/16 :goto_4

    :cond_e
    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto/16 :goto_7

    :cond_11
    if-nez v9, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :cond_13
    new-instance v1, Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f04024e

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/toolbox/ToolboxList;->mExtraAppList:Ljava/util/List;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;-><init>(Lcom/android/settings/toolbox/ToolboxList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sput-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/toolbox/ToolboxList;->mAppListAdapter:Lcom/android/settings/toolbox/ToolboxList$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/android/settings/toolbox/ToolboxList;->list_view:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/toolbox/ToolboxList$1;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    :cond_14
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/toolbox/SelectModeCallback;-><init>(Landroid/content/Context;Lcom/android/settings/common/ActionModeCallback$OnAcionModeListner;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-virtual {v0, p0}, Lcom/android/settings/toolbox/SelectModeCallback;->setOnDoneListner(Lcom/android/settings/toolbox/SelectModeCallback$OnDoneListner;)V

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    const-string v4, "ToolboxList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SavedApplist :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->SavedApplist:Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    array-length v4, v4

    iput v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    :cond_0
    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedToolboxAppsNums:I

    if-ge v1, v4, :cond_1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    const/16 v5, 0x2f

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v4, v4, v1

    add-int/lit8 v5, v2, 0x1

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v3, v4, v1

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v0, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->configureActionBar()V

    :cond_2
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const v2, 0x7f0901ba

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuCancel:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v1, 0x7f0916b5

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuDone:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mcancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mcancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$2;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxList$2;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    const v2, 0x7f091858

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxList;->mSaveButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/toolbox/ToolboxList$3;

    invoke-direct {v2, p0}, Lcom/android/settings/toolbox/ToolboxList$3;-><init>(Lcom/android/settings/toolbox/ToolboxList;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f0401f7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b04d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    :cond_0
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1    # Landroid/view/MenuItem;

    const/4 v0, 0x1

    const-string v1, "ToolboxList"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mToolboxlistActionModeCallBack:Lcom/android/settings/toolbox/SelectModeCallback;

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->getCheckedToolboxAppNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/toolbox/SelectModeCallback;->updateSelectionMenu(I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public save()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxList;->SavedToolboxList()V

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxList;->stopActionMode()V

    return-void
.end method

.method public stopActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxList;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
