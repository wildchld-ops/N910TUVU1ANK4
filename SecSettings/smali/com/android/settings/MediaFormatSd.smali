.class public Lcom/android/settings/MediaFormatSd;
.super Landroid/app/Activity;
.source "MediaFormatSd.java"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/settings/MediaFormatSd$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$1;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/MediaFormatSd$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormatSd$2;-><init>(Lcom/android/settings/MediaFormatSd;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormatSd;I)Z
    .locals 1
    .param p0    # Lcom/android/settings/MediaFormatSd;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormatSd;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormatSd;)V
    .locals 0
    .param p0    # Lcom/android/settings/MediaFormatSd;

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private establishInitialState()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04014c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    const v1, 0x7f0b0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormatSd;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1    # I

    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f090770

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f090772

    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishFinalConfirmationState()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInitialView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mFinalView:Landroid/view/View;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormatSd;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MediaFormatSd;->establishInitialState()V

    :cond_0
    return-void
.end method
