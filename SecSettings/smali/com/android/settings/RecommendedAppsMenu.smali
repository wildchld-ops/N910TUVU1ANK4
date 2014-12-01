.class public Lcom/android/settings/RecommendedAppsMenu;
.super Landroid/app/Fragment;
.source "RecommendedAppsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static isFromQuickPanel:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private editDockingsBtn:Landroid/widget/Button;

.field private editEarphonesBtn:Landroid/widget/Button;

.field private editRoamingBtn:Landroid/widget/Button;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private inflater:Landroid/view/LayoutInflater;

.field private isTablet:Z

.field private layoutMostUsedDocking:Landroid/widget/LinearLayout;

.field private layoutMostUsedRoaming:Landroid/widget/LinearLayout;

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAllAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppNameCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

.field private mDockingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDockingLayout:Landroid/widget/LinearLayout;

.field private mEarphonesIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mEarphonesLayout:Landroid/widget/LinearLayout;

.field private mEditButtonListener:Landroid/view/View$OnClickListener;

.field private mFragment:Landroid/app/Fragment;

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

.field private mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

.field private mIconSize:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

.field private final mRecommendedAppObserver:Landroid/database/ContentObserver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRoamingIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mRoamingLayout:Landroid/widget/LinearLayout;

.field private mv:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    new-instance v0, Lcom/android/settings/RecommendedAppsMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RecommendedAppsMenu$1;-><init>(Lcom/android/settings/RecommendedAppsMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/RecommendedAppsMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RecommendedAppsMenu$2;-><init>(Lcom/android/settings/RecommendedAppsMenu;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RecommendedAppsMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/RecommendedAppsMenu;)Landroid/app/Fragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/RecommendedAppsMenu;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11

    const/4 v5, 0x0

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    iget v9, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "RecommendedAppsMenu"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadAppIcon : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_1
.end method

.method private loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v2, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v5, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0251

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v5, 0x1

    invoke-static {v0, v1, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v4

    :cond_1
    move-object v5, v2

    goto :goto_0
.end method

.method private loadAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private refreshUI()V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    iget-boolean v1, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x3f19999a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private refreshUIForSwitch()V
    .locals 8

    const/high16 v7, 0x3f800000

    const v6, 0x3f19999a

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "recommended_apps_setting"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setAlpha(F)V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method private restoreAllAppsIconInfo()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    const v3, 0x10000020

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v5, v2}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    if-eqz p3, :cond_0

    const v4, 0x7f0b04dd

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    :cond_0
    const v4, 0x7f04012f

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0250

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v6, v6, v4, v6}, Landroid/view/View;->setPadding(IIII)V

    const v4, 0x7f0b02fb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    aget-object v4, p1, v3

    invoke-direct {p0, v4}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addBlankView(Landroid/widget/LinearLayout;I)V
    .locals 5

    const/4 v4, -0x2

    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createUI()V
    .locals 30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const-string v27, "layout_inflater"

    invoke-virtual/range {v26 .. v27}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1

    const v16, 0x7f0401fc

    :goto_0
    const/16 v26, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    const v26, 0x7f0b04dc

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editEarphonesBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v26, 0x7f0b04e1

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v26, 0x7f0b04e6

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/Button;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    const v26, 0x7f0b04e9

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v26, 0x7f0b04eb

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v26, 0x7f0b04e8

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    const v26, 0x7f0b04ea

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v27, v0

    sget-object v26, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "recommended_apps_automatically_dockings"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/16 v26, 0x1

    :goto_1
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v27, v0

    sget-object v26, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v28, "recommended_apps_automatically_roaming"

    const/16 v29, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v26

    const/16 v28, 0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    const/16 v26, 0x1

    :goto_2
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_earphones"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13, v15}, Lcom/android/settings/RecommendedAppsMenu;->showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V

    const v26, 0x7f0b04de

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_dockings"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_6

    const v26, 0x7f0b04e2

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    const v26, 0x7f04012f

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f0250

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    const v26, 0x7f0b02fb

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_5

    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_1
    const v16, 0x7f0401fb

    goto/16 :goto_0

    :cond_2
    const/16 v26, 0x0

    goto/16 :goto_1

    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_2

    :cond_4
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f0c0000

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_7

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_8

    :cond_7
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    const v26, 0x7f0b04e3

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_roaming"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_a

    const v26, 0x7f0b04e7

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    const v26, 0x7f04012f

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f0250

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    const v26, 0x7f0b02fb

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    aget-object v26, v22, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_9

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    const/16 v26, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    move/from16 v26, v0

    if-eqz v26, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    :goto_9
    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_earphones"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v26, ";"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/4 v12, 0x0

    :goto_a
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_f

    const v26, 0x7f0b04dd

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    const v26, 0x7f04012f

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v26, 0x7f0b02fb

    move/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_e

    aget-object v26, v21, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v26, v21, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    if-nez v6, :cond_c

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    :cond_c
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_d

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v10, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_c

    :cond_f
    const v26, 0x7f0b04de

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_dockings"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/4 v12, 0x0

    :goto_d
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_13

    const v26, 0x7f0b04e2

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    const v26, 0x7f04012f

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v26, 0x7f0b02fb

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_12

    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aget-object v26, v20, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    if-nez v6, :cond_10

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    :cond_10
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_11

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_12
    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const/high16 v27, 0x7f0c0000

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_14

    const-string v26, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_DOCK"

    invoke-static/range {v26 .. v26}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_15

    :cond_14
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editDockingsBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mDockingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_15
    const v26, 0x7f0b04e3

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "recommended_apps_list_roaming"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/4 v12, 0x0

    :goto_10
    const/16 v26, 0x5

    move/from16 v0, v26

    if-ge v12, v0, :cond_18

    const v26, 0x7f0b04e7

    move/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    const v26, 0x7f04012f

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v13, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    const v26, 0x7f0b02fb

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_17

    aget-object v26, v22, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v12}, Lcom/android/settings/RecommendedAppsMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    if-nez v6, :cond_16

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_16
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_17
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_12

    :cond_18
    const/16 v26, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->editRoamingBtn:Landroid/widget/Button;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingLayout:Landroid/widget/LinearLayout;

    move-object/from16 v26, v0

    const/16 v27, 0x8

    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_8

    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUIForSwitch()V

    goto/16 :goto_9
.end method

.method initRecommendedAppswitchBtn()V
    .locals 11

    const v10, 0x800015

    const/4 v9, 0x0

    const/16 v7, 0x10

    const/4 v8, -0x2

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v5, v1, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f004c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v3, v9}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v7, v8, v8, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    :cond_0
    :goto_0
    new-instance v5, Lcom/android/settings/RecommendedAppEnabler;

    iget-object v6, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v5, v1, v6}, Lcom/android/settings/RecommendedAppEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    return-void

    :cond_1
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v5, 0x7f040065

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    instance-of v5, v1, Landroid/preference/PreferenceActivity;

    if-eqz v5, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v8, v8, v10}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v0, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const v5, 0x7f0b013e

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedDocking:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->refreshUI()V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->layoutMostUsedRoaming:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_6

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_5

    :goto_4
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_dockings"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedDocking:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_7

    :goto_5
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "recommended_apps_automatically_roaming"

    iget-object v4, p0, Lcom/android/settings/RecommendedAppsMenu;->checkBoxMostUsedRoaming:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    if-ne v4, v1, :cond_9

    :goto_6
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sput-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/android/settings/RecommendedAppsMenu;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0251

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconSize:I

    new-instance v3, Lcom/android/settings/lockscreenshortcut/IconResizer;

    sget-object v4, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mAppNameCache:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/settings/RecommendedAppsMenu;->restoreAllAppsIconInfo()V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_quickpanel"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    sget-boolean v3, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_quickpanel"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    sget-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-boolean v0, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    :goto_0
    sget-object v3, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/settings/RecommendedAppsMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "recommended_apps_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->initRecommendedAppswitchBtn()V

    iget-object v2, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mCurrentOrientation:I

    iput-object p1, p0, Lcom/android/settings/RecommendedAppsMenu;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    sget-boolean v0, Lcom/android/settings/RecommendedAppsMenu;->isFromQuickPanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_quickpanel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-boolean v0, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    invoke-virtual {v0}, Lcom/android/settings/RecommendedAppEnabler;->pause()V

    :cond_1
    sget-object v0, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 14

    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v8, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_earphones"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_0

    array-length v8, v3

    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->inflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, v3, v8, v12}, Lcom/android/settings/RecommendedAppsMenu;->showEarPhoneDrawable([Ljava/lang/String;Landroid/view/LayoutInflater;Landroid/view/View;)V

    :cond_0
    iget-boolean v8, p0, Lcom/android/settings/RecommendedAppsMenu;->isTablet:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    :cond_1
    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mActionBarSwitch:Landroid/widget/Switch;

    sget-object v8, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v12, "recommended_apps_setting"

    invoke-static {v8, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_d

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_2
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppEnabler:Lcom/android/settings/RecommendedAppEnabler;

    invoke-virtual {v8}, Lcom/android/settings/RecommendedAppEnabler;->resume()V

    :cond_3
    sget-object v8, Lcom/android/settings/RecommendedAppsMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v10, "recommended_apps_setting"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/RecommendedAppsMenu;->mRecommendedAppObserver:Landroid/database/ContentObserver;

    invoke-virtual {v8, v10, v9, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->createUI()V

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_earphones"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ";"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v13, :cond_7

    array-length v8, v3

    if-ge v1, v8, :cond_6

    aget-object v8, v3, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mEarphonesIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_dockings"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ";"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v13, :cond_a

    array-length v8, v2

    if-ge v1, v8, :cond_9

    aget-object v8, v2, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_9
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mDockingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/RecommendedAppsMenu;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "recommended_apps_list_roaming"

    invoke-static {v8, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v13, :cond_0

    array-length v8, v4

    if-ge v1, v8, :cond_c

    aget-object v8, v4, v1

    invoke-direct {p0, v8}, Lcom/android/settings/RecommendedAppsMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_c
    iget-object v8, p0, Lcom/android/settings/RecommendedAppsMenu;->mRoamingIcon:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_d
    move v8, v10

    goto/16 :goto_0
.end method
