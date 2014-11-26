.class public Lcom/android/keyguard/sec/SecKeyguardFlightModeView;
.super Landroid/widget/LinearLayout;
.source "SecKeyguardFlightModeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AIRPLANE_ANIMATION_LANDING_DURATION:I

.field private TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConfirmDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDialogTheme:I

.field private mFlightModeIcon:Landroid/widget/ImageView;

.field private mFlightTextView:Landroid/widget/TextView;

.field private mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

.field private mTurnOffButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "SecKeyguardFlightModeView"

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$1;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/view/animation/ScaleAnimation;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;
    .param p1    # Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/keyguard/sec/SecKeyguardFlightModeView;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildDisableDialog()V
    .locals 5

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mDialogTheme:I

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    const-string v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Available()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->isUsb30Enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mDialogTheme:I

    invoke-direct {v0, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    if-eqz v1, :cond_1

    const v3, 0x10401e5

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x10401eb

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    if-eqz v1, :cond_2

    const v3, 0x10401ec

    :goto_2
    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$2;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;ZLandroid/hardware/usb/UsbManager;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v3, 0x1040009

    new-instance v4, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;

    invoke-direct {v4, p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$3;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v3, 0x10401e3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v3, 0x10401ea

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    const v3, 0x1040685

    goto :goto_2
.end method

.method private buildFlightAnimaion()V
    .locals 9

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f800000

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x0

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mScalseAnimationLanding:Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->AIRPLANE_ANIMATION_LANDING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private startFlightAnimation(Landroid/view/animation/ScaleAnimation;)V
    .locals 4
    .param p1    # Landroid/view/animation/ScaleAnimation;

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    const-string v2, "Anim is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView$4;-><init>(Lcom/android/keyguard/sec/SecKeyguardFlightModeView;Landroid/view/animation/ScaleAnimation;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public isTabletModel()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    const v2, 0x7f0600f6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    const v2, 0x7f0600f7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightModeIcon:Landroid/widget/ImageView;

    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->mFlightTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildFlightAnimaion()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/SecKeyguardFlightModeView;->buildDisableDialog()V

    return-void
.end method
