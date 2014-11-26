.class public Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
.super Landroid/widget/FrameLayout;
.source "LensFlareEffect.java"


# static fields
.field private static final sound_tap_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_tap.ogg"

.field private static final sound_unlock_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_unlock.ogg"


# instance fields
.field private final AFFORDANCE_OFF_DURATION:I

.field private final AFFORDANCE_ON_DURATION:I

.field private final DBG:Z

.field private final FADEOUT_ANIMATION_DURATION:I

.field private FINGER_HOVER_Y_OFFSET:I

.field private final FOG_MAX_ALPHA:F

.field private final FOG_ON_DURATION:I

.field private final HEXAGON_CIRCLE_TOTAL:I

.field private HEXAGON_TAP_TOTAL:I

.field private HEXAGON_TOTAL:I

.field private final HOVER_DURATION:I

.field private final HOVER_LIGHT_IN_DURATION:I

.field private final HOVER_LIGHT_OUT_DURATION:I

.field private MAX_ALPHA_DISTANCE:I

.field private PEN_HOVER_Y_OFFSET:I

.field private final SHOW_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TAP_ANIMATION_DURATION:I

.field private TAP_AREA_RADIUS:I

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private final X_OFFSET:I

.field private Y_OFFSET:I

.field private affordanceAnimationValue:F

.field private affordanceOffAnimator:Landroid/animation/ValueAnimator;

.field private affordanceOnAnimator:Landroid/animation/ValueAnimator;

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private createdDelaytime:J

.field private currentX:F

.field private currentY:F

.field private defaultConfig:Landroid/graphics/Bitmap$Config;

.field private defaultInSampleSize:F

.field private distance:D

.field private distancePerMaxAlpha:F

.field private fadeOutAnimator:Landroid/animation/ValueAnimator;

.field private fadeoutAnimationValue:F

.field private fogAlpha:F

.field private fogAnimationValue:F

.field private fogOnAnimator:Landroid/animation/ValueAnimator;

.field private globalAlpha:F

.field private hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private hexagonDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hexagonRes:[I

.field private hexagonRotation:[I

.field private hexagonScale:[F

.field private hexagon_blue_id:I

.field private hexagon_green_id:I

.field private hexagon_orange_id:I

.field private hoverAnimator:Landroid/animation/ValueAnimator;

.field private hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private hoverLightAnimationValue:F

.field private hoverLightInAnimator:Landroid/animation/ValueAnimator;

.field private hoverLightOutAnimator:Landroid/animation/ValueAnimator;

.field private hoverX:F

.field private hoverY:F

.field private hoverlight_id:I

.field private isBeforeInit:Z

.field private isPlayAffordance:Z

.field private isSoundEnable:Z

.field private isSystemSoundChecked:Z

.field private isTouched:Z

.field private lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private lightObj:Landroid/widget/FrameLayout;

.field private lightTap:Landroid/widget/FrameLayout;

.field private light_id:I

.field private longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private long_light_id:I

.field private mContext:Landroid/content/Context;

.field private mFirstCreatedRunnable:Ljava/lang/Runnable;

.field private objAlpha:F

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private particle_id:I

.field private rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private rainbow_id:I

.field private randomRotation:F

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private ring_id:I

.field private screenHeight:I

.field private screenWidth:I

.field private showStartX:F

.field private showStartY:F

.field private sound_tap:I

.field private sound_unlock:I

.field private soundpool:Landroid/media/SoundPool;

.field private tapAnimationValue:F

.field private tapAnimator:Landroid/animation/ValueAnimator;

.field private tapHexRandomPoint:[Landroid/graphics/Point;

.field private tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private tapHexagonScale:[F

.field private tap_sound_id:I

.field private unlockAnimationValue:F

.field private unlockAnimator:Landroid/animation/ValueAnimator;

.field private unlock_sound_id:I

.field private vignetting:Landroid/widget/ImageView;

.field private vignettingAlpha:F

.field private vignetting_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;

    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedHover()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedHoverLight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)F
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedAffordance()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/animation/Animator;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # Landroid/animation/Animator;

    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Z)Z
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAnimationValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lensFlareinit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/media/SoundPool;
    .locals 1
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # Landroid/media/SoundPool;

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragAlpha()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedTap()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedFadeOut()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1    # F

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .locals 0
    .param p0    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedUnlock()V

    return-void
.end method

.method private animatedAffordance()V
    .locals 2

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method private animatedDragAlpha()V
    .locals 5

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAnimationValue:F

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const/high16 v3, 0x40400000

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    invoke-direct {p0, v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private animatedDragPos()V
    .locals 12

    const/high16 v6, 0x3f800000

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    mul-float/2addr v0, v6

    add-float v11, v6, v0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    neg-float v0, v0

    const/high16 v2, 0x41f00000

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const/high16 v3, 0x43200000

    mul-float/2addr v2, v3

    sub-float v10, v0, v2

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v0, v10}, Landroid/view/View;->setRotation(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    const/4 v9, 0x0

    :goto_0
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v9, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v1, v0, v9

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v7, v0, v9

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    aget v8, v0, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFFFI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private animatedFadeOut()V
    .locals 5

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private animatedHover()V
    .locals 6

    const/high16 v5, 0x40400000

    const/high16 v4, 0x40000000

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private animatedHoverLight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private animatedTap()V
    .locals 19

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const/high16 v16, 0x3f000000

    cmpg-float v15, v15, v16

    if-gez v15, :cond_0

    const/high16 v1, 0x3f800000

    :goto_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    mul-float/2addr v1, v15

    const v15, 0x3e4ccccd

    const v16, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v2, v15, v16

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v3, v15, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    aget v15, v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd

    mul-float v16, v16, v17

    const v17, 0x3f333333

    add-float v16, v16, v17

    mul-float v10, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v13, v15, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v14, v15, v16

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-virtual {v3, v13}, Landroid/view/View;->setX(F)V

    invoke-virtual {v3, v14}, Landroid/view/View;->setY(F)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x3f000000

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3fe66666

    mul-float v11, v15, v16

    const/high16 v15, 0x3f000000

    cmpg-float v15, v11, v15

    if-gez v15, :cond_2

    const/high16 v15, 0x3f800000

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3f99999a

    mul-float v6, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3fb33333

    mul-float v12, v15, v16

    const/high16 v15, 0x3f000000

    cmpg-float v15, v12, v15

    if-gez v15, :cond_3

    const/high16 v15, 0x3f800000

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    add-float v9, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/high16 v15, 0x3fc00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    add-float v5, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    move/from16 v16, v0

    const/high16 v17, 0x41f00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setRotation(F)V

    return-void

    :cond_2
    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f000000

    sub-float v16, v11, v16

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_2

    :cond_3
    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f000000

    sub-float v16, v12, v16

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_3
.end method

.method private animatedUnlock()V
    .locals 9

    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    const/high16 v2, 0x3f000000

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    const v1, 0x3fa66666

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    mul-float v7, v0, v4

    :goto_0
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v0, v7}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v7, v3, v0

    goto :goto_0
.end method

.method private calculateDistance(FF)V
    .locals 8
    .param p1    # F
    .param p2    # F

    const-wide/high16 v6, 0x4000000000000000L

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    sub-float v0, p1, v2

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    sub-float v1, p2, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    iget-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private cleanUpAllViews()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private getCorrectAlpha(F)F
    .locals 3
    .param p1    # F

    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gtz v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private hoverEnter(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private hoverExit()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private hoverMove(FF)V
    .locals 1
    .param p1    # F
    .param p2    # F

    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    return-void
.end method

.method private lensFlareinit()V
    .locals 7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "LensFlare"

    const-string v5, "this.getChildCount() == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    if-ge v4, v5, :cond_2

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    :goto_0
    const-string v4, "LensFlare"

    const-string v5, "lensFlareinit ============================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smallestWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0.8"

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLOBALCONFIG_LOCKSCREEN_LIGHT_OPACITY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    const/16 v4, 0x438

    if-eq v3, v4, :cond_0

    int-to-float v4, v3

    const/high16 v5, 0x44870000

    div-float v2, v4, v5

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    :cond_0
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y_OFFSET : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_ALPHA_DISTANCE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAP_AREA_RADIUS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setLayout()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHover()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagon()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setTapHexagon()V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAnimator()V

    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    return-void

    :cond_2
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    goto/16 :goto_0
.end method

.method private playSound(I)V
    .locals 7
    .param p1    # I

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method private playUnlockAffordance()V
    .locals 7

    const/high16 v6, 0x3f800000

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "LensFlare"

    const-string v1, "playUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagonRandomTarget(Z)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/16 v0, 0x8

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x2

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$2;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$3;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$4;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$5;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$5;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_5

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$6;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$6;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/BackEaseOut;

    const/high16 v2, 0x41000000

    invoke-direct {v1, v2}, Landroid/view/animation/interpolator/BackEaseOut;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_7

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$8;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$8;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_9

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$10;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$10;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f19999a
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_3
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_7
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f19999a
    .end array-data

    :array_9
    .array-data 4
        0x3f19999a
        0x0
    .end array-data
.end method

.method private setCenterPos(Landroid/view/View;FFFFF)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/high16 v3, 0x40000000

    sub-float v2, p4, p2

    mul-float/2addr v2, p6

    add-float v0, v2, p2

    sub-float v2, p5, p3

    mul-float/2addr v2, p6

    add-float v1, v2, p3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    :cond_0
    return-void
.end method

.method private setCenterPos(Landroid/view/View;FFFFFFI)V
    .locals 18
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F
    .param p7    # F
    .param p8    # I

    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v13, v13

    const/high16 v14, 0x44340000

    div-float/2addr v13, v14

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    mul-float v12, p7, v8

    mul-float v9, v12, v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    sub-float v12, p4, p2

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v10, v12, p2

    sub-float v12, p5, p3

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v11, v12, p3

    if-eqz p8, :cond_0

    const/high16 v12, 0x43960000

    mul-float v1, p7, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v12, v12

    const/high16 v13, 0x447a0000

    div-float/2addr v12, v13

    mul-float v12, v12, p7

    mul-float v6, v12, p7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v13, 0x3f800000

    mul-float v5, v12, v13

    move/from16 v0, p8

    int-to-double v12, v0

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L

    div-double/2addr v12, v14

    float-to-double v14, v6

    add-double/2addr v12, v14

    float-to-double v14, v5

    add-double v3, v12, v14

    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v10, v12, p4

    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v11, v12, p5

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method private setHexagon()V
    .locals 8

    const/4 v7, -0x2

    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    aput v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    aput v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    aput v5, v3, v4

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    array-length v3, v3

    iput v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v3, :cond_0

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034000000000000L

    mul-double/2addr v3, v5

    double-to-float v2, v3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHexagonRandomTarget(Z)V
    .locals 17
    .param p1    # Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v11, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    :cond_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v9, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    const v12, 0x3e4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x3fe99999a0000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    const/high16 v11, 0x3f000000

    const/high16 v12, 0x3f000000

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float v1, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v11, v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const v8, 0x3e4ccccd

    const v2, 0x3e75c28f

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v5, v11, :cond_2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f000000

    sub-float/2addr v11, v12

    const v12, 0x3ecccccd

    mul-float v6, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v4, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v3, v11, v4

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    add-int/lit8 v11, v11, 0x0

    if-ge v4, v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const v13, 0x3dcccccd

    add-float/2addr v11, v13

    aput v11, v12, v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v11, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    const v12, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    :cond_5
    return-void
.end method

.method private setHover()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverlight_id:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # Landroid/graphics/Bitmap$Config;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    if-nez p3, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    return-void

    :cond_0
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private setLayout()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting_id:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->light_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->long_light_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method private setSound()V
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopReleaseSound()V

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    if-ne v4, v6, :cond_3

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSystemSoundChecked:Z

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    if-nez v5, :cond_2

    new-instance v5, Landroid/media/SoundPool;

    const/16 v8, 0xa

    invoke-direct {v5, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    const-string v5, "LensFlare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sound ID get from path sound_tap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound_unlock = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tap_sound_id:I

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock_sound_id:I

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    :cond_1
    const-string v5, "LensFlare"

    const-string v6, "LensFlare sound : load"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v5, v7

    goto/16 :goto_1
.end method

.method private setTapHexagon()V
    .locals 10

    const/4 v9, -0x2

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v5, v5, [Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iput-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v5, :cond_0

    rem-int/lit8 v2, v1, 0x3

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_1
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4076800000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    int-to-float v5, v3

    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aput-object v0, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_0
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    goto :goto_1

    :pswitch_1
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    goto :goto_1

    :pswitch_2
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopReleaseSound()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private stopUnlockAffordance()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "LensFlare"

    const-string v1, "remove delayed UnlockAffordance callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    const-string v0, "LensFlare"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUpAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopReleaseSound()V

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getUnlockDelay()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_0

    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverExit()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    :goto_1
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverEnter(FF)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverMove(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_1

    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    :goto_1
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show(FF)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->move(FF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hide()V

    goto :goto_0
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const-string v0, "LensFlare"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock()V

    return-void
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public move(FF)V
    .locals 2
    .param p1    # F
    .param p2    # F

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->calculateDistance(FF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragAlpha()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    goto :goto_0
.end method

.method public playLockSound()V
    .locals 2

    const-string v0, "LensFlare"

    const-string v1, "playSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "LensFlare"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUpAllViews()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 0

    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    const-string v0, "LensFlare"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    return-void
.end method

.method public setImageResourceId(IIIIIIIIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I
    .param p10    # I

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    iput p2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    iput p3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    iput p4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverlight_id:I

    iput p5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->light_id:I

    iput p6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->long_light_id:I

    iput p7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle_id:I

    iput p8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow_id:I

    iput p9, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring_id:I

    iput p10, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting_id:I

    return-void
.end method

.method public setSoundResourceId(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tap_sound_id:I

    iput p2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock_sound_id:I

    return-void
.end method

.method public show()V
    .locals 4

    const-string v0, "LensFlare"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_0

    const-string v0, "LensFlare"

    const-string v1, "isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.postDelayed, createdDelaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setSound()V

    return-void
.end method

.method public show(FF)V
    .locals 7
    .param p1    # F
    .param p2    # F

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    add-float v0, p1, v2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagonRandomTarget(Z)V

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 4
    .param p1    # J
    .param p3    # Landroid/graphics/Rect;

    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 5

    iget-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v1, :cond_0

    const-string v1, "LensFlare"

    const-string v2, "unlock before init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lensFlareinit()V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x42200000

    sub-float v0, v1, v2

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public update()V
    .locals 0

    return-void
.end method
