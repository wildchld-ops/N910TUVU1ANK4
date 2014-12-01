.class public Lcom/samsung/android/toolbox/TwToolBoxViewer;
.super Landroid/widget/LinearLayout;
.source "TwToolBoxViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mChildContainer:Landroid/widget/LinearLayout;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private final mDensity:F

.field private final mDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mEarphonesOnly:Z

.field mEarphonesOnlyObserver:Landroid/database/ContentObserver;

.field private mEarphonesPlugged:Z

.field mFloatingButton:Landroid/widget/LinearLayout;

.field mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field mPackageListObserver:Landroid/database/ContentObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSettingData:Ljava/lang/String;

.field mShowToolFloatingObserver:Landroid/database/ContentObserver;

.field mShowToolObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "toolbox"

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v2, "0;com.sec.android.app.camera/00;com.sec.android.app.sbrowser/00;com.sec.android.app.voicenote/00;com.android.contacts/00;com.samsung.android.app.memo/00"

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mSettingData:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesPlugged:Z

    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnly:Z

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mDensity:F

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V

    new-array v2, v5, [I

    const v3, 0x1010214

    aput v3, v2, v4

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x1090131

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/HorizontalScrollView;

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v2, 0x1020019

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mFloatingButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mFloatingButton:Landroid/widget/LinearLayout;

    const-string v3, "Floating Button"

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mFloatingButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxViewer;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->createPackageList([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->updateVisibility()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->reloadContentObserver()V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/android/toolbox/TwToolBoxViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnly:Z

    return p1
.end method

.method private backButtonTapEvent()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxViewer$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private createPackageList([Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v6, p1

    array-length v15, v6

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v15, :cond_5

    aget-object v18, v6, v13

    const-string v21, "/"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    array-length v0, v9

    move/from16 v21, v0

    if-lez v21, :cond_2

    const/16 v21, 0x0

    aget-object v19, v9, v21

    :goto_2
    array-length v0, v9

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    const/16 v21, 0x1

    aget-object v4, v9, v21

    :goto_3
    :try_start_0
    new-instance v14, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    if-eqz v21, :cond_0

    const-string v21, "00"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v21, 0x421c0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mDensity:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x421c0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mDensity:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v11, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, 0x0

    const/high16 v22, 0x421c0000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mDensity:F

    move/from16 v23, v0

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x10

    move/from16 v0, v21

    move-object/from16 v1, v17

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v21, Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;

    const-string v22, "TwToolBoxViewer  createPackage : "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v10

    sget-object v21, Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "There is no package : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    const-string v19, "00"

    goto/16 :goto_2

    :cond_3
    const-string v4, "00"

    goto/16 :goto_3

    :cond_4
    :try_start_1
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v8, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v21, 0x20

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v21, Lcom/samsung/android/toolbox/TwToolBoxViewer;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "There Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v7, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mChildContainer:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    add-int/lit8 v22, v7, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_6
    return-void
.end method

.method private reloadContentObserver()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnlyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string/jumbo v1, "toolbox_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "toolbox_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v1, "toolbox_earphones_only"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnlyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private updateVisibility()V
    .locals 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnly:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesPlugged:Z

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v2}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->createPackageList([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$2;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mShowToolObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$3;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mShowToolFloatingObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$4;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnlyObserver:Landroid/database/ContentObserver;

    const-string/jumbo v2, "toolbox_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "toolbox_apps"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v2, "toolbox_earphones_only"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mEarphonesOnlyObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mFloatingButton:Landroid/widget/LinearLayout;

    if-ne p1, v7, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->backButtonTapEvent()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v7, p1, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_0

    check-cast v6, Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v5, v1, v2

    const/4 v7, 0x1

    aget-object v0, v1, v7

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    if-eqz v3, :cond_0

    const-string v7, "00"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 v7, 0x4000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->backButtonTapEvent()V

    const-string v7, "com.sec.android.app.camera"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v2, 0x12c

    :cond_3
    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxViewer$6;

    invoke-direct {v7, p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxViewer;Landroid/content/Intent;)V

    int-to-long v8, v2

    invoke-virtual {p0, v7, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxViewer;->backButtonTapEvent()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxViewer;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method
