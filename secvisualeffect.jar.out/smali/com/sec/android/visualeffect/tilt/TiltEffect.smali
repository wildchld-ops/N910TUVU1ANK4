.class public Lcom/sec/android/visualeffect/tilt/TiltEffect;
.super Landroid/widget/FrameLayout;
.source "TiltEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAlphaImageView:Landroid/widget/ImageView;

.field private mBgImageView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "Tilt_TiltEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->initTiltEffect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "Tilt_TiltEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->initTiltEffect()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "Tilt_TiltEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/tilt/TiltEffect;->initTiltEffect()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/tilt/TiltEffect;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initTiltEffect()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mBgImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mBgImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance v0, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-direct {v0}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    new-instance v1, Lcom/sec/android/visualeffect/tilt/TiltEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/tilt/TiltEffect$1;-><init>(Lcom/sec/android/visualeffect/tilt/TiltEffect;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->registerAlphaChangedListener(Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider$AlphaChangedListener;)V

    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->TAG:Ljava/lang/String;

    const-string v1, "changeBackground() - bgBmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mBgImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public handleSensorEvent(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->handleSensorEvent(Landroid/hardware/SensorEvent;)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->setParentWindowFocusState(Z)V

    return-void
.end method

.method public setAlphaImageResources(Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->TAG:Ljava/lang/String;

    const-string v1, "setAlphaImageResources() - alphaBmp is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setTiltEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mTiltAlphaProvider:Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/tilt/TiltAlphaProvider;->setTiltEnable(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/tilt/TiltEffect;->mAlphaImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
