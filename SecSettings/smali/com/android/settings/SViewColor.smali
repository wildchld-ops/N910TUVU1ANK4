.class public Lcom/android/settings/SViewColor;
.super Landroid/app/Activity;
.source "SViewColor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SViewColor$CoverWallpaperObserver;
    }
.end annotation


# static fields
.field static final COVER_BACKGROUND_COLOR_BUTTON1:I

.field static final COVER_BACKGROUND_COLOR_BUTTON2:I

.field static final COVER_BACKGROUND_COLOR_BUTTON3:I

.field static final COVER_BACKGROUND_COLOR_BUTTON4:I

.field static final COVER_BACKGROUND_COLOR_BUTTON5:I

.field static final COVER_BACKGROUND_COLOR_BUTTON6:I

.field static final COVER_BACKGROUND_COLOR_BUTTON7:I

.field static final COVER_BACKGROUND_COLOR_BUTTON8:I


# instance fields
.field private mAmPm:Landroid/widget/TextView;

.field private mBackground:Landroid/widget/FrameLayout;

.field mCalendar:Ljava/util/Calendar;

.field private mClockRoot:Landroid/widget/LinearLayout;

.field private mColorArray:[I

.field private mColorButton:Landroid/view/View$OnClickListener;

.field mColorButtonArray:[Lcom/android/settings/ColorButton;

.field private mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

.field private mCurrentCoverBackgroundColor:I

.field private mCurrentRealCoverColor:I

.field private mInitRandom:I

.field private mInitUseAll:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIs24HTime:Z

.field private mIsWallpaper:Z

.field private mMonthandDay:Landroid/widget/TextView;

.field private mPatternBG:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x87

    const/16 v6, 0x64

    const/16 v5, 0xd

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3e

    const/16 v1, 0x8

    invoke-static {v0, v5, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    const/16 v0, 0xc6

    const/16 v1, 0x62

    const/16 v2, 0x30

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    const/16 v0, 0x26

    invoke-static {v7, v0, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    const/16 v0, 0x90

    const/16 v1, 0xbf

    invoke-static {v0, v1, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    invoke-static {v3, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    const/16 v0, 0x96

    const/16 v1, 0x9c

    invoke-static {v4, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    const/16 v0, 0x54

    const/16 v1, 0x69

    invoke-static {v0, v4, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    const/16 v0, 0xc9

    const/16 v1, 0x2c

    invoke-static {v0, v1, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x0

    const/16 v3, 0xa

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v3, [I

    sget v1, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    aput v1, v0, v4

    const/4 v1, 0x1

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON6:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON7:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON8:I

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v5, v0, v1

    aput v3, v0, v5

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    new-array v0, v3, [Lcom/android/settings/ColorButton;

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    iput-boolean v4, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    new-instance v0, Lcom/android/settings/SViewColor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$1;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/SViewColor$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SViewColor$4;-><init>(Lcom/android/settings/SViewColor;)V

    iput-object v0, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0    # Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget v0, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget v0, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/SViewColor;I)I
    .locals 0
    .param p0    # Lcom/android/settings/SViewColor;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/SViewColor;)Z
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget-boolean v0, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/SViewColor;Z)Z
    .locals 0
    .param p0    # Lcom/android/settings/SViewColor;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/SViewColor;)I
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget v0, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/SViewColor;)V
    .locals 0
    .param p0    # Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/SViewColor;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget-object v0, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/SViewColor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/SViewColor;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0    # Lcom/android/settings/SViewColor;

    iget-object v0, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private getWallpaperDrawable()Landroid/graphics/drawable/Drawable;
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

    iget-boolean v5, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "kk:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const-string v6, "AA"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_1
    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getCurrentDateFormat()Ljava/lang/String;

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
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const-string v6, "h:mm"

    invoke-static {v6, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

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

.method private setfocusButton()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorArray:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/ColorButton;->setFocus(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
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

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/SViewColor$2;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$2;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b013c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/android/settings/SViewColor$3;

    invoke-direct {v4, p0}, Lcom/android/settings/SViewColor$3;-><init>(Lcom/android/settings/SViewColor;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
    const-string v3, "SViewColor"

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
    const-string v3, "SViewColor"

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

.method public getMatchColor(I)I
    .locals 1
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON3:I

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON4:I

    goto :goto_0

    :pswitch_4
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON5:I

    goto :goto_0

    :pswitch_5
    sget v0, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON2:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v1, 0x3e9

    if-ne p1, v1, :cond_0

    if-ne p2, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sview_color_wallpaper"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "s_view_cover_skin_color"

    iget v3, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

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
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_use_all"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sview_color_random"

    iget v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f04004e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->configureActionBar()V

    new-instance v2, Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/settings/SViewColor$CoverWallpaperObserver;-><init>(Lcom/android/settings/SViewColor;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SViewColor;->COVER_BACKGROUND_COLOR_BUTTON1:I

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "s_view_cover_skin_color"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->getColorOfCover()I

    move-result v1

    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    iget v2, p0, Lcom/android/settings/SViewColor;->mCurrentRealCoverColor:I

    invoke-virtual {p0, v2}, Lcom/android/settings/SViewColor;->getMatchColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    :cond_0
    const v2, 0x7f0b00c9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget v5, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    const v5, 0x7f0b0511

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    const/4 v0, 0x0

    const-string v2, "system/fonts/SamsungSans-Num3T.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const v2, 0x7f0b0513

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0514

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    const v2, 0x7f0b0515

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const v2, 0x7f0b0516

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/SViewColor;->mMonthandDay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/SViewColor;->mIs24HTime:Z

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f0b00f8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v4

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f0b00f9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v3

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v3

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v7

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v7

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f0b00fb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v8

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v8

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const v2, 0x7f0b00fc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v9

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    aget-object v2, v2, v9

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x5

    const v2, 0x7f0b00fd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x5

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x6

    const v2, 0x7f0b00fe

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x6

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v6, 0x7

    const v2, 0x7f0b00ff

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/4 v5, 0x7

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v6, 0x8

    const v2, 0x7f0b0100

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x8

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v6, 0x9

    const v2, 0x7f0b0101

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/ColorButton;

    aput-object v2, v5, v6

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v5, 0x9

    aget-object v2, v2, v5

    iget-object v5, p0, Lcom/android/settings/SViewColor;->mColorButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_color_wallpaper"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    invoke-virtual {p0}, Lcom/android/settings/SViewColor;->refreshClock()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "sview_color_use_all"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitUseAll:I

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sview_color_random"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/SViewColor;->mInitRandom:I

    return-void

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "s_vew_cover_background_color"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sview_color_wallpaper"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/SViewColor;->mCoverWallpaperObserver:Lcom/android/settings/SViewColor$CoverWallpaperObserver;

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "sview_color_wallpaper"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    iget v3, p0, Lcom/android/settings/SViewColor;->mCurrentCoverBackgroundColor:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    const v3, 0x1080639

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->setfocusButton()V

    iget-boolean v1, p0, Lcom/android/settings/SViewColor;->mIsWallpaper:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mPatternBG:Landroid/widget/ImageView;

    const/16 v3, 0x4d

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/android/settings/SViewColor;->mBackground:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewColor;->mColorButtonArray:[Lcom/android/settings/ColorButton;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-direct {p0}, Lcom/android/settings/SViewColor;->getWallpaperDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public refreshClock()V
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    const-string v2, "ko_KR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/SViewColor;->mClockRoot:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings/SViewColor;->mAmPm:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method
