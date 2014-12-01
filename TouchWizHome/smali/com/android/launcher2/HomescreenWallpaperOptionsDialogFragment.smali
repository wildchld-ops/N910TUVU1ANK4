.class public Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "HomescreenWallpaperOptionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$CropImage;,
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$CropImageCmd;,
        Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$ActivityResultID;
    }
.end annotation


# static fields
.field public static final BOTH_POSITION:I = 0x2

.field public static final HOMESCREEN_POSITION:I = 0x0

.field public static final IMAGE_PICK:I = 0x5

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field public static final KEYGUARD_CATEGORY_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardCategoriesEntryActivity"

.field public static final KEYGUARD_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator"

.field public static final KEYGUARD_PHOTO_SLIDE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.keyguardwallpaperupdator.ui.KeyguardPhotoSlideMainActivity"

.field public static final LIVE_WALLPAPER_CLASS_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker.LiveWallpaperActivity"

.field public static final LIVE_WALLPAPER_PACKAGE_NAME:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field public static final LIVE_WEATHER_CLASS_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.liveweather.MainActivity"

.field public static final LIVE_WEATHER_PACKAGE_NAME:Ljava/lang/String; = "com.yahoo.mobile.client.android.liveweather"

.field public static final LOCKSCREEN_POSITION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HomescreenWallpaperOptionsDialogFragment"

.field protected static currentMode:I = 0x0

.field public static isHomeScreenWallpaperDialogVisible:Z = false

.field private static final sFragmentTag:Ljava/lang/String; = "HomescreenWallpaperOptionsDialogFragment"


# instance fields
.field context:Landroid/content/Context;

.field private isResultSuccess:Z

.field private ivKeyword:Landroid/widget/ImageView;

.field private ivLocationWeather:Landroid/widget/ImageView;

.field private ivPhotoSlide:Landroid/widget/ImageView;

.field private llBottomContainer:Landroid/widget/LinearLayout;

.field private llDefaultImage:Landroid/widget/LinearLayout;

.field private llKeyword:Landroid/widget/LinearLayout;

.field private llLiveWallpaper:Landroid/widget/LinearLayout;

.field private llLocationWeather:Landroid/widget/LinearLayout;

.field private llMoreImage:Landroid/widget/LinearLayout;

.field private llPhotoSlide:Landroid/widget/LinearLayout;

.field private mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    sput v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->launchTargetApp(Ljava/lang/String;)V

    return-void
.end method

.method static createAndShow(Landroid/app/FragmentManager;I)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isActive(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput p1, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    new-instance v0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;

    invoke-direct {v0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static dismiss(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v1, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method private finishHelpWallpaperGuide()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V

    iget-object v0, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-boolean v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->finishWallpaperGuide(Z)V

    :cond_0
    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getDisplayWidth(Landroid/content/Context;)I
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method static isActive(Landroid/app/FragmentManager;)Z
    .locals 1

    const-string v0, "HomescreenWallpaperOptionsDialogFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchTargetApp(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private makeIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 13

    const/16 v8, 0x400

    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-nez v10, :cond_1

    const/16 v8, 0x400

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getWallpaperDesiredMinimumWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getWallpaperDesiredMinimumHeight()I

    move-result v2

    if-le v9, v2, :cond_3

    move v3, v9

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v10, 0x402

    if-ne v8, v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getDisplayWidth(Landroid/content/Context;)I

    move-result v10

    int-to-float v6, v10

    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getDisplayHeight(Landroid/content/Context;)I

    move-result v10

    int-to-float v7, v10

    :goto_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v10, "com.sec.android.gallery3d"

    const-string v11, "com.sec.android.gallery3d.app.CropImage"

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const/16 v10, 0x400

    if-ne v8, v10, :cond_5

    const-string v10, "com.android.camera.action.CROP"

    :goto_3
    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "image/*"

    invoke-virtual {v10, p1, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputX"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "outputY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectX"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "aspectY"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightX"

    invoke-virtual {v10, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "spotlightY"

    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "scale"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v10

    const-string v11, "noFaceDetection"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-wallpaper"

    const/16 v10, 0x400

    if-ne v8, v10, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-lockscreen"

    const/16 v10, 0x401

    if-ne v8, v10, :cond_7

    const/4 v10, 0x1

    :goto_5
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v11

    const-string v12, "set-as-bothscreen"

    const/16 v10, 0x402

    if-ne v8, v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    invoke-virtual {v11, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    return-object v5

    :cond_1
    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/16 v8, 0x401

    goto/16 :goto_0

    :cond_2
    sget v10, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    const/16 v8, 0x402

    goto/16 :goto_0

    :cond_3
    move v3, v2

    goto/16 :goto_1

    :cond_4
    iget-object v10, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v10, v4, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v6, v10, v11

    iget v10, v4, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    int-to-float v11, v3

    div-float v7, v10, v11

    goto/16 :goto_2

    :cond_5
    const-string v10, "com.sed.android.gallery3d.CROP_SEC_ONLY"

    goto/16 :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const v7, 0x7f0f0011

    const/16 v6, 0x403

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->makeIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v3, 0x403

    :try_start_0
    invoke-virtual {p0, v1, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    invoke-static {v3, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "HomescreenWallpaperOptionsDialogFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launcher does not have the permission to launch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    if-ne p2, v4, :cond_2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isResultSuccess:Z

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    const/4 v9, 0x4

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->context:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher2/Launcher;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f030027

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f09005f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llDefaultImage:Landroid/widget/LinearLayout;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llMoreImage:Landroid/widget/LinearLayout;

    const v4, 0x7f090065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    const v4, 0x7f090068

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    const v4, 0x7f09006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    const v4, 0x7f09006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    const v4, 0x7f09006b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    const v4, 0x7f090069

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivKeyword:Landroid/widget/ImageView;

    const v4, 0x7f09006d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivLocationWeather:Landroid/widget/ImageView;

    const v4, 0x7f090070

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivPhotoSlide:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivKeyword:Landroid/widget/ImageView;

    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivLocationWeather:Landroid/widget/ImageView;

    const-string v5, "com.yahoo.mobile.client.android.liveweather"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->ivPhotoSlide:Landroid/widget/ImageView;

    const-string v5, "com.samsung.android.keyguardwallpaperupdator"

    invoke-direct {p0, v5}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const v4, 0x7f0f00a8

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llDefaultImage:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$1;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llMoreImage:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$2;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$2;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$3;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$4;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$4;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$5;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$6;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment$6;-><init>(Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sput-boolean v7, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    return-object v2

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llKeyword:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLiveWallpaper:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llLocationWeather:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llPhotoSlide:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->llBottomContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget v4, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->currentMode:I

    if-ne v4, v7, :cond_2

    const v4, 0x7f0f00aa

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const v4, 0x7f0f00a4

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->isHomeScreenWallpaperDialogVisible:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-direct {p0}, Lcom/android/launcher2/HomescreenWallpaperOptionsDialogFragment;->finishHelpWallpaperGuide()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method
