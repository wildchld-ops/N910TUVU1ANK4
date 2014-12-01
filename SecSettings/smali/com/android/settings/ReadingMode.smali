.class public Lcom/android/settings/ReadingMode;
.super Landroid/app/ListFragment;
.source "ReadingMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ReadingMode$SettingsObserver;,
        Lcom/android/settings/ReadingMode$AlphaComparator;,
        Lcom/android/settings/ReadingMode$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_READINGMODE:I

.field private static list_view:Landroid/widget/ListView;

.field private static sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

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

.field private mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

.field private mExtraList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedAppListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, Lcom/android/settings/ReadingMode;->MAX_READINGMODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    return-void
.end method

.method private UpdateSavedReadingMode()V
    .locals 24

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "reading_mode_app_list"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v21, "ReadingMode"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "UpdateSavedReadingMode SavedApplist :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, ";"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v0, v15

    move/from16 v18, v0

    :cond_0
    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v11, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    const/16 v19, 0x0

    aget-object v21, v15, v11

    const/16 v22, 0x2f

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->indexOf(II)I

    move-result v19

    aget-object v21, v15, v11

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aget-object v21, v15, v11

    add-int/lit8 v22, v19, 0x1

    aget-object v23, v15, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v20, v17, v11

    aput-object v8, v16, v11

    const-string v21, ""

    aput-object v21, v14, v11

    const-string v21, ""

    aput-object v21, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v21, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    const/16 v22, 0x80

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_4

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_5

    aget-object v22, v17, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    aget-object v22, v16, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mAppList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    :cond_5
    if-nez v6, :cond_6

    aget-object v21, v17, v11

    aput-object v21, v14, v5

    aget-object v21, v16, v11

    aput-object v21, v13, v5

    add-int/lit8 v5, v5, 0x1

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    :cond_8
    const/4 v11, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    aget-object v21, v14, v11

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move/from16 v18, v11

    :cond_9
    const/4 v11, 0x0

    :goto_6
    move/from16 v0, v18

    if-ge v11, v0, :cond_d

    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v12, v0, :cond_c

    aget-object v22, v14, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mExtraList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_d
    new-instance v9, Lcom/android/settings/ReadingMode$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/ReadingMode$AlphaComparator;-><init>(Lcom/android/settings/ReadingMode;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ReadingMode;ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/ReadingMode;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ReadingMode;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ReadingMode;)Lcom/android/settings/ReadingMode$AppListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 12

    new-instance v7, Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    iget-object v8, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :try_start_0
    iget-object v9, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

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
    iget-object v9, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

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

    const-string v9, "ReadingMode"

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

    const-string v9, "ReadingMode"

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

    const-string v9, "ReadingMode"

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
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    const/16 v12, 0x15

    const/16 v11, 0x10

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v2, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v9, v2

    check-cast v9, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4, v4, v8, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v3, v5, v5, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    new-instance v0, Lcom/android/settings/ReadingMode$AppListAdapter;

    const v3, 0x7f0401f9

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ReadingMode$AppListAdapter;-><init>(Lcom/android/settings/ReadingMode;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v10, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void

    :cond_1
    const-string v0, "layout_inflater"

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v0, 0x7f040065

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    instance-of v0, v2, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v9, v2

    check-cast v9, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v1, v5, v5, v12}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v6, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v0, 0x7f0b013e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "ReadingMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged desiredState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "e_reading_display_mode"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f091857

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020725

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0401f7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v7, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-string v1, "com.android.settings.ReadingModeSettings"

    const v3, 0x7f091857

    const-string v4, ""

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/ReadingMode$SettingsObserver;->stopObserving()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "e_reading_display_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/settings/ReadingMode$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v5, v6}, Lcom/android/settings/ReadingMode$SettingsObserver;-><init>(Lcom/android/settings/ReadingMode;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$SettingsObserver;->startObserving()V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    const-string v3, "ReadingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() AdapterNum.num :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    const-string v5, "ReadingMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() mAppListAdapter.packageName [ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v5, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v2, v4

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v4, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method
