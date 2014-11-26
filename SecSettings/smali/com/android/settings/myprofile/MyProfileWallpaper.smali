.class public Lcom/android/settings/myprofile/MyProfileWallpaper;
.super Ljava/lang/Object;
.source "MyProfileWallpaper.java"


# instance fields
.field private final DBG:Z

.field private final INVALID_ID:I

.field private final KEYGUARD_PACKAGE:Ljava/lang/String;

.field private final KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

.field private final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

.field private mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

.field private mWallpaperPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WallpaperWidget"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->DBG:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String;

    const-string v0, "keyguard_default_wallpaper_res_id"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->KEY_DEFAULT_WALLPAPER_RES_ID:Ljava/lang/String;

    const-string v0, "com.android.keyguard"

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->KEYGUARD_PACKAGE:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->INVALID_ID:I

    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setLockScreenWallpaper()V

    return-void
.end method

.method private getDefaultWallpaperResourceId()Z
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "com.android.keyguard"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    const-string v5, "WallpaperWidget"

    const-string v6, "keyguard resource is not ready"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :try_start_1
    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "keyguard_default_wallpaper_res_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_1

    const-string v5, "WallpaperWidget"

    const-string v6, "resourceId is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setDefaultWallpaper()V
    .locals 10

    new-instance v1, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    const-string v8, "//system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v8, "//system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    const/4 v7, 0x0

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v6

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    :try_start_3
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v6

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    :try_start_4
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v5, v6

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDefaultWallpaperResourceId()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "WallpaperWidget"

    const-string v9, "can\'t get a resource id from keyguard"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLockScreenWallpaper()V
    .locals 7

    invoke-static {}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isAdminWallpaper()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    :try_start_0
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading Admin wallpaper EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_wallpaper_path"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mIsMultiSIMDevice:Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->getCurrentWallpaper(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    const-string v4, "WallpaperWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiSim Device wallpaperPath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    :try_start_1
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iput-object v3, p0, Lcom/android/settings/myprofile/MyProfileWallpaper;->mLockScreenWallpaperImage:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()V

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;->setDefaultWallpaper()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method
