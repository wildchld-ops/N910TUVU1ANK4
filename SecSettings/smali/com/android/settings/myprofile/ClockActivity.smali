.class public Lcom/android/settings/myprofile/ClockActivity;
.super Landroid/app/Activity;
.source "ClockActivity.java"

# interfaces
.implements Lcom/android/settings/myprofile/EditMyProfileDialog$OnProfileTextChangedListener;
.implements Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/myprofile/ClockActivity$CustomSpinnerAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBtnTextAlignCenter:Landroid/widget/Button;

.field private mBtnTextAlignLeft:Landroid/widget/Button;

.field private mBtnTextAlignRight:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEditmyProfileDialog:Lcom/android/settings/myprofile/EditMyProfileDialog;

.field mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

.field private mFontSizeRangeArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

.field mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

.field private mSpinnerFontSize:Landroid/widget/Spinner;

.field private mTvEditProfileLabel:Landroid/widget/TextView;

.field private mTvPreviewText:Landroid/widget/TextView;

.field mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/myprofile/ClockActivity$5;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/ClockActivity$5;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/android/settings/myprofile/ClockActivity$6;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/ClockActivity$6;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/settings/myprofile/ClockActivity$7;

    invoke-direct {v0, p0}, Lcom/android/settings/myprofile/ClockActivity$7;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    iput-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/myprofile/ClockActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/myprofile/ClockActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/myprofile/ClockActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/EditMyProfileDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings/myprofile/EditMyProfileDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/myprofile/ClockActivity;Lcom/android/settings/myprofile/EditMyProfileDialog;)Lcom/android/settings/myprofile/EditMyProfileDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/myprofile/ClockActivity;->mEditmyProfileDialog:Lcom/android/settings/myprofile/EditMyProfileDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/myprofile/ClockActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/myprofile/ClockActivity;->saveTextSizeToDB(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/myprofile/ClockActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/myprofile/ClockActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->reflectSelectedTextFontColor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/GradientColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/myprofile/ClockActivity;)Lcom/android/settings/myprofile/SpLitColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/myprofile/ClockActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    return-object v0
.end method

.method private getDeviceOrientation()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getProfileTextFromDB()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "my_profile_information"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getTextAlignSettingsFromDB()I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -- TEXT ALIGNMENT SETTING value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lock_screen_clock_text_alignment"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_alignment"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getTextColorValueFromDB()I
    .locals 5

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " -------DB TEXT COLOR VALUE ----- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lock_screen_clock_text_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "lock_screen_clock_text_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTextSizeFromDB()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_size"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getViewID(I)I
    .locals 1

    if-nez p1, :cond_0

    const v0, 0x7f0b02f8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0b02f7

    goto :goto_0

    :cond_1
    const v0, 0x7f0b02f6

    goto :goto_0
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const v3, 0x7f0b02f3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f09118b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->getProfileTextFromDB()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x3c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0b02f2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    const v3, 0x7f0b02f8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    const v3, 0x7f0b02f7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    const v3, 0x7f0b02f6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mFocusChangedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->getTextAlignSettingsFromDB()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/myprofile/ClockActivity;->getViewID(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/android/settings/myprofile/ClockActivity;->updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V

    const v3, 0x7f0b02f5

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/myprofile/ClockActivity$CustomSpinnerAdapter;

    const v3, 0x7f04023d

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v3, v4}, Lcom/android/settings/myprofile/ClockActivity$CustomSpinnerAdapter;-><init>(Lcom/android/settings/myprofile/ClockActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settings/myprofile/ClockActivity$1;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/ClockActivity$1;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->getTextSizeFromDB()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mFontSizeRangeArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpinnerFontSize:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    const v3, 0x7f0b02f9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/myprofile/SpLitColorPickerView;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->getDeviceOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setDeviceOrientation(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->restoreDBColorValue()V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v3}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColorIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    iget v4, v4, Lcom/android/settings/myprofile/SpLitColorPickerView;->MAX_COLOR_INDEX:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v3, v7}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setKeepCustomColor(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v4, Lcom/android/settings/myprofile/ClockActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/ClockActivity$2;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnColorChangedListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    new-instance v4, Lcom/android/settings/myprofile/ClockActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/ClockActivity$3;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setOnSelectCustomColorListener(Lcom/android/settings/myprofile/SpLitColorPickerView$OnSelectCustomColorListener;)V

    const v3, 0x7f0b02fa

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/myprofile/GradientColorPickerView;

    iput-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v3, p0}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnCustomColorSubmitListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnCustomColorSubmitListener;)V

    iget-object v3, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    new-instance v4, Lcom/android/settings/myprofile/ClockActivity$4;

    invoke-direct {v4, p0}, Lcom/android/settings/myprofile/ClockActivity$4;-><init>(Lcom/android/settings/myprofile/ClockActivity;)V

    invoke-virtual {v3, v4}, Lcom/android/settings/myprofile/GradientColorPickerView;->setOnColorChangedListener(Lcom/android/settings/myprofile/GradientColorPickerView$OnColorChangedListener;)V

    return-void
.end method

.method private reflectSelectedTextFontColor()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    const-string v2, " --------- INSIDE REFLECT COLOR ---------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1}, Lcom/android/settings/myprofile/SpLitColorPickerView;->getColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ***&&&&%%%### COLOR VALUE --- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/ClockActivity;->saveTextColorValueToDB(I)V

    return-void
.end method

.method private restoreDBColorValue()V
    .locals 2

    const/16 v1, 0x13

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->getTextColorValueFromDB()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v1, v0}, Lcom/android/settings/myprofile/SpLitColorPickerView;->setColor(I)V

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvPreviewText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private saveTextAlignSettingsToDB(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_alignment"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " --TEXT ALIGNMENT SETTING updated with value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveTextColorValueToDB(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_color"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->TAG:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "lock_screen_clock_text_size"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private updateAlignButtonAndPreviewTextAlignment(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/myprofile/ClockActivity;->setDefaultImage()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020605

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02060a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020600

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_4

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020606

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02060b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020601

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/myprofile/ClockActivity;->saveTextAlignSettingsToDB(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f04012e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/myprofile/ClockActivity;->init()V

    return-void
.end method

.method public onCustomColorSubmit()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mSpLitColorPickerView:Lcom/android/settings/myprofile/SpLitColorPickerView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mGradientColorPickerView:Lcom/android/settings/myprofile/GradientColorPickerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public onProfileTextChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mTvEditProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDefaultImage()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignLeft:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020603

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignRight:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020608

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/myprofile/ClockActivity;->mBtnTextAlignCenter:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0205fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
