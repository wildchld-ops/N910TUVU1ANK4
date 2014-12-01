.class public Lcom/android/settings/myprofile/MyProfileActivity;
.super Landroid/app/Activity;
.source "MyProfileActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;,
        Lcom/android/settings/myprofile/MyProfileActivity$CustomSpinnerAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private btnTextColor:Landroid/widget/Button;

.field private btnTextColorBackground:Landroid/widget/Button;

.field private chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private isFirstInstance:Z

.field isFromUnlock:Z

.field private isMultiSIMDevice:Z

.field private isTextButtonSelected:Z

.field private lindseyFont:Landroid/graphics/Typeface;

.field private mClockHour01:Landroid/widget/ImageView;

.field private mClockHour02:Landroid/widget/ImageView;

.field private mClockHourDot:Landroid/widget/ImageView;

.field private mClockMin01:Landroid/widget/ImageView;

.field private mClockMin02:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mFontFileNames:[Ljava/lang/String;

.field private mFontNames:[Ljava/lang/String;

.field private mFontStylePackageName:[Ljava/lang/String;

.field private mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

.field private mIsLiveWallpaper:Z

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

.field private mSpinnerFontStyle:Landroid/widget/Spinner;

.field private mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

.field private mTypefaces:[Landroid/graphics/Typeface;

.field private selectodBackgroundColor:I

.field private selectodTextColor:I

.field private txtDate:Landroid/widget/TextView;

.field private txtTimeAmPm:Landroid/widget/TextView;

.field private txtTimeAmPmfirst:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.monotype.android.font.chococooky"

    aput-object v1, v0, v2

    const-string v1, "com.monotype.android.font.cooljazz"

    aput-object v1, v0, v3

    const-string v1, "com.monotype.android.font.rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "com.monotype.android.font.samsungsans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "fonts/Chococooky.ttf"

    aput-object v1, v0, v2

    const-string v1, "fonts/Cooljazz.ttf"

    aput-object v1, v0, v3

    const-string v1, "fonts/Rosemary.ttf"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "fonts/Samsungsans.ttf"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Choco cooky"

    aput-object v1, v0, v2

    const-string v1, "Cool jazz"

    aput-object v1, v0, v3

    const-string v1, "Rosemary"

    aput-object v1, v0, v4

    const-string v1, "DroidSerif-Italic"

    aput-object v1, v0, v5

    const-string v1, "Samsung Sans"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    new-instance v0, Lcom/android/settings/myprofile/MyProfileActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$6;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/MyProfileActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/MyProfileActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->reflectSelectedTextFontColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/MyProfileActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/myprofile/MyProfileActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/MyProfileActivity;)Lcom/android/settings/myprofile/EllipsisEditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->getFontName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 8

    const/16 v7, 0xb

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0xc

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v3, v0, [I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v4, v0, [I

    move v0, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    aget v0, v3, v1

    if-ne v0, v6, :cond_2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v2, v7

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const/16 v3, 0xa

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    aget v1, v4, v1

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    aget v1, v4, v6

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v1

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    aget v0, v3, v1

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v2, v7

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    aget v3, v3, v6

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    aget v5, v3, v1

    aget v5, v2, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    nop

    :array_0
    .array-data 4
        0x7f020533
        0x7f020534
        0x7f020536
        0x7f020537
        0x7f020538
        0x7f020539
        0x7f02053a
        0x7f02053b
        0x7f02053c
        0x7f02053d
        0x7f02053e
        0x7f020535
    .end array-data
.end method

.method private getBackgroundColorValueFromDB()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB BACKGROUND COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_background_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceOrientation()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getDimension(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getFontName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "Rosemary"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c5e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Choco cooky"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c5f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "Cool jazz"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c5d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "DroidSerif-Italic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "DroidSerif-Italic"

    goto :goto_0

    :cond_3
    const-string v0, "Lindsey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Lindsey"

    goto :goto_0

    :cond_4
    const-string v0, "Baikzongyul pen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c62

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v0, "UDRGothic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c63

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v0, "UDMincho"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c64

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v0, "Pop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c65

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v0, "Shao nv"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0913c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v0, "Kaiti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0913c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    const-string v0, "Miao"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0913c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v0, "Apple mint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c60

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v0, "Tinker bell"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090c61

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 5

    const v4, 0x7f091193

    const v3, 0x7f091189

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Always with you\u200b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Personal Banner"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f091194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v1, "Life companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static {v1}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Personal message"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextColorValueFromDB()I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_text_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getValueFromDB(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v1, v2

    goto :goto_0
.end method

.method private getViewID(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0b0357

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b0358

    goto :goto_0
.end method

.method private init()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v2, 0x7f0b02f2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/EllipsisEditText;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/4 v3, 0x6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setNewActionPopupMenu(IZ)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v4}, Lcom/android/settings/myprofile/EllipsisEditText;->setWritingBuddyEnabled(Z)V

    const v2, 0x7f0b0357

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    const v2, 0x7f0b0358

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    const v3, 0x7f0909a8

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    const v3, 0x7f0909a6

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColor:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$1;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$1;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->btnTextColorBackground:Landroid/widget/Button;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$2;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$2;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b02f9

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getDeviceOrientation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->restoreDBColorValue()V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setPreviewTextView()V

    const-string v2, "my_profile_is_text_button_selected"

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    const v2, 0x7f0b034c

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    const v2, 0x7f0b034d

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    const v2, 0x7f0b034e

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    const v2, 0x7f0b034f

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    const v2, 0x7f0b0350

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    const v2, 0x7f0b0351

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const v2, 0x7f0b034b

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v2, 0x7f0b0354

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    const v2, 0x7f0b0352

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v2, 0x7f0b0355

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "show_clock"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v3, "lock_screen_date_and_year"

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getValueFromDB(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTimeAndDateIntoTextFields()V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$3;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    const v2, 0x7f0b02fa

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$4;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$4;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    invoke-static {}, Landroid/graphics/Canvas;->freeTextLayoutCaches()V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->loadTypeFaces()V

    const v2, 0x7f0b0359

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "my_profile_font_package"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    new-instance v3, Lcom/android/settings/myprofile/MyProfileActivity$5;

    invoke-direct {v3, p0}, Lcom/android/settings/myprofile/MyProfileActivity$5;-><init>(Lcom/android/settings/myprofile/MyProfileActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadTypeFaces()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Lindsey"

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "Baikzongyul pen"

    if-ne v0, v2, :cond_2

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/system/fonts/LindseyforSamsung-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->lindseyFont:Landroid/graphics/Typeface;

    aput-object v2, v0, v1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "DroidSerif-Italic"

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    const-string v2, "/system/fonts/DroidSerif-Italic.ttf"

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    aget-object v2, v2, v1

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2, v0}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTypefaces:[Landroid/graphics/Typeface;

    aput-object v0, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private refereshTextAndBackGroundColor(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0b02f2

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private reflectSelectedTextFontColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setSelectodColor(I)V

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->refereshTextAndBackGroundColor(Z)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    const v0, 0x7f0b02f2

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextColorValueFromDB()I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getBackgroundColorValueFromDB()I

    move-result v1

    goto :goto_2
.end method

.method private saveBackgroundColorValueToDB(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_background_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --BACKFROUND COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveProfileTextToDB(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_information"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT COLOR SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveTextSizeToDB(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "my_profile_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setAmPm(Ljava/util/Calendar;)V
    .locals 2

    const/16 v1, 0x8

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f091526

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    const v0, 0x7f091527

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setPreviewTextView()V
    .locals 8

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0e000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v7

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setScaledDensity(F)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/myprofile/EllipsisEditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->getMaxTextSize()F

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const v3, 0x7f0f013b

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/myprofile/EllipsisEditText;->setMaxTextSize(F)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const/high16 v3, 0x40a00000

    const/4 v4, 0x0

    const/high16 v5, 0x40400000

    const/high16 v6, -0x67000000

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/settings/myprofile/EllipsisEditText;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v2, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextSize(F)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    const-string v1, "inputType=option"

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/EllipsisEditText;->requestFocus()Z

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Lcom/android/settings/myprofile/EllipsisEditText;->setSelection(II)V

    goto :goto_1
.end method

.method private setTextOpecity()V
    .locals 4

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f000000

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHour02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockHourDot:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin01:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mClockMin02:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v1, v2

    goto :goto_7
.end method

.method private setTimeAndDateIntoTextFields()V
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string v0, ""

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yyyy-MM-dd"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "MM-dd-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const v0, 0x7f091525

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "kk"

    :goto_1
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "mm"

    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->convertClockTimeToImage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f091526

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const v2, 0x7f091527

    invoke-virtual {p0, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setAmPm(Ljava/util/Calendar;)V

    return-void

    :cond_3
    const-string v3, "dd-MM-yyyy"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f091524

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string v0, "h"

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPm:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->txtTimeAmPmfirst:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setValueIntoDatabase(Ljava/lang/String;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setWalllpaper()V
    .locals 6

    const v4, 0x7f0b0347

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    iget-boolean v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Lcom/android/settings/myprofile/MyProfileWallpaper;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/MyProfileWallpaper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/settings/myprofile/MyProfileWallpaper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private showOnScreenKeyPad()V
    .locals 3

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 8

    const v7, 0x7f0205c9

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v4, 0x7f0b0358

    const v3, 0x7f0b0357

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_3

    :goto_2
    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->showOnScreenKeyPad()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0205ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v3}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_6
    iput-boolean v6, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    :pswitch_7
    iput-boolean v5, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0, v5, v5}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setLastIndexColorValue(IZ)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->invalidate()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b0357
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0b0357
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0b0357
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getSelectodBackGroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return v0
.end method

.method public getSelectodTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextOpecity()V

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwCompoundButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0352
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "onCreate()"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v17

    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v18, v0

    move/from16 v0, v18

    or-int/lit16 v0, v0, 0x2000

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_1

    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "u0lte"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setRequestedOrientation(I)V

    :cond_1
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFirstInstance:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    const-string v18, "direct_lockscren"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v18

    const/high16 v19, 0x80000

    invoke-virtual/range {v18 .. v19}, Landroid/view/Window;->addFlags(I)V

    new-instance v18, Landroid/content/Intent;

    const-string v19, "intent.stop.app-in-app"

    invoke-direct/range {v18 .. v19}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v12, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.udrgothic"

    aput-object v19, v12, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.udmincho"

    aput-object v19, v12, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/UDRGothic.ttf"

    aput-object v19, v10, v18

    const/16 v18, 0x1

    const-string v19, "fonts/UDMincho.ttf"

    aput-object v19, v10, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "UDRGothic"

    aput-object v19, v11, v18

    const/16 v18, 0x1

    const-string v19, "UDMincho"

    aput-object v19, v11, v18

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    :cond_3
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/settings/myprofile/LockscreenWallpaper;->isLiveWallpaper(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mIsLiveWallpaper:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const v18, 0x103013c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTheme(I)V

    :cond_4
    const v18, 0x7f040158

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->setContentView(I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->init()V

    return-void

    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaOpen()Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "CHM"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string v18, "CHU"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_6
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.shaonv"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.miao"

    aput-object v19, v9, v18

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Shaonv.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Miao.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Shao nv"

    aput-object v19, v8, v18

    const/16 v18, 0x1

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    const/16 v18, 0x2

    const-string v19, "Miao"

    aput-object v19, v8, v18

    const-string v18, "ro.product.name"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "cs02"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    :cond_7
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    const-string v18, "CTC"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "TGY"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_9

    const-string v18, "BRI"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    :cond_9
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.shaonv"

    aput-object v19, v9, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.kaiti"

    aput-object v19, v9, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Shaonv.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Kaiti.ttf"

    aput-object v19, v7, v18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Shao nv"

    aput-object v19, v8, v18

    const/16 v18, 0x1

    const-string v19, "Kaiti"

    aput-object v19, v8, v18

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v18

    if-eqz v18, :cond_c

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.samsungsans"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.applemint"

    aput-object v19, v15, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Samsungsans.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Applemint.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Samsung Sans"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string v19, "Baikzongyul pen"

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "Choco cooky"

    aput-object v19, v14, v18

    const/16 v18, 0x3

    const-string v19, "Apple mint"

    aput-object v19, v14, v18

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v15, v18

    const/16 v18, 0x1

    const-string v19, "com.monotype.android.font.cooljazz"

    aput-object v19, v15, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.applemint"

    aput-object v19, v15, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.tinkerbell"

    aput-object v19, v15, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v13, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x1

    const-string v19, "fonts/Cooljazz.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Applemint.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Tinkerbell.ttf"

    aput-object v19, v13, v18

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Choco cooky"

    aput-object v19, v14, v18

    const/16 v18, 0x1

    const-string v19, "Cool jazz"

    aput-object v19, v14, v18

    const/16 v18, 0x2

    const-string v19, "Apple mint"

    aput-object v19, v14, v18

    const/16 v18, 0x3

    const-string v19, "Tinker bell"

    aput-object v19, v14, v18

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SLOGAN_PERSONAL_MESSAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v6, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "com.monotype.android.font.samsungsans"

    aput-object v19, v6, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v6, v18

    const/16 v18, 0x2

    const-string v19, "com.monotype.android.font.chococooky"

    aput-object v19, v6, v18

    const/16 v18, 0x3

    const-string v19, "com.monotype.android.font.cooljazz"

    aput-object v19, v6, v18

    const/16 v18, 0x4

    const-string v19, "com.monotype.android.font.rosemary"

    aput-object v19, v6, v18

    const/16 v18, 0x5

    const-string v19, "DroidSerif-Italic"

    aput-object v19, v6, v18

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "fonts/Samsungsans.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v4, v18

    const/16 v18, 0x2

    const-string v19, "fonts/Chococooky.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x3

    const-string v19, "fonts/Cooljazz.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x4

    const-string v19, "fonts/Rosemary.ttf"

    aput-object v19, v4, v18

    const/16 v18, 0x5

    const-string v19, "DroidSerif-Italic"

    aput-object v19, v4, v18

    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "Samsung Sans"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, "Lindsey"

    aput-object v19, v5, v18

    const/16 v18, 0x2

    const-string v19, "Choco cooky"

    aput-object v19, v5, v18

    const/16 v18, 0x3

    const-string v19, "Cool jazz"

    aput-object v19, v5, v18

    const/16 v18, 0x4

    const-string v19, "Rosemary"

    aput-object v19, v5, v18

    const/16 v18, 0x5

    const-string v19, "DroidSerif-Italic"

    aput-object v19, v5, v18

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontNames:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x2

    const v2, 0x7f0901ba

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x1

    const v2, 0x7f090746

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCustomColorSubmit()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Lcom/android/settings/myprofile/GradientColorPickerView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/myprofile/GradientColorPickerView;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isFromUnlock:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const-string v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ms013gctc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->hideCursorControllers()V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->invalidate()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveProfileTextToDB(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/EllipsisEditText;->getTextSize()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    const-string v1, "my_profile_is_text_button_selected"

    iget-boolean v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    const-string v1, "lock_screen_date_and_year"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkDate:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    const-string v1, "show_clock"

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity;->chkTime:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->setValueIntoDatabase(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodBackGroundColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveBackgroundColorValueToDB(I)V

    invoke-virtual {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->getSelectodTextColor()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->saveTextColorValueToDB(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_filename"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontFileNames:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_font_package"

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mFontStylePackageName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpinnerFontStyle:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "my_profile_font_filename : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_filename"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_profile_font_package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "my_profile_font_package"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f0b013b -> :sswitch_0
        0x7f0b013c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "onRestoreInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    const-string v1, "savedInstanceState is not null so load saved values"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "is_text_selected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    const-string v0, "selected_text_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    const-string v0, "selected_background_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->mTvPreviewText:Lcom/android/settings/myprofile/EllipsisEditText;

    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    if-nez v0, :cond_2

    const/high16 v0, -0x1000000

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/EllipsisEditText;->setTextColor(I)V

    const v0, 0x7f0b02f2

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->getViewID(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/myprofile/MyProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/myprofile/MyProfileActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selected_text_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selected_background_index"

    iget v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "is_text_selected"

    iget-boolean v1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    new-instance v0, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/myprofile/MyProfileMultiSimUtils;->isMultiSIMDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isMultiSIMDevice:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/myprofile/MyProfileActivity;->setWalllpaper()V

    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : setWalllpaper()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodBackgroundColor:I

    return-void
.end method

.method public setSelectodColor(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/myprofile/MyProfileActivity;->isTextButtonSelected:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/myprofile/MyProfileActivity;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/myprofile/MyProfileActivity;->selectodTextColor:I

    return-void
.end method
