.class public Lcom/android/settings/SViewColor2014;
.super Landroid/app/Activity;
.source "SViewColor2014.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;
    }
.end annotation


# static fields
.field static final WALLPAPER_PREPARED_DB_ID:I

.field private static mColorDBIdArray:[I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mColorResourceArray:[I

.field private mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

.field private mCurrentCoverBackgroundDbId:I

.field private mCurrentCoverBackgroundResId:I

.field private mCurrentRealCoverColor:I

.field mCutsomButtonBackground:Landroid/widget/ImageView;

.field mImageButtonArray:[Landroid/widget/ImageButton;

.field private mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

.field private mImageButtonListner:Landroid/view/View$OnClickListener;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsChangedInside:Z

.field private mIsComeFromGallery:Z

.field private mIsOptionMenuFocused:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mPreview:Landroid/widget/FrameLayout;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    sget-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    sput v0, Lcom/android/settings/SViewColor2014;->WALLPAPER_PREPARED_DB_ID:I

    return-void

    :array_0
    .array-data 4
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    new-array v0, v2, [Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    new-instance v0, Lcom/android/settings/SViewColor2014$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$1;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/SViewColor2014$6;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$6;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/SViewColor2014$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor2014$7;-><init>(Lcom/android/settings/SViewColor2014;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02069d
        0x7f02069e
        0x7f02069f
        0x7f0206a0
        0x7f0206a1
        0x7f0206a2
        0x7f0206a3
        0x7f0206a4
        0x9
        0xa
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SViewColor2014;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/SViewColor2014;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/SViewColor2014;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/SViewColor2014;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor2014;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/SViewColor2014;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/SViewColor2014;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    return p1
.end method

.method static synthetic access$400()[I
    .locals 1

    sget-object v0, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/SViewColor2014;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->saveWallpaperFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/SViewColor2014;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/SViewColor2014;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/SViewColor2014;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/SViewColor2014;->mIsChangedInside:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/SViewColor2014;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/SViewColor2014;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/SViewColor2014;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    return-object v0
.end method

.method public static getAppropriateSampleSize(Ljava/lang/String;II)I
    .locals 7

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int v4, v1, p1

    div-int v5, v0, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " filePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " imageSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " destSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sampleSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;
    .locals 10

    const v9, 0x7f0f0377

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sview_bg_wallpaper_path"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v5, v7

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v3, v6, v5}, Lcom/android/settings/SViewColor2014;->getAppropriateSampleSize(Ljava/lang/String;II)I

    move-result v7

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :try_start_0
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cover_wallpaper.jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v7, "SViewColor2014"

    const-string v8, "getCustomWallpaperDrawableForThumb : OutOfMemoryError"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_bg_wallpaper_path"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_wallpaper.jpg"

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    move-object v3, v2

    :goto_1
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/cover_wallpaper.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private onTimeChanged()V
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-boolean v5, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getCurrentDateFormat()Ljava/lang/String;

    move-result-object v4

    const v2, 0x7f090019

    const v3, 0x7f09001a

    const v2, 0x7f090019

    const v3, 0x7f09001a

    const-string v5, "yyyy-MM-dd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "MM-dd-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    const-string v5, "dd-MM-yyyy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private saveWallpaperFile()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v1, "/storage/emulated/0/Android/data/com.sec.android.sviewcover/files/Pictures/cover_index_wallpaper.jpg"

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create index Wallpaperfolder to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v4, "SViewColor2014"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveImageFile : File saving failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setfocusButton(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsOptionMenuFocused:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const v2, 0x7f0206a5

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public ConvertDBIdtoResId(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v1, v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_1
.end method

.method public ConvertResIdtoDBId(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mColorResourceArray:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    aget v1, v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_1
.end method

.method public configureActionBar()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/16 v4, 0x10

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v4, 0x7f040064

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v4, 0x7f0b013b

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/SViewColor2014$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$2;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/settings/SViewColor2014$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$3;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v4, 0x7f0b013c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f091858

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Lcom/android/settings/SViewColor2014$4;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$4;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/settings/SViewColor2014$5;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor2014$5;-><init>(Lcom/android/settings/SViewColor2014;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public getColorOfCover()I
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    :cond_0
    :goto_0
    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scover getColorOfCover color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string v3, "SViewColor2014"

    const-string v4, "Scover getColorOfCover ScoverState is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentDateFormat()Ljava/lang/String;
    .locals 9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "yyyy"

    const-string v4, "MM"

    const-string v0, "dd"

    const-string v1, "-"

    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    aget-char v7, v2, v3

    const/16 v8, 0x79

    if-ne v7, v8, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-char v7, v2, v3

    const/16 v8, 0x4d

    if-ne v7, v8, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-char v7, v2, v3

    const/16 v8, 0x64

    if-ne v7, v8, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    if-eq v3, v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public getMatchResourceByColor(I)I
    .locals 2

    const v1, 0x7f02069e

    const v0, 0x7f02069d

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0206a4

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0206a0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getMatchResourceByColorForAlpha(I)I
    .locals 1

    const v0, 0x7f02069e

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const v0, 0x7f0206a1

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    const v0, 0x7f0206a3

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0206a0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    if-ne p2, v4, :cond_1

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    sget-object v1, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    iput v1, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "SViewColor2014"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOnClickListener sview_color_wallpaper/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s_view_cover_skin_color/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v8, 0x7f090da3

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040241

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->configureActionBar()V

    new-instance v1, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;-><init>(Lcom/android/settings/SViewColor2014;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    const-string v1, "system/fonts/SamsungSans-Num3T.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v1, 0x7f0b0513

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0514

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    const v1, 0x7f0b0515

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const v1, 0x7f0b0516

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mMonthandDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/SViewColor2014;->mIs24HTime:Z

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f0b00f8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v6

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const v1, 0x7f0b00fa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v5

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x3

    const v1, 0x7f0b00fb

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x4

    const v1, 0x7f0b00fc

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x5

    const v1, 0x7f0b00fd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x6

    const v1, 0x7f0b00fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v3, 0x7

    const v1, 0x7f0b00ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v3, 0x8

    const v1, 0x7f0b0100

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v3, 0x9

    const v1, 0x7f0b0101

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    aput-object v1, v2, v3

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mImageButtonArray:[Landroid/widget/ImageButton;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mImageButtonFocus:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f0b058d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->refreshClock()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SViewColor2014;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor2014$CoverWallpaperObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sview_color_wallpaper"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertDBIdtoResId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "s_view_cover_skin_color"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {p0}, Lcom/android/settings/SViewColor2014;->getColorOfCover()I

    move-result v0

    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume sview_color_wallpaper:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / s_view_cover_skin_color:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / coverColorChip:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    if-eq v3, v0, :cond_0

    iput v0, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "slte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->getMatchResourceByColorForAlpha(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertResIdtoDBId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    sget-object v4, Lcom/android/settings/SViewColor2014;->mColorDBIdArray:[I

    const/16 v5, 0x9

    aget v4, v4, v5

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mCutsomButtonBackground:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/SViewColor2014;->getCustomWallpaperBitmapForThumb()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings/SViewColor2014;->setfocusButton(Z)V

    return-void

    :cond_1
    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->getMatchResourceByColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    iget v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/SViewColor2014;->ConvertResIdtoDBId(I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    const-string v3, "SViewColor2014"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume recommanded wallpaper - s_view_cover_skin_color : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundDbId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings/SViewColor2014;->mIsComeFromGallery:Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mPreview:Landroid/widget/FrameLayout;

    iget v4, p0, Lcom/android/settings/SViewColor2014;->mCurrentCoverBackgroundResId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public refreshClock()V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/SViewColor2014;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor2014;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
