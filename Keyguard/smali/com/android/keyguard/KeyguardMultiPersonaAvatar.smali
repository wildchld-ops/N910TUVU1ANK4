.class Lcom/android/keyguard/KeyguardMultiPersonaAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiPersonaAvatar.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mAvatarShadowY:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

.field private mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPersonaImage:Landroid/widget/ImageView;

.field private mPersonaInfo:Landroid/content/pm/PersonaInfo;

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInit:Z

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mTextColor:I

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mIconSize:F

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mStroke:F

    const v1, 0x7f0c000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mShadowRadius:F

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFrameColor:I

    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFrameShadowColor:I

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mHighlightColor:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveTextAlpha:F

    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInactiveTextAlpha:F

    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveScale:F

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mActiveAlpha:F

    iput v2, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mInactiveAlpha:F

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mAvatarShadowY:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mTouched:Z

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public getPersonaInfo()Landroid/content/pm/PersonaInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mPersonaInfo:Landroid/content/pm/PersonaInfo;

    return-object v0
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMUMLook2013()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFramedRec:Lcom/android/keyguard/KeyguardRectangleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardRectangleFramedDrawable;->setPressed(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mPersonaImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiPersonaAvatar;->mFramed:Lcom/android/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    goto :goto_0
.end method
