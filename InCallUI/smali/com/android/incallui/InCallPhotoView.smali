.class public Lcom/android/incallui/InCallPhotoView;
.super Landroid/widget/ImageView;
.source "InCallPhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPhotoView$TwScaleType;
    }
.end annotation


# instance fields
.field private mBlurredBitmap:Landroid/graphics/Bitmap;

.field private mBorderWidth:I

.field private mCriticalPoint:I

.field private mDestRect:Landroid/graphics/Rect;

.field private mFrameX:I

.field private mFrameY:I

.field private mFrameYWithoutCompanyName:I

.field private mHandler:Landroid/os/Handler;

.field private mHasCompanyName:Z

.field private mIsBlurEffectAlwaysOn:Z

.field private mIsBlurEffectOn:Z

.field private mLargePhotoSize:I

.field private mNewDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalBitmap:Landroid/graphics/Bitmap;

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

.field private mPhotoSize:I

.field private mPnt:Landroid/graphics/Paint;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/incallui/InCallPhotoView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPhotoView$1;-><init>(Lcom/android/incallui/InCallPhotoView;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, v1}, Lcom/android/incallui/InCallPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/incallui/InCallPhotoView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPhotoView$1;-><init>(Lcom/android/incallui/InCallPhotoView;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    iput-boolean v2, p0, Lcom/android/incallui/InCallPhotoView;->mHasCompanyName:Z

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    iput v0, p0, Lcom/android/incallui/InCallPhotoView;->mFrameYWithoutCompanyName:I

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/incallui/InCallPhotoView$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPhotoView$1;-><init>(Lcom/android/incallui/InCallPhotoView;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallPhotoView;->initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private ApplyBlurEffect()V
    .locals 2

    const-string v0, "InCallPhotoView"

    const-string v1, "ApplyBlurEffect()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v0, "InCallPhotoView"

    const-string v1, "ApplyBlurEffect() - super.setImageDrawable(mNewDrawable)"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private ApplyHighQualityPhoto()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPhotoView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0    # Lcom/android/incallui/InCallPhotoView;

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPhotoView;)V
    .locals 0
    .param p0    # Lcom/android/incallui/InCallPhotoView;

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->ApplyBlurEffect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/InCallPhotoView;)V
    .locals 0
    .param p0    # Lcom/android/incallui/InCallPhotoView;

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->ApplyHighQualityPhoto()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallPhotoView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0    # Lcom/android/incallui/InCallPhotoView;
    .param p1    # Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPhotoView;->makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/graphics/Bitmap;
    .param p2    # I

    const/4 v5, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    if-nez v3, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    sget-object v5, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    invoke-static {v3, p1, v5, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float v5, p2

    invoke-virtual {v4, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/BaseObj;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/BaseObj;->destroy()V

    goto :goto_0
.end method

.method private initFromAttributest(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "InCallPhotoView"

    const-string v2, "initFromAttributest()"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/incallui/R$styleable;->InCallPhotoView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallPhotoView$TwScaleType;->parse(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mFrameYWithoutCompanyName:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPhotoView;->setBlurEffectAlways(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    iget-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_1
    iget v1, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    :cond_2
    iget v1, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0244

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    :cond_3
    iget v1, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    :cond_4
    iget v1, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0245

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    :cond_5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    return-void
.end method

.method private makeBlurEffectIfNeeded(Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p1    # Landroid/graphics/drawable/Drawable;

    const-string v7, "InCallPhotoView"

    const-string v8, "makeBlurEffectIfNeeded()"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    instance-of v7, p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v7, :cond_5

    const-string v7, "InCallPhotoView"

    const-string v8, "TransitionDrawable"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    instance-of v7, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-string v7, "InCallPhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TransitionDrawable getHieght() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v7, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    if-gt v2, v7, :cond_4

    :cond_2
    if-eqz v1, :cond_4

    const-string v7, "InCallPhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " - mIsBlurEffectAlwaysOn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", height : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v7, v1, v8}, Lcom/android/incallui/InCallPhotoView;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v7, 0x2

    new-array v0, v7, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    aput-object v3, v0, v7

    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v6, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycleOriginalBitmap()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_3

    const-string v7, "InCallPhotoView"

    const-string v8, "BitmapDrawable"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const-string v7, "InCallPhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BitmapDrawable getHieght() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v7, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-nez v7, :cond_7

    iget v7, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    if-gt v2, v7, :cond_9

    :cond_7
    if-eqz v1, :cond_9

    iput-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v7, v1, v8}, Lcom/android/incallui/InCallPhotoView;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    const-string v7, "InCallPhotoView"

    const-string v8, "BitmapDrawable return"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycleOriginalBitmap()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e9

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private recycle()V
    .locals 2

    const-string v0, "InCallPhotoView"

    const-string v1, "recycle()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycleOriginalBitmap()V

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycleBlurredBitmap()V

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private recycleBlurredBitmap()V
    .locals 2

    const-string v0, "InCallPhotoView"

    const-string v1, "recycleBlurredBitmap()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mBlurredBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private recycleOriginalBitmap()V
    .locals 2

    const-string v0, "InCallPhotoView"

    const-string v1, "recycleOriginalBitmap()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycle()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;

    const/4 v9, 0x0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "InCallPhotoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw() , mIsBlurEffectOn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/incallui/InCallPhotoView;->mCriticalPoint:I

    if-gt v6, v7, :cond_1

    iget v2, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0d0000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const-string v6, "InCallPhotoView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDraw()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    if-nez v6, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v4, v6, 0x2

    :goto_1
    iget v6, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    if-nez v6, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    sub-int/2addr v6, v2

    add-int/2addr v6, v0

    div-int/lit8 v5, v6, 0x2

    :goto_2
    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v7, v4, v2

    add-int v8, v5, v2

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalBitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v6, v9, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v6, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    div-int/lit8 v3, v6, 0x2

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    const/16 v7, 0x5a

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/incallui/InCallPhotoView;->mBorderWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    add-int v7, v4, v3

    add-int v8, v5, v3

    add-int v9, v4, v2

    sub-int/2addr v9, v3

    add-int v10, v5, v2

    sub-int/2addr v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/android/incallui/InCallPhotoView;->mDestRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/incallui/InCallPhotoView;->mPnt:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    :goto_3
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_1
    iget v2, p0, Lcom/android/incallui/InCallPhotoView;->mLargePhotoSize:I

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/android/incallui/InCallPhotoView;->mPhotoSize:I

    goto/16 :goto_0

    :cond_3
    iget v4, p0, Lcom/android/incallui/InCallPhotoView;->mFrameX:I

    goto :goto_1

    :cond_4
    iget-boolean v6, p0, Lcom/android/incallui/InCallPhotoView;->mHasCompanyName:Z

    if-eqz v6, :cond_5

    iget v5, p0, Lcom/android/incallui/InCallPhotoView;->mFrameY:I

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/android/incallui/InCallPhotoView;->mFrameYWithoutCompanyName:I

    goto :goto_2
.end method

.method public setBlurEffect(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    return-void
.end method

.method public setBlurEffectAlways(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectAlwaysOn:Z

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const-string v0, "InCallPhotoView"

    const-string v1, "setImageBitmap()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;

    const-string v1, "InCallPhotoView"

    const-string v2, "setImageDrawable()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycle()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/InCallPhotoView;->mIsBlurEffectOn:Z

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/InCallPhotoView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/InCallPhotoView$2;-><init>(Lcom/android/incallui/InCallPhotoView;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallPhotoView;->mNewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1    # I

    const-string v0, "InCallPhotoView"

    const-string v1, "setImageResource()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/incallui/InCallPhotoView;->recycle()V

    iget-object v0, p0, Lcom/android/incallui/InCallPhotoView;->mOriginalScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
