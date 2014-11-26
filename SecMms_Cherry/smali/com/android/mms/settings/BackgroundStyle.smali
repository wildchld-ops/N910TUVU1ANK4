.class public Lcom/android/mms/settings/BackgroundStyle;
.super Lcom/android/mms/settings/DisplayStyleActivity;
.source "BackgroundStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;
    }
.end annotation


# static fields
.field public static final ADD_FESTIVAL_IMAGE:I = 0x2

.field public static final ADD_IMAGE:I = 0x0

.field private static DEVICE_SCREEN_HEIGHT_SIZE:I = 0x0

.field private static DEVICE_SCREEN_WIDTH_SIZE:I = 0x0

.field private static final NEW_PHOTO_DIR_PATH:Ljava/lang/String;

.field private static final PHOTO_DATE_FORMAT:Ljava/lang/String; = "\'IMG\'_yyyyMMdd_HHmmss"

.field private static final REQUEST_CODE_PHOTO_PICKED_WITH_DATA:I = 0x3ea

.field private static final REQUEST_CODE_PICK_FESTIVAL:I = 0xc

.field private static final REQUEST_CODE_PICK_PICTURE:I = 0xa

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Mms/BackgroundStyle"

.field public static final TAKE_PICTURE:I = 0x1

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private backKeyRepeatCount:I

.field private mBackgroundDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageOutputUri:Landroid/net/Uri;

.field private mIsStartFromNonCustom:Z

.field private mMenuSave:Landroid/view/MenuItem;

.field private mSaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/BackgroundStyle;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    const/16 v0, 0x320

    sput v0, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    const/16 v0, 0x1e0

    sput v0, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/settings/BackgroundStyle;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/mms/settings/DisplayStyleActivity;-><init>()V

    iput-object v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mImageOutputUri:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    iput v0, p0, Lcom/android/mms/settings/BackgroundStyle;->backKeyRepeatCount:I

    iput-boolean v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    iput-boolean v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mSaved:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/BackgroundStyle;ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;
    .param p1    # I
    .param p2    # Landroid/widget/AdapterView;
    .param p3    # Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/settings/BackgroundStyle;->setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/settings/BackgroundStyle;)Landroid/view/MenuItem;
    .locals 1
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mMenuSave:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/settings/BackgroundStyle;)Landroid/app/AlertDialog;
    .locals 1
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/settings/BackgroundStyle;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;
    .param p1    # Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/settings/BackgroundStyle;I)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/settings/BackgroundStyle;->startActivityforBackround(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/settings/BackgroundStyle;)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/settings/BackgroundStyle;I)V
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/mms/settings/BackgroundStyle;->attachAppinfo(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/settings/BackgroundStyle;)I
    .locals 1
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;

    iget v0, p0, Lcom/android/mms/settings/BackgroundStyle;->backKeyRepeatCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/settings/BackgroundStyle;I)I
    .locals 0
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/settings/BackgroundStyle;->backKeyRepeatCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/settings/BackgroundStyle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/mms/settings/BackgroundStyle;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;II)V
    .locals 3
    .param p0    # Landroid/content/Intent;
    .param p1    # Landroid/net/Uri;
    .param p2    # I
    .param p3    # I

    const/4 v2, 0x1

    const-string v0, "crop"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scale"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "scaleUpIfNeeded"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputX"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "outputY"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "output"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method private attachAppinfo(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v2, "package"

    const-string v3, "com.sec.android.gallery3d"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v2, "package"

    const-string v3, "com.sec.android.app.camera"

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doCropPhoto()V
    .locals 9

    :try_start_0
    sget-object v3, Lcom/android/mms/settings/BackgroundStyle;->source_origin:Ljava/lang/String;

    const-string v0, "/mnt/sdcard/message_background_image.jpg"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    const-string v4, "/mnt/sdcard/message_background_image.jpg"

    invoke-direct {p0, v3, v4}, Lcom/android/mms/settings/BackgroundStyle;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v4, "Mms/BackgroundStyle"

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static generateTempPhotoFileName()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageBackground-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    sget v4, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    invoke-static {v2, v0, v3, v4}, Lcom/android/mms/settings/BackgroundStyle;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;II)V

    return-object v2
.end method

.method public static pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/mms/settings/BackgroundStyle;->NEW_PHOTO_DIR_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private refreshGridview()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->updateGridViewLayout()V

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    goto :goto_0
.end method

.method private refreshLayout()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/settings/DisplayStyleActivity;->refreshLayout(I)V

    iget-boolean v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->setGalleryData()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusableInTouchMode(Z)V

    goto :goto_0
.end method

.method private saveBackgoundStyle(I)Z
    .locals 6
    .param p1    # I

    const/4 v2, 0x0

    const/4 v0, 0x1

    sget-object v3, Lcom/android/mms/settings/BackgroundStyle;->mBGImageArray:[I

    invoke-static {p1, v3}, Lcom/android/mms/ui/MessageUtils;->isIndexValid(I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/android/mms/settings/BackgroundStyle;->mNewFestivalItemIdx:I

    if-ne p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v3, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    if-ne p1, v3, :cond_2

    const-string v3, "message_background_image.jpg"

    const-string v4, "/mnt/sdcard/message_background_image.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/settings/BackgroundStyle;->saveBackgroundStyleIndex(I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private saveBackgroundStyleIndex(I)V
    .locals 4
    .param p1    # I

    const-string v1, "Mms/BackgroundStyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveBackgroundStyle index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    const-string v1, "Mms/BackgroundStyle"

    const-string v2, "saveBackgroundStyle index is wrong"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    :cond_0
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_key_background_color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalEffectJpn()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    const-string v1, "Mms/BackgroundStyle"

    const-string v2, "saveBackgroundStyle index is wrong"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->FESTIVAL_JPN_CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    const-string v1, "Mms/BackgroundStyle"

    const-string v2, "saveBackgroundStyle index is wrong"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/mms/settings/DisplayStyleActivity;->CUSTOM2_BG_STYLE_ID:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0
.end method

.method private setCustomThumbnail(Z)V
    .locals 11
    .param p1    # Z

    const/4 v10, 0x1

    const/16 v9, 0x64

    const-string v6, "Mms/BackgroundStyle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setCustomThumbnail isDownSizing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/data/com.android.mms/"

    const-string v8, "message_background_image.jpg"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_3

    const-string v6, "Mms/BackgroundStyle"

    const-string v7, "photo is null!!! return"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x4

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v6, 0x0

    invoke-static {v1, v6, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-lt v6, v9, :cond_4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v6, v9, :cond_7

    :cond_4
    const/16 v6, 0x64

    const/16 v7, 0x64

    const/4 v8, 0x1

    invoke-static {v4, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4}, Lcom/android/mms/settings/BackgroundStyle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object v4, v5

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Lcom/android/mms/settings/BackgroundStyle;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v6, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    const-string v6, "Mms/BackgroundStyle"

    const-string v7, "setCustomThumbnail success"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    if-lez v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4}, Lcom/android/mms/settings/BackgroundStyle;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    move-object v4, v5

    goto :goto_2

    :cond_8
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-static {v4, v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4}, Lcom/android/mms/settings/BackgroundStyle;->recycleBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x0

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-ne p1, v10, :cond_9

    iget-object v6, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    :cond_9
    invoke-direct {p0, v10}, Lcom/android/mms/settings/BackgroundStyle;->setCustomThumbnail(Z)V

    goto/16 :goto_0
.end method

.method private setGalleryData()V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    :goto_0
    new-instance v1, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/settings/BackgroundStyle$ImageAdapter;-><init>(Lcom/android/mms/settings/BackgroundStyle;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/android/mms/settings/BackgroundStyle$3;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BackgroundStyle$3;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v1, Lcom/android/mms/settings/BackgroundStyle$4;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BackgroundStyle$4;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    new-instance v1, Lcom/android/mms/settings/BackgroundStyle$5;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BackgroundStyle$5;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lcom/android/mms/settings/BackgroundStyle$6;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BackgroundStyle$6;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    goto :goto_0
.end method

.method private setImageView(ILandroid/widget/AdapterView;Landroid/view/View;)V
    .locals 6
    .param p1    # I
    .param p3    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    move-object v1, p2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    iput v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mPrevSelectedBGIndex:I

    iput p1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableBackgroundStyleWithImage()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/settings/BackgroundStyle;->showBackgroundSelectorDialog()V

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f020177

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v5, Lcom/android/mms/settings/BackgroundStyle;->mNewFestivalItemIdx:I

    if-ne v4, v5, :cond_2

    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/mms/settings/BackgroundStyle;->startActivityforBackround(I)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v5, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    if-ne v4, v5, :cond_3

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mPrevSelectedBGIndex:I

    iget v5, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setBackgroundStyle()V

    goto :goto_0

    :cond_4
    check-cast p3, Landroid/widget/ImageView;

    const v4, 0x7f0202f1

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setPrevSelectedItem()V
    .locals 3

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    iget v2, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mPrevSelectedBGIndex:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mPrevSelectedBGIndex:I

    iput v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshGridview()V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mIsLandscape:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridViewLand:Landroid/widget/GridView;

    :goto_1
    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    iget v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v2, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setBackgroundStyle()V

    goto :goto_0
.end method

.method private startActivityforBackround(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "image/*"

    const/16 v2, 0xa

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/mms/settings/BackgroundStyle;->startSelectBackgroundActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_1
    const/16 v2, 0xb

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "CONTENT_TYPE"

    const-string v4, "image/*;"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/android/mms/settings/BackgroundStyle;->startTakePictureBackgroundActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v2, 0xc

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.festival.FestivalGalleryActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startSelectBackgroundActivity(Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Intent;

    const/4 v5, 0x1

    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/BackgroundStyle;->mImageOutputUri:Landroid/net/Uri;

    const-string v2, "output"

    iget-object v3, p0, Lcom/android/mms/settings/BackgroundStyle;->mImageOutputUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v1, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    sget v0, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    const-string v2, "aspectX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "aspectY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputX"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "scale"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "noFaceDetection"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private startTakePictureBackgroundActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->generateTempPhotoFileName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/BackgroundStyle;->targetOriginFileName:Ljava/lang/String;

    sget-object v0, Lcom/android/mms/settings/BackgroundStyle;->targetOriginFileName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/settings/BackgroundStyle;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/settings/BackgroundStyle;->source_origin:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/mms/settings/BackgroundStyle;->source_origin:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mImageOutputUri:Landroid/net/Uri;

    const-string v0, "output"

    iget-object v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mImageOutputUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected getDeviceScreenSize()V
    .locals 4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    :goto_0
    sget v2, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    sget v0, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->isLandscapeBaseModel()Z

    move-result v3

    if-eqz v3, :cond_0

    sput v2, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    sput v0, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    sput v3, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_WIDTH_SIZE:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v3

    sput v3, Lcom/android/mms/settings/BackgroundStyle;->DEVICE_SCREEN_HEIGHT_SIZE:I

    goto :goto_0
.end method

.method public final makeView()V
    .locals 1

    invoke-super {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->makeView()V

    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setActionBar()V

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshLayout()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/settings/BackgroundStyle;->setCustomThumbnail(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v3, 0x0

    const-string v0, "Mms/BackgroundStyle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/mms/Log;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    if-nez p3, :cond_1

    const-string v0, "Mms/BackgroundStyle"

    const-string v1, "onActivityResult : data is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string v0, "Mms/BackgroundStyle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),fail due to resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->setPrevSelectedItem()V

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    const-string v0, "Mms/BackgroundStyle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(),requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->doCropPhoto()V

    goto :goto_1

    :sswitch_1
    const-string v0, "message_background_image.jpg"

    const-string v1, "/mnt/sdcard/message_background_image.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {v3}, Lcom/android/mms/settings/BackgroundStyle;->updateBGStyleArray(Z)V

    invoke-virtual {p0, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    invoke-direct {p0, v3}, Lcom/android/mms/settings/BackgroundStyle;->setCustomThumbnail(Z)V

    sget v0, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    iput v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshGridview()V

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFestivalUX4Chn()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "message_background_image.jpg"

    const-string v1, "/mnt/sdcard/message_background_image.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    sput v0, Lcom/android/mms/settings/BackgroundStyle;->mNewFestivalItemIdx:I

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/android/mms/settings/BackgroundStyle;->mNewFestivalItemIdx:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    :cond_3
    invoke-static {v3}, Lcom/android/mms/settings/BackgroundStyle;->updateBGStyleArray(Z)V

    invoke-virtual {p0, v3}, Lcom/android/mms/settings/DisplayStyleActivity;->setCustomBackground(Z)V

    invoke-direct {p0, v3}, Lcom/android/mms/settings/BackgroundStyle;->setCustomThumbnail(Z)V

    sget v0, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    iput v0, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshGridview()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xb -> :sswitch_0
        0xc -> :sswitch_2
        0x3ea -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/view/View;

    const/4 v7, 0x1

    if-nez p1, :cond_0

    const-string v4, "Mms/BackgroundStyle"

    const-string v5, "View v is null return!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_key_background_color"

    sget v5, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-boolean v4, p0, Lcom/android/mms/settings/BackgroundStyle;->mSaved:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    if-nez v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v4}, Lcom/android/mms/settings/BackgroundStyle;->saveBackgroundStyleIndex(I)V

    :cond_1
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "message_background_image.jpg"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v5, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    if-ne v4, v5, :cond_1

    const-string v4, "message_background_image.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v6, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->releaseBackgroundBitmapDrawable()V

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    invoke-direct {p0, v4}, Lcom/android/mms/settings/BackgroundStyle;->saveBackgoundStyle(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v7, p0, Lcom/android/mms/settings/BackgroundStyle;->mSaved:Z

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0c0359

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b016e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    invoke-super {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/settings/BackgroundStyle;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/settings/BackgroundStyle;->sOldLocale:Ljava/util/Locale;

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshLayout()V

    invoke-direct {p0}, Lcom/android/mms/settings/BackgroundStyle;->refreshGridview()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/mms/settings/DisplayStyleActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v1, Lcom/android/mms/settings/BackgroundStyle;->sOldLocale:Ljava/util/Locale;

    const v1, 0x7f0b01f1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollViewLand:Landroid/widget/ScrollView;

    new-instance v2, Lcom/android/mms/settings/BackgroundStyle$1;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/BackgroundStyle$1;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b01ea

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/android/mms/settings/BackgroundStyle$2;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/BackgroundStyle$2;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    const-string v1, "Mms/BackgroundStyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsStartFromNonCustom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    if-eqz v1, :cond_0

    const-string v1, "message_background_image_original.jpg"

    const-string v2, "/data/data/com.android.mms/message_background_image.jpg"

    const-string v3, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/settings/BackgroundStyle;->getDeviceScreenSize()V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/settings/BackgroundStyle;->makeView()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->setWindowResizingEventHandler()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "Mms/BackgroundStyle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out Of Memory Error while making the View: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "message_background_image.jpg"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.android.mms/message_background_image_original.jpg"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v2, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/settings/BackgroundStyle;->mCustomThumnaildDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lcom/android/mms/settings/BackgroundStyle;->recycleBitmap(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-super {p0}, Lcom/android/mms/settings/DisplayStyleActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/settings/BackgroundStyle;->mSaved:Z

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->isCustomItemExist()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/mms/settings/BackgroundStyle;->mIsStartFromNonCustom:Z

    if-nez v3, :cond_1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "pref_key_background_color"

    sget v4, Lcom/android/mms/ui/MessagingPreferenceActivity;->BACKGROUND_STYLE_DEFAULT_VALUE:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/android/mms/settings/BackgroundStyle;->saveBackgroundStyleIndex(I)V

    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x16

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mBackGroundItemGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget-object v4, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_BUBBLE_BG_ID:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    iget v3, p0, Lcom/android/mms/settings/DisplayStyleActivity;->mSelectedBGIndex:I

    sget v4, Lcom/android/mms/settings/BackgroundStyle;->CUSTOM_ITEM_INDEX:I

    if-ne v3, v4, :cond_0

    const-string v3, "message_background_image.jpg"

    const-string v4, "/data/data/com.android.mms/message_background_image_original.jpg"

    const-string v5, "/data/data/com.android.mms/message_background_image.jpg"

    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/MessageUtils;->copyBackgroundFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/android/mms/settings/BackgroundStyle;->releaseBackgroundBitmapDrawable()V

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/mms/Log;->ENG_VER:Z

    if-eqz v3, :cond_3

    const-string v3, "KOR"

    const-string v4, "USA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x18

    if-ne v3, v4, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/oem/AutoSendingTestActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "from"

    const-string v4, "debug"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public showBackgroundSelectorDialog()V
    .locals 7

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/mms/settings/BackgroundSelectorAdapter;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/BackgroundSelectorAdapter;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0c0358

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v5, 0x7f040055

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b01b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v5, Lcom/android/mms/settings/BackgroundStyle$7;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/settings/BackgroundStyle$7;-><init>(Lcom/android/mms/settings/BackgroundStyle;Lcom/android/mms/settings/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v5, Lcom/android/mms/settings/BackgroundStyle$8;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/settings/BackgroundStyle$8;-><init>(Lcom/android/mms/settings/BackgroundStyle;Lcom/android/mms/settings/BackgroundSelectorAdapter;)V

    invoke-virtual {v0, v5}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/settings/BackgroundStyle$9;

    invoke-direct {v6, p0}, Lcom/android/mms/settings/BackgroundStyle$9;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/mms/settings/BackgroundStyle$10;

    invoke-direct {v6, p0}, Lcom/android/mms/settings/BackgroundStyle$10;-><init>(Lcom/android/mms/settings/BackgroundStyle;)V

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v5, p0, Lcom/android/mms/settings/BackgroundStyle;->mBackgroundDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
