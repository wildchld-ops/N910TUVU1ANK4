.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Dialog;
.source "BrightnessDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessDialog"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private final mBrightnessDialogLongTimeout:I

.field private final mBrightnessDialogShortTimeout:I

.field private final mDismissDialogRunnable:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessDialog$1;-><init>(Lcom/android/systemui/settings/BrightnessDialog;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    return-void
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(I)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f0800b4

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->unregisterCallbacks()V

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    return-void
.end method
