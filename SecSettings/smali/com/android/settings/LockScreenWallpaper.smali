.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

.field private mDirectWallpaper:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    iput-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method addSlidingGalleryForLockwallpaper()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.slidinggallery.lockscreen"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_wallpaper"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v3, :cond_1

    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    :cond_1
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    iput v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIconSize:I

    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromEasySettings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cb7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x109011f

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x10203b4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v4, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v4, p0}, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090cb6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v8, 0x1

    const-string v6, "com.sec.android.gallery3d"

    iget-object v7, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-boolean v6, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v6, :cond_0

    const-string v6, "com.sec.android.gallery3d"

    const-string v7, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v6, "com.sec.android.gallery3d"

    const-string v7, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v6, "com.android.wallpaper.livepicker"

    iget-object v7, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v3, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.android.wallpaper.livepicker"

    const-string v8, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    const-string v6, "com.samsung.android.service.travel"

    iget-object v7, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.service.travel"

    const-string v8, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_3
    const-string v6, "com.samsung.android.service.coverlock"

    iget-object v7, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.android.service.coverlock"

    const-string v8, "com.samsung.android.coverlock.CoverLockWallActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    const-string v6, "com.samsung.slidinggallery"

    iget-object v7, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.samsung.slidinggallery"

    const-string v8, "com.samsung.slidinggallery.SlideshowActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_5
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-boolean v6, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v6, :cond_6

    const-string v6, "SET_WALLPAPER_MODE"

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.wallpaperchooser"

    const-string v8, "com.sec.android.app.wallpaperchooser.WallpaperPickerActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_6
    const-string v6, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.app.wallpaperchooser"

    const-string v8, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x10000

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v4, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.travel"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_0

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.service.coverlock"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_1

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rListLock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->addSlidingGalleryForLockwallpaper()V

    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    :goto_0
    new-instance v2, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v4, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v4, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v4, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->resizeGrid()V

    return-void

    :cond_3
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    goto :goto_0
.end method

.method resizeGrid()V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mAdapter:Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v2}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0045

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    return-void
.end method
