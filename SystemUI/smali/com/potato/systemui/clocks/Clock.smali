.class public Lcom/potato/systemui/clocks/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale",
        "SimpleDateFormat"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/potato/systemui/clocks/Clock$SettingsObserver;
    }
.end annotation


# static fields
.field private static AM_PM_STYLE:I = 0x0

.field private static final AM_PM_STYLE_GONE:I = 0x2

.field private static final AM_PM_STYLE_NORMAL:I = 0x0

.field private static final AM_PM_STYLE_SMALL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Clock"

.field private static final WEEKDAY_STYLE_GONE:I = 0x2

.field private static final WEEKDAY_STYLE_NORMAL:I = 0x0

.field private static final WEEKDAY_STYLE_SMALL:I = 0x1

.field private static final tens:[Ljava/lang/String;

.field private static final units:[Ljava/lang/String;


# instance fields
.field private WEEKDAY_STYLE:I

.field private ampmPotato:I

.field private ampm_size:I

.field private anim:Landroid/view/animation/Animation;

.field private animate:I

.field private bold:Landroid/graphics/Typeface;

.field private clock_styleChoosah:I

.field private color:Ljava/lang/String;

.field private condense:Landroid/graphics/Typeface;

.field private custom_clock_format:Ljava/lang/String;

.field private custom_date_format:Ljava/lang/String;

.field private custom_font:Ljava/lang/String;

.field private date_size:I

.field private date_style:I

.field private dayPotato:I

.field private font:I

.field private light:Landroid/graphics/Typeface;

.field private light_italic:Landroid/graphics/Typeface;

.field private mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mShowClock:Z

.field private mShowClocker:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mWeekdayStyle:I

.field private ninja_clock_upper:I

.field private normal:Landroid/graphics/Typeface;

.field private normal_upper:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    sput v3, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Zero"

    aput-object v1, v0, v4

    const-string v1, "One"

    aput-object v1, v0, v5

    const-string v1, "Two"

    aput-object v1, v0, v3

    const-string v1, "Three"

    aput-object v1, v0, v6

    const-string v1, "Four"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Five"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Six"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Seven"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Eight"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Nine"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Ten"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Eleven"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Twelve"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Thirteen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Fourteen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Fifteen"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Sixteen"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Seventeen"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Eighteen"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Nineteen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v5

    const-string v1, "Twenty"

    aput-object v1, v0, v3

    const-string v1, "Thirty"

    aput-object v1, v0, v6

    const-string v1, "Forty"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Fifty"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Sixty"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Seventy"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Eighty"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Ninety"

    aput-object v2, v0, v1

    sput-object v0, Lcom/potato/systemui/clocks/Clock;->tens:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_styleChoosah"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->runTickerRun()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/potato/systemui/clocks/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_styleChoosah"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->runTickerRun()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "bold.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->bold:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "condensed.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->condense:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "light.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->light:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "italic.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->light_italic:Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->normal:Landroid/graphics/Typeface;

    new-instance v1, Lcom/potato/systemui/clocks/Clock$1;

    invoke-direct {v1, p0}, Lcom/potato/systemui/clocks/Clock$1;-><init>(Lcom/potato/systemui/clocks/Clock;)V

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/potato/systemui/clocks/Clock$2;

    invoke-direct {v1, p0}, Lcom/potato/systemui/clocks/Clock$2;-><init>(Lcom/potato/systemui/clocks/Clock;)V

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mTicker:Ljava/lang/Runnable;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/potato/systemui/clocks/Clock$SettingsObserver;

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/potato/systemui/clocks/Clock$SettingsObserver;-><init>(Lcom/potato/systemui/clocks/Clock;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/potato/systemui/clocks/Clock$SettingsObserver;->observe()V

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$0(Lcom/potato/systemui/clocks/Clock;Ljava/util/Calendar;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1(Lcom/potato/systemui/clocks/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$10(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    return-void
.end method

.method static synthetic access$11(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    return-void
.end method

.method static synthetic access$13(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    return-void
.end method

.method static synthetic access$14(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    return-void
.end method

.method static synthetic access$15(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->animate:I

    return-void
.end method

.method static synthetic access$17(Lcom/potato/systemui/clocks/Clock;)I
    .locals 1

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    return v0
.end method

.method static synthetic access$18(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->runTickerRun()V

    return-void
.end method

.method static synthetic access$19(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/potato/systemui/clocks/Clock;)Ljava/util/Calendar;
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$20(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setFont()V

    return-void
.end method

.method static synthetic access$21(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setColor()V

    return-void
.end method

.method static synthetic access$22(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    return-void
.end method

.method static synthetic access$23(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setDay()V

    return-void
.end method

.method static synthetic access$24(Lcom/potato/systemui/clocks/Clock;)I
    .locals 1

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->animate:I

    return v0
.end method

.method static synthetic access$25(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->animango()V

    return-void
.end method

.method static synthetic access$26(Lcom/potato/systemui/clocks/Clock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$27(Lcom/potato/systemui/clocks/Clock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$28(Lcom/potato/systemui/clocks/Clock;)V
    .locals 0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    return-void
.end method

.method static synthetic access$3(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    return-void
.end method

.method static synthetic access$4(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    return-void
.end method

.method static synthetic access$6(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    return-void
.end method

.method static synthetic access$7(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    return-void
.end method

.method static synthetic access$8(Lcom/potato/systemui/clocks/Clock;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9(Lcom/potato/systemui/clocks/Clock;I)V
    .locals 0

    iput p1, p0, Lcom/potato/systemui/clocks/Clock;->date_size:I

    return-void
.end method

.method private animango()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40a00000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->anim:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public static convert(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4

    const v3, 0xf4240

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/potato/systemui/clocks/Clock;->tens:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/potato/systemui/clocks/Clock;->units:[Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Hundred"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit8 v0, v0, 0x64

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v3, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Thousand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/lit16 v0, v0, 0x3e8

    if-lez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v0, ""

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Million "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    rem-int/2addr v0, v3

    if-lez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    rem-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-string v0, ""

    goto :goto_4
.end method

.method private customClockFormat()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "custom_clock_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/potato/systemui/clocks/Clock;->custom_clock_format:Ljava/lang/String;

    goto :goto_0
.end method

.method private date_format()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    const-string v1, "custom_date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    iget v1, p0, Lcom/potato/systemui/clocks/Clock;->date_style:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "dd"

    :goto_0
    return-object v1

    :pswitch_0
    const-string v1, "MM/dd/yy"

    goto :goto_0

    :pswitch_1
    const-string v1, "dd/MM/yy"

    goto :goto_0

    :pswitch_2
    const-string v1, "yyyy-MM-dd"

    goto :goto_0

    :pswitch_3
    const-string v1, "yyyy-dd-MM"

    goto :goto_0

    :pswitch_4
    const-string v1, "MM-dd-yyyy"

    goto :goto_0

    :pswitch_5
    const-string v1, "dd-MM-yyyy"

    goto :goto_0

    :pswitch_6
    const-string v1, "MMM dd"

    goto :goto_0

    :pswitch_7
    const-string v1, "MMM dd,yyyy"

    goto :goto_0

    :pswitch_8
    const-string v1, "MMMMM dd,yyyy"

    goto :goto_0

    :pswitch_9
    const-string v1, "EEE"

    goto :goto_0

    :pswitch_a
    const-string v1, "EEE dd"

    goto :goto_0

    :pswitch_b
    const-string v1, "EEE dd/MM"

    goto :goto_0

    :pswitch_c
    const-string v1, "EEE MM/dd"

    goto :goto_0

    :pswitch_d
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    const-string v1, "EEE MMM dd"

    goto :goto_0

    :pswitch_f
    const-string v1, "EEE MMMMM dd"

    goto :goto_0

    :pswitch_10
    const-string v1, "E MM/dd"

    goto :goto_0

    :pswitch_11
    const-string v1, "E dd/MM"

    goto :goto_0

    :pswitch_12
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->custom_date_format:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getDay(I)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->date_format()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :goto_2
    return-object v5

    :catch_0
    move-exception v3

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "EEEEE"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const-string v0, "Sun Tangna"

    goto :goto_1

    :pswitch_1
    const-string v0, "Mon"

    goto :goto_1

    :pswitch_2
    const-string v0, "Tue"

    goto :goto_1

    :pswitch_3
    const-string v0, "Wed"

    goto :goto_1

    :pswitch_4
    const-string v0, "Thu"

    goto :goto_1

    :pswitch_5
    const-string v0, "Fri"

    goto :goto_1

    :pswitch_6
    const-string v0, "Sat"

    goto :goto_1

    :catch_1
    move-exception v3

    const-string v5, "EEE"

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 31

    invoke-direct/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    invoke-direct/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->setDay()V

    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v22, "HH:mm"

    :goto_0
    const v5, 0xef00

    const v6, 0xef01

    move-object/from16 v16, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eqz v27, :cond_1

    const/4 v7, -0x1

    const/16 v21, 0x0

    const/16 v18, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v18

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    :goto_2
    if-ltz v7, :cond_1

    move v8, v7

    :goto_3
    if-lez v7, :cond_0

    add-int/lit8 v27, v7, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v27

    if-nez v27, :cond_a

    :cond_0
    new-instance v27, Ljava/lang/StringBuilder;

    const/16 v28, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v28, 0xef00

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "a"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const v28, 0xef01

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v8, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :cond_1
    new-instance v24, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    const/4 v13, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v27, 0x7

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/potato/systemui/clocks/Clock;->getDay(I)Ljava/lang/String;

    move-result-object v13

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :cond_2
    new-instance v17, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eqz v27, :cond_3

    const v27, 0xef00

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const v27, 0xef01

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    if-ltz v19, :cond_3

    move/from16 v0, v20

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c

    add-int/lit8 v27, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    if-eqz v27, :cond_4

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_f

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    move-object/from16 v0, v17

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    :goto_6
    return-object v17

    :cond_5
    const-string v22, "h:mm a"

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v27, 0x27

    move/from16 v0, v27

    if-ne v10, v0, :cond_7

    if-eqz v21, :cond_8

    const/16 v21, 0x0

    :cond_7
    :goto_7
    if-nez v21, :cond_9

    const/16 v27, 0x61

    move/from16 v0, v27

    if-ne v10, v0, :cond_9

    move/from16 v7, v18

    goto/16 :goto_2

    :cond_8
    const/16 v21, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/potato/systemui/clocks/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v24, v0

    goto/16 :goto_4

    :cond_c
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3f19999a

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v27, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    :goto_8
    add-int/lit8 v27, v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v27, v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_5

    :cond_e
    sget v27, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "AMPM_size_custom"

    const/16 v29, 0x64

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    const-wide v27, 0x3f847ae147ae147bL

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->ampm_size:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v15, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "f"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v27, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_10

    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3f19999a

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    move/from16 v27, v0

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "date_size_custom"

    const/16 v29, 0x64

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/potato/systemui/clocks/Clock;->date_size:I

    const-wide v27, 0x3f847ae147ae147bL

    move-object/from16 v0, p0

    iget v0, v0, Lcom/potato/systemui/clocks/Clock;->date_size:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-float v15, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v28, "f"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v27

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v28

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v29

    add-int v28, v28, v29

    const/16 v29, 0x22

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_6
.end method

.method private normalWordClock()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "normal_upper"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "h"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "m"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " O\'Clock"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget v7, p0, Lcom/potato/systemui/clocks/Clock;->normal_upper:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :cond_0
    return-object v6

    :cond_1
    const/16 v7, 0xa

    if-ge v5, v7, :cond_2

    if-lez v5, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " O\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private runTickerRun()V
    .locals 1

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private setAMPM()V
    .locals 3

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ampm"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->ampmPotato:I

    sput v0, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    return-void
.end method

.method private setColor()V
    .locals 3

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clock_color"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setTextColor(I)V

    goto :goto_0
.end method

.method private setDay()V
    .locals 3

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "day"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->dayPotato:I

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    return-void
.end method

.method private setFont()V
    .locals 5

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "clock_font"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_font"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->bold:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->condense:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->light:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->light_italic:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    if-ne v2, v4, :cond_5

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/potato/systemui/clocks/Clock;->font:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->custom_font:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->normal:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v2, "Clock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TANGINATHIS "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "status_bar_am_pm"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    sget v4, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mAmPmStyle:I

    sput v3, Lcom/potato/systemui/clocks/Clock;->AM_PM_STYLE:I

    const-string v3, ""

    iput-object v3, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    :cond_0
    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mWeekdayStyle:I

    iget v4, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/potato/systemui/clocks/Clock;->mWeekdayStyle:I

    iput v3, p0, Lcom/potato/systemui/clocks/Clock;->WEEKDAY_STYLE:I

    const-string v3, ""

    iput-object v3, p0, Lcom/potato/systemui/clocks/Clock;->mClockFormatString:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    :cond_1
    const-string v3, "status_bar_clock"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClock:Z

    iget-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClock:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/potato/systemui/clocks/Clock;->setVisibility(I)V

    :goto_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/potato/systemui/clocks/Clock;->setVisibility(I)V

    goto :goto_1
.end method

.method private wordClock()Ljava/lang/String;
    .locals 10

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ninja_clock_upper"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "h"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v7, "m"

    invoke-direct {v1, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x1e

    if-le v7, v8, :cond_2

    const/16 v7, 0xc

    if-ne v2, v7, :cond_1

    add-int/lit8 v2, v2, -0xb

    rsub-int/lit8 v5, v5, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget v7, p0, Lcom/potato/systemui/clocks/Clock;->ninja_clock_upper:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    :cond_0
    return-object v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    rsub-int/lit8 v5, v5, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "It\'s already "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/potato/systemui/clocks/Clock;->convert(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " past "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method


# virtual methods
.method public VisibilityChecks(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/potato/systemui/clocks/Clock;->mShowClocker:Z

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->updateSettings()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v1, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.potato.clock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "clock_styleChoosah"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->updateClock()V

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setFont()V

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setColor()V

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->setAMPM()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/potato/systemui/clocks/Clock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/potato/systemui/clocks/Clock;->mAttached:Z

    :cond_0
    return-void
.end method

.method final updateClock()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/potato/systemui/clocks/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_styleChoosah"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->wordClock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->normalWordClock()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/potato/systemui/clocks/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/potato/systemui/clocks/Clock;->clock_styleChoosah:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/potato/systemui/clocks/Clock;->customClockFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/potato/systemui/clocks/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
