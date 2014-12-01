.class public Lcom/android/settings/lockscreenshortcut/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;
    }
.end annotation


# static fields
.field static MAX_SHORTCUT_ICON:I


# instance fields
.field private NappList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftSideView:Landroid/view/View;

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRightSideView:Landroid/view/View;

.field private mSecretModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSetedShortcut_activity:[Ljava/lang/String;

.field private mSetedShortcut_package:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    sput v0, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    iput v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v5

    aput-object v2, v0, v6

    const/4 v1, 0x4

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mLeftSideView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mRightSideView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lockscreenshortcut/AppList$1;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    return-object v0
.end method

.method private registerSecretModeReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterSecretModeReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSecretModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public NmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "AppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NmakeList NormalActivityList[size] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public SmakeList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "AppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmakeList applist[size] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public createList(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    :cond_0
    new-instance v6, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;

    invoke-direct {v6, p0}, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    :goto_0
    iget v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v7, v0, :cond_3

    const/4 v8, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aget-object v1, v0, v7

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    const/4 v7, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    const v3, 0x7f040132

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v9, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->setResult(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v14, v14, 0x400

    iput v14, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v14, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v14, v14, 0x2000

    iput v14, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v13, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_1

    const v14, 0x7f040131

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->setContentView(I)V

    const v14, 0x7f0b0224

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mLeftSideView:Landroid/view/View;

    const v14, 0x7f0b0228

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mRightSideView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mLeftSideView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mRightSideView:Landroid/view/View;

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->updateSideViewVisibility(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v12, ""

    :try_start_0
    const-string v14, "shortcut_app_list"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    const-string v14, "num_of_shortcut"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    const-string v14, "clicked_view_index"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    const-string v14, "max_num_of_shortcut"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sput v14, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    sget v15, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    if-le v14, v15, :cond_2

    sget v14, Lcom/android/settings/lockscreenshortcut/AppList;->MAX_SHORTCUT_ICON:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    :cond_2
    const-string v7, ""

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v4, v14, :cond_3

    move v9, v5

    const/16 v14, 0x3b

    invoke-virtual {v12, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v12, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v14, 0x2f

    const/4 v15, 0x0

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aput-object v11, v14, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aput-object v2, v14, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    const v15, 0x10000020

    invoke-virtual {v14, v1, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    const-string v14, "AppList"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onCreate NappList[size] : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "personal_mode_enabled"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/lockscreenshortcut/AppList;->SmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/lockscreenshortcut/AppList;->createList(Ljava/util/List;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/lockscreenshortcut/AppList;->NappList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/lockscreenshortcut/AppList;->NmakeList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/lockscreenshortcut/AppList;->createList(Ljava/util/List;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "selected_package"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "selected_activity"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->unregisterSecretModeReceiver()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->registerSecretModeReceiver()V

    return-void
.end method
