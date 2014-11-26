.class public Lcom/android/keyguard/EmergencyCarrierArea;
.super Landroid/widget/LinearLayout;
.source "EmergencyCarrierArea.java"


# instance fields
.field private mBackupPinButton:Landroid/widget/Button;

.field private mCarrierText:Lcom/android/keyguard/CarrierText;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mForgotPatternButton:Landroid/widget/Button;

.field private mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/CarrierText;
    .locals 1
    .param p0    # Lcom/android/keyguard/EmergencyCarrierArea;

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/EmergencyCarrierArea;)Lcom/android/keyguard/MSimCarrierText;
    .locals 1
    .param p0    # Lcom/android/keyguard/EmergencyCarrierArea;

    iget-object v0, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    return-object v0
.end method


# virtual methods
.method public isShowingBackupButtons()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPinButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPinButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v1, 0x7f0b0060

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CarrierText;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sIsMultiSimEnabled:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v1, 0x7f0b0102

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/MSimCarrierText;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mMSimCarrierText:Lcom/android/keyguard/MSimCarrierText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mCarrierText:Lcom/android/keyguard/CarrierText;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f0b0061

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/EmergencyButton;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const v1, 0x7f0b0063

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mBackupPinButton:Landroid/widget/Button;

    const v1, 0x7f0b0062

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->enableMultiSelection(Z)V

    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    new-instance v2, Lcom/android/keyguard/EmergencyCarrierArea$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyCarrierArea$1;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/EmergencyCarrierArea;->mForgotPatternButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/EmergencyCarrierArea$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyCarrierArea$2;-><init>(Lcom/android/keyguard/EmergencyCarrierArea;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method
