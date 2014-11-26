.class public Lcom/android/settings/toolbox/ToolboxMenu;
.super Landroid/app/Fragment;
.source "ToolboxMenu.java"


# static fields
.field static ACTION_MEMO:Ljava/lang/String;

.field static FLASH_ANNOTATE:Ljava/lang/String;

.field static MAGNIFIER:Ljava/lang/String;

.field static PHOTO_EDITOR:Ljava/lang/String;

.field static QUICK_CONNECT:Ljava/lang/String;

.field static SCRAPBOOK:Ljava/lang/String;

.field static S_FINDER:Ljava/lang/String;

.field static TOUCH_LIGHT:Ljava/lang/String;

.field private static isFromQuickPanel:Z

.field private static mContext:Landroid/content/Context;


# instance fields
.field private KIDS:Ljava/lang/String;

.field private KNOX:Ljava/lang/String;

.field private TYPE_ALL:I

.field private applicationLayout:Landroid/widget/RelativeLayout;

.field private editBtn:Landroid/widget/Button;

.field private frameLayout:Landroid/widget/FrameLayout;

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

.field private mAppListIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentOrientation:I

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

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

.field private mToolboxIcon:Landroid/widget/ImageView;

.field private mToolboxListLayout:Landroid/widget/LinearLayout;

.field private final mToolboxObserver:Landroid/database/ContentObserver;

.field private mToolboxSettingsView:Landroid/view/View;

.field private mv:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.samsung.android.app.galaxyfinder"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->S_FINDER:Ljava/lang/String;

    const-string v0, "com.samsung.android.sconnect"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->QUICK_CONNECT:Ljava/lang/String;

    const-string v0, "com.android.settings.accessibilitywidget.AccessibilityWidgetProviderAssistiveLight"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->TOUCH_LIGHT:Ljava/lang/String;

    const-string v0, "com.samsung.android.app.pinboard"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->SCRAPBOOK:Ljava/lang/String;

    const-string v0, "com.samsung.android.widgetapp.actionmemo"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->ACTION_MEMO:Ljava/lang/String;

    const-string v0, "com.sec.android.mimage.photoretouching"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->PHOTO_EDITOR:Ljava/lang/String;

    const-string v0, "com.sec.spen.flashannotate"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->FLASH_ANNOTATE:Ljava/lang/String;

    const-string v0, "com.sec.android.app.magnifier"

    sput-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->MAGNIFIER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v0, "com.sec.android.app.kidshome"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KIDS:Ljava/lang/String;

    const-string v0, "sec.knox"

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KNOX:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/settings/toolbox/ToolboxMenu$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/toolbox/ToolboxMenu$1;-><init>(Lcom/android/settings/toolbox/ToolboxMenu;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/toolbox/ToolboxMenu$2;

    invoke-direct {v0, p0}, Lcom/android/settings/toolbox/ToolboxMenu$2;-><init>(Lcom/android/settings/toolbox/ToolboxMenu;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/toolbox/ToolboxMenu;)I
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxMenu;

    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/widget/Button;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxMenu;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/toolbox/ToolboxMenu;)Landroid/app/Fragment;
    .locals 1
    .param p0    # Lcom/android/settings/toolbox/ToolboxMenu;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method private loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1    # I
    .param p2    # Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iget-object v7, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    :try_start_0
    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    iget v9, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_0
    :goto_1
    return-object v5

    :cond_1
    move-object v0, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v1, p1, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v3}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v8, "ToolboxMenu"

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

    const-string v8, "ToolboxMenu"

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

    const-string v8, "ToolboxMenu"

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
.end method

.method private loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1    # Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    sget-object v5, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

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

    sget-object v5, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

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

.method private restoreAllAppsIconInfo()V
    .locals 9

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mPm:Landroid/content/pm/PackageManager;

    const v4, 0x10000020

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SETTINGS_DEFAULT_TOOLBOX"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->S_FINDER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v4, "S Finder/index0"

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0206c3

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->QUICK_CONNECT:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v4, "Quick connect/index1"

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0206c2

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v4, "Torch/index2"

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0206c6

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->PHOTO_EDITOR:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->FLASH_ANNOTATE:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v4, "Screen write/index3"

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0206c5

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->MAGNIFIER:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    const-string v4, "Magnifier/index4"

    iget-object v5, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0206c0

    iget-object v8, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    invoke-virtual {v8, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;->getDpi(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/lockscreenshortcut/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KIDS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->KNOX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v6

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAllAppsList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v6, v3}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(ILandroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public addBlankView(Landroid/widget/LinearLayout;I)V
    .locals 5
    .param p1    # Landroid/widget/LinearLayout;
    .param p2    # I

    const/4 v4, -0x2

    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0252

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0253

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mv:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public createUI()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    const v6, 0x7f04024f

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f0b04dc

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mEditButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f0b05a3

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "toolbox_apps"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    const/4 v6, 0x5

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxSettingsView:Landroid/view/View;

    const v7, 0x7f0b05a5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    const v6, 0x7f040250

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0080

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    array-length v6, v3

    if-ge v1, v6, :cond_1

    aget-object v6, v3, v1

    invoke-direct {p0, v6}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6, v1}, Lcom/android/settings/toolbox/ToolboxMenu;->addBlankView(Landroid/widget/LinearLayout;I)V

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxListLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    invoke-virtual {p0, v6}, Lcom/android/settings/toolbox/ToolboxMenu;->refreshUI(I)V

    :cond_3
    return-void
.end method

.method initToolboxswitchBtn()V
    .locals 8

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Landroid/preference/PreferenceActivity;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f004c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_1
    new-instance v3, Lcom/android/settings/toolbox/ToolboxEnabler;

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v3, v0, v4}, Lcom/android/settings/toolbox/ToolboxEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v3, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sput-object v1, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    iput-object p0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mFragment:Landroid/app/Fragment;

    new-instance v1, Lcom/android/settings/lockscreenshortcut/IconResizer;

    sget-object v2, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/lockscreenshortcut/IconResizer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconResizer:Lcom/android/settings/lockscreenshortcut/IconResizer;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mIconCache:Ljava/util/HashMap;

    invoke-direct {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->restoreAllAppsIconInfo()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    sget-boolean v1, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "direct_quickpanel"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    sget-object v1, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "toolbox_onoff"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->initToolboxswitchBtn()V

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mCurrentOrientation:I

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->frameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    sget-boolean v0, Lcom/android/settings/toolbox/ToolboxMenu;->isFromQuickPanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "direct_quickpanel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v0}, Lcom/android/settings/toolbox/ToolboxEnabler;->pause()V

    :cond_0
    sget-object v0, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_apps"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_2

    array-length v4, v2

    if-ge v1, v4, :cond_1

    aget-object v4, v2, v1

    invoke-direct {p0, v4}, Lcom/android/settings/toolbox/ToolboxMenu;->loadAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxEnabler:Lcom/android/settings/toolbox/ToolboxEnabler;

    invoke-virtual {v4}, Lcom/android/settings/toolbox/ToolboxEnabler;->resume()V

    :cond_3
    sget-object v4, Lcom/android/settings/toolbox/ToolboxMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "toolbox_onoff"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mToolboxObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/settings/toolbox/ToolboxMenu;->createUI()V

    return-void
.end method

.method public refreshUI(I)V
    .locals 6
    .param p1    # I

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->TYPE_ALL:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "toolbox_onoff"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    move v0, v3

    :goto_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x3f19999a

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->editBtn:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->applicationLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/toolbox/ToolboxMenu;->mAppListIcon:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
