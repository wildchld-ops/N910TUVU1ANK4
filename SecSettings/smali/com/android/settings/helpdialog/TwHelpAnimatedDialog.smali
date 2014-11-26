.class public Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;
.super Lcom/android/settings/helpdialog/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mBubbleAnimationView:Landroid/view/View;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/helpdialog/TwHelpDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$2;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$108(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    const v1, 0x7f050002

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050003

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050004

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050005

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x7f050000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog$1;-><init>(Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const v0, 0x7f0b000f

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public resetAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mPointAnimations:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/helpdialog/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method
