.class public Lcom/android/settings/fingerprint/FingerprintEffectView;
.super Landroid/widget/FrameLayout;
.source "FingerprintEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualeffectFingerprint"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "VisualeffectFingerprint"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "VisualeffectFingerprint"

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mContext:Landroid/content/Context;

    const-string v6, "VisualeffectFingerprint"

    const-string v7, "FingerprintEffectView : init"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x26c

    const/16 v1, 0x358

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v6, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->mContext:Landroid/content/Context;

    const v8, -0xff776e

    invoke-direct {v6, v7, v2, v1, v8}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;-><init>(Landroid/content/Context;III)V

    iput-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-virtual {p0, v6, v2, v1}, Lcom/android/settings/fingerprint/FingerprintEffectView;->addView(Landroid/view/View;II)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    int-to-float v7, v3

    invoke-virtual {v6, v7}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setX(F)V

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->setY(F)V

    return-void
.end method


# virtual methods
.method public scan()V
    .locals 2

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "FingerprintEffectView : scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->getCurrentStatus()Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;->CLEAN:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect$EffectStatus;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEffectView;->startEffect()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scan()V

    goto :goto_0
.end method

.method public scanFail()V
    .locals 2

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "FingerprintEffectView : scanFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->scanFail()V

    return-void
.end method

.method public startEffect()V
    .locals 2

    const-string v0, "VisualeffectFingerprint"

    const-string v1, "FingerprintEffectView : startEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEffectView;->fingereffect:Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/fingerprint/FingerprintEffect;->startEffect()V

    return-void
.end method
