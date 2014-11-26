.class public Lcom/android/mms/help/TwHelpDialog;
.super Landroid/app/Dialog;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/help/TwHelpDialog$1;,
        Lcom/android/mms/help/TwHelpDialog$TouchMode;
    }
.end annotation


# instance fields
.field private fPunchEvent:Z

.field private mShowWrongInputToast:Z

.field private mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

.field private mWrongInputToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const v0, 0x7f0e0014

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/mms/help/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/mms/help/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v3, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v2, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    sget-object v0, Lcom/android/mms/help/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    iput-object v0, p0, Lcom/android/mms/help/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03c9

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    iput-boolean v3, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    iput-boolean v2, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0, p3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method public getShowWrongInputToast()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    return v0
.end method

.method public getTouchTransparencyMode()Lcom/android/mms/help/TwHelpDialog$TouchMode;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    iput-boolean v5, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    :cond_0
    sget-object v1, Lcom/android/mms/help/TwHelpDialog$1;->$SwitchMap$com$android$mms$help$TwHelpDialog$TouchMode:[I

    iget-object v2, p0, Lcom/android/mms/help/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    :goto_0
    if-eq v0, v5, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    :cond_3
    return v4

    :pswitch_0
    iget-boolean v1, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/mms/help/TwHelpDialog;->fPunchEvent:Z

    if-eqz v1, :cond_5

    if-eq v0, v3, :cond_5

    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    if-eqz v1, :cond_1

    if-eq v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/mms/help/TwHelpDialog;->mWrongInputToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setShowWrongInputToast(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/mms/help/TwHelpDialog;->mShowWrongInputToast:Z

    return-void
.end method

.method public setTouchTransparencyMode(Lcom/android/mms/help/TwHelpDialog$TouchMode;)V
    .locals 0
    .param p1    # Lcom/android/mms/help/TwHelpDialog$TouchMode;

    iput-object p1, p0, Lcom/android/mms/help/TwHelpDialog;->mTouchTransparencyMode:Lcom/android/mms/help/TwHelpDialog$TouchMode;

    return-void
.end method
