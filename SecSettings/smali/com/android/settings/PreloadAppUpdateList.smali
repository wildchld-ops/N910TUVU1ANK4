.class public Lcom/android/settings/PreloadAppUpdateList;
.super Landroid/app/ListFragment;
.source "PreloadAppUpdateList.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;,
        Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;
    }
.end annotation


# static fields
.field private static list_view:Landroid/widget/ListView;


# instance fields
.field private SavedApplist:Ljava/lang/String;

.field private allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

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

.field private mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedApplist:[Ljava/lang/String;

.field private mSavedApplist_Activity:[Ljava/lang/String;

.field private mSavedApplist_Package:[Ljava/lang/String;

.field private mSavedNums:I

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

.field private setAllOn:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput v1, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    iput v1, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    return-void
.end method

.method private SavedApplist()V
    .locals 6

    const-string v2, ""

    const-string v1, ""

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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

    const-string v3, "PreloadAppList"

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

    iget-object v5, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

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
    const-string v3, "PreloadAppList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavedApplist mTempAppList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preload_list"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreloadAppUpdateList;)Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PreloadAppUpdateList;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/PreloadAppUpdateList;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/PreloadAppUpdateList;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/PreloadAppUpdateList;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/PreloadAppUpdateList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public CheckedAll()I
    .locals 4

    const-string v2, ""

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

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

    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    iget-object v3, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b04a4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setClickable(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preload_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    const-string v1, "PreloadAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SavedApplist :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    array-length v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    new-array v1, v1, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    if-ge v12, v1, :cond_1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v1, v1, v12

    add-int/lit8 v2, v17, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    aput-object v18, v1, v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    aput-object v8, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOADABLE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DOWNLOADABLE"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v15, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0xa0

    invoke-virtual {v1, v7, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    const/4 v12, 0x0

    :goto_1
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_3

    :try_start_0
    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v16, v0

    const-string v1, "com.sec.ENABLE_DOWNLOADABLE_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :catch_0
    move-exception v11

    const-string v1, "PreloadAppList"

    const-string v2, "Can not read metadata"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    new-instance v9, Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/PreloadAppUpdateList$AlphaComparator;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_7

    const/4 v10, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedNums:I

    if-ge v13, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Package:[Ljava/lang/String;

    aget-object v2, v1, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mSavedApplist_Activity:[Ljava/lang/String;

    aget-object v2, v1, v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    if-nez v10, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->CheckedAll()I

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    :goto_6
    new-instance v1, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0401f8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;-><init>(Lcom/android/settings/PreloadAppUpdateList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/PreloadAppUpdateList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    sput-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    sget-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v1, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/PreloadAppUpdateList$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$2;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/PreloadAppUpdateList;->setHasOptionsMenu(Z)V

    return-void

    :cond_9
    const/4 v1, 0x1

    move/from16 v0, v19

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/PreloadAppUpdateList;->allCheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v2, Lcom/android/settings/PreloadAppUpdateList$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$1;-><init>(Lcom/android/settings/PreloadAppUpdateList;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 4

    iget v2, p0, Lcom/android/settings/PreloadAppUpdateList;->setAllOn:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/settings/PreloadAppUpdateList;->list_view:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mTempCheckedApplist:Ljava/util/LinkedHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppListAdapter:Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/PreloadAppUpdateList$AppListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f120007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/settings/PreloadAppUpdateList;->mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0b013c

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0401e5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/PreloadAppUpdateList;->SavedApplist()V

    invoke-virtual {p0}, Lcom/android/settings/PreloadAppUpdateList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b013b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    return-void
.end method
