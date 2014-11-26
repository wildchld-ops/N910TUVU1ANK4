.class public Lcom/android/internal/policy/impl/SubPhoneWindow;
.super Lcom/android/internal/policy/impl/PhoneWindow;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;,
        Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SubPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStatusBarHeight:I

.field private mSubPhoneWindowListener:Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneWindowListener;

.field private mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

.field private mVibrator:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mTrasnparentColor:Landroid/graphics/drawable/ColorDrawable;

    iput-object p1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mStatusBarHeight:I

    return-void
.end method


# virtual methods
.method protected generateDecor()Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .locals 3

    new-instance v0, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SubPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/SubPhoneWindow$SubPhoneDecorView;-><init>(Lcom/android/internal/policy/impl/SubPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method
