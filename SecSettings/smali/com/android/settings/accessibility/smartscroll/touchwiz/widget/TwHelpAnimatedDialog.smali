.class public Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;
.super Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mCurrentPointAnimation:I

.field private mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationView:Landroid/view/View;

.field private mPointAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mSummaryView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    new-instance v0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$008(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0    # Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mSummaryView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mSummaryView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/accessibility/smartscroll/touchwiz/widget/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
