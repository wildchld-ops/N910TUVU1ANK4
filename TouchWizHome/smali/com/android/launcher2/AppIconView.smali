.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
    }
.end annotation


# static fields
.field private static final HOME:I = 0x0

.field private static final MENU:I = 0x1

.field static final PADDING_V:F = 3.0f

.field private static final PRESS_ALPHA:F = 0.4f

.field static SHADOW_LARGE_COLOUR:I

.field static SHADOW_LARGE_RADIUS:F

.field static SHADOW_SMALL_COLOUR:I

.field static SHADOW_SMALL_RADIUS:F

.field static SHADOW_Y_OFFSET:F

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field static sIconTopToTopOffset:I

.field static sIsDragState:Z


# instance fields
.field private callIntentAction:Ljava/lang/String;

.field private dialIntentAction:Ljava/lang/String;

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private mDidInvalidateForPressedState:Z

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field protected mDrawShadow:Z

.field private mHotseatIconSize:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field protected mIsAttachedHotseat:Z

.field private mIsChecked:Z

.field private mIsCheckingEnabled:Z

.field private mIsDimmed:Z

.field private final mLastTouch:[I

.field private mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

.field private mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field final mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;

.field final mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field protected mTextVisible:Z

.field private mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private messageIntentAction:Ljava/lang/String;

.field private quickContactIntentAction:Ljava/lang/String;

.field sMovieIconSize:I

.field sMovieIconSizeHeight:I

.field sMovieLeftX:I

.field sMovieLeftY:I

.field sMovieRightX:I

.field sMovieRightY:I

.field sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x40800000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    const/high16 v0, 0x3f800000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_SMALL_RADIUS:F

    const/high16 v0, 0x40000000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    const/high16 v0, -0x23000000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    const/high16 v0, -0x34000000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_SMALL_COLOUR:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const-wide/16 v7, 0x64

    const/high16 v5, 0x3f800000

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    iput v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    const v2, 0x3f0ccccd

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempRect:Landroid/graphics/Rect;

    const-string v2, "android.intent.action.SENDTO"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    const-string v2, "android.intent.action.CALL"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->callIntentAction:Ljava/lang/String;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->quickContactIntentAction:Ljava/lang/String;

    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v7, v8, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v2, v4, :cond_0

    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string v4, "launcher:destination"

    const-string v5, "value of either \'home\' or \'menu\'"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initBadgeValue()V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initMovieIconValue()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowColor()I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    sget v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    const/4 v3, 0x0

    sget v4, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    sget v5, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v6}, Landroid/view/View;->setHoverPopupType(I)V

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->init()V

    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v2, 0x437f0000

    mul-float/2addr v2, p0

    float-to-int v0, v2

    rsub-int v0, v0, 0xff

    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5

    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AppIconView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 6

    const/high16 v5, 0x40000000

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    const v0, 0x7f03001f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030021

    goto :goto_0
.end method

.method public static getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1

    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/HolographicOutlineHelper;->obtain()Lcom/android/launcher2/HolographicOutlineHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->mPressedGlowColor:I

    iput v1, p0, Lcom/android/launcher2/AppIconView;->mPressedOutlineColor:I

    return-void
.end method

.method private isHotseatItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/launcher2/HomeItem;

    iget-wide v1, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v3, -0x65

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playCheckStatus(Z)V
    .locals 2

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    if-eqz p1, :cond_0

    const v0, 0x7f0f000d

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    return-void

    :cond_0
    const v0, 0x7f0f000e

    goto :goto_0
.end method

.method public static recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1

    invoke-static {p0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method private updateCheckingOverlay()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 13

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v7, p1, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/AppIconView;->isHotseatItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    iget-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-eqz v10, :cond_1

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v10, v11, :cond_2

    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v11, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v10, v11, :cond_4

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0065

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_4
    :goto_0
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0101

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-nez p2, :cond_5

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lcom/android/launcher2/FolderIconView;

    if-ne v10, v11, :cond_11

    const/4 v5, 0x1

    :goto_2
    new-instance v10, Ljava/lang/NullPointerException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: isFolder= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x10d0000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    iget-boolean v10, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v10, :cond_12

    instance-of v10, p1, Lcom/android/launcher2/FolderItem;

    if-nez v10, :cond_12

    const/4 v10, 0x1

    :goto_3
    invoke-virtual {p0, p2, v10}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;Z)V

    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v10, :cond_6

    const/4 v6, 0x0

    move-object v10, p1

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000c

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_4
    iget-object v10, p1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    invoke-virtual {p0, v10, v6}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V

    :cond_6
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f005a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v4, :cond_9

    sub-int v10, v8, v4

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_a
    instance-of v10, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v10, :cond_10

    const-string v9, ""

    move-object v10, p1

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/launcher2/AppIconView;->callIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0021

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_c
    :goto_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_d
    iget-object v10, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f0022

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_e
    iget-object v10, p0, Lcom/android/launcher2/AppIconView;->quickContactIntentAction:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0f00e4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_13
    move-object v10, p1

    check-cast v10, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual {v10}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f02000d

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_4

    :cond_14
    const/4 v6, 0x0

    goto/16 :goto_4
.end method

.method public applyStyle(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    invoke-static {v2, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 2

    invoke-static {p1, p0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    invoke-static {p2, p0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;)V

    :cond_0
    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 22

    if-nez p1, :cond_0

    const/16 v18, 0x0

    :goto_0
    return-object v18

    :cond_0
    const/16 v18, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    :goto_1
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    const-string v18, "%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c0004

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v9, v18, v19

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v9, v11, :cond_1

    move v9, v11

    :cond_1
    if-ge v8, v10, :cond_2

    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    move v8, v10

    :cond_2
    add-int v17, v9, v16

    add-int v12, v8, v13

    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v18, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    sput-boolean v2, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawShadow(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;)V
    .locals 22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v16

    const v11, 0xffffff

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/high16 v3, 0x437f0000

    mul-float/2addr v2, v3

    float-to-int v9, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v10

    const v2, 0xffffff

    and-int/2addr v10, v2

    shl-int/lit8 v2, v9, 0x18

    or-int/2addr v10, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    sget v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    const v3, 0xffffff

    and-int v19, v2, v3

    shl-int/lit8 v2, v9, 0x18

    or-int v19, v19, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget v3, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    const/4 v4, 0x0

    sget v5, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v2, :cond_5

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    :goto_1
    invoke-static {v12}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    const/4 v8, 0x1

    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sget v3, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int/2addr v2, v3

    add-int v20, v2, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v21

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    div-int/lit8 v2, v21, 0x2

    sget v3, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    add-int v14, v2, v3

    add-int v2, v14, v18

    move/from16 v0, v21

    if-le v2, v0, :cond_3

    add-int v2, v14, v18

    sub-int v2, v2, v21

    sub-int/2addr v14, v2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    add-int/2addr v14, v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int v3, v3, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    return-void

    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    invoke-super/range {p0 .. p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x40000000

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v1, v3, v4

    int-to-float v3, v2

    div-float/2addr v3, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f0000

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    move v0, v3

    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mStayPressed:Z

    if-nez v5, :cond_3

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_4

    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    :cond_4
    iput-boolean v4, p0, Lcom/android/launcher2/AppIconView;->mStayPressed:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    move v1, v3

    :goto_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_2
.end method

.method protected generateShadowIfNeeded()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    if-eqz v6, :cond_0

    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher2/ShadowGen;->startInBackground(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public getAnimGroup()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getDimAmount()F
    .locals 1

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    return v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHotseatScaleFactor()F
    .locals 2

    const/high16 v0, 0x3f800000

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMovieDrawable()Lcom/android/launcher2/MovieDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    return-object v0
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTextVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hideBadge()V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected initBadgeValue()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    const v1, 0x7f0c01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    const v1, 0x7f0c01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    const v1, 0x7f0c00b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    const v1, 0x7f0c00b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    return-void
.end method

.method protected initMovieIconValue()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    const v1, 0x7f0c01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    const v1, 0x7f0c01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    const v1, 0x7f0c01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    const v1, 0x7f0c01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimmed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mPressedGlowColor:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->mPressedOutlineColor:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher2/AppIconView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    const v2, 0x3ecccccd

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :pswitch_1
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_2
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/BaseItem;

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    return-void
.end method

.method public resetShadow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    return-void
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setPressedOrFocusedIcon(Lcom/android/launcher2/AppIconView;)V

    :cond_0
    return-void

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppIconView;->playCheckStatus(Z)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCheckingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDimAmount(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 6

    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-ne v5, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_5

    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    instance-of v5, p0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    if-nez v5, :cond_3

    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher2/AppIconView;->setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget v2, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method setDrawShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    return-void
.end method

.method public setHotseatText(Lcom/android/launcher2/HomeItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0a0014

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppIconView"

    const-string v1, "setTextVisible to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0a0015

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;Z)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_0
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    invoke-static {v2}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/FastBitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    invoke-virtual {p0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/Utilities;->CreateScaledBitmapWithNormalSize(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIconMovie(Landroid/graphics/Movie;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v1, Lcom/android/launcher2/MovieDrawable;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v5, v5}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v1, v2, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v4, v1, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v2, Lcom/android/launcher2/MovieDrawable;

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0, v6, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    if-eqz p2, :cond_0

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v3, v3, 0x3

    invoke-static {p2, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v3, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v7

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v6, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setIconShadow(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    int-to-float v2, v2

    div-float v0, v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :cond_0
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setIconShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setLastTouchPoint(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method protected shouldHaveIconShadow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showBadge()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v4, :cond_4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_3

    move-object v2, v3

    check-cast v2, Lcom/android/launcher2/BaseItem;

    const/4 v1, 0x0

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    :cond_1
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-le v4, v7, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00b7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0101

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void

    :cond_4
    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-ne v4, v7, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f00b6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    iget-object v1, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public startFadeShadow()V
    .locals 3

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMovieValues()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    const v1, 0x7f0c01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    const v1, 0x7f0c01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    const v1, 0x7f0c01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    const v1, 0x7f0c01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    const v1, 0x7f0c01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    const v1, 0x7f0c01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    return-void
.end method
