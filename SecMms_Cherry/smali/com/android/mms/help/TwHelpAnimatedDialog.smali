.class public Lcom/android/mms/help/TwHelpAnimatedDialog;
.super Lcom/android/mms/help/TwHelpDialog;
.source "TwHelpAnimatedDialog.java"


# static fields
.field private static final ANIMATIOT_START_OFFSET:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Mms/TwHelpAnimatedDialog"


# instance fields
.field private mBubbleAnimation:Landroid/view/animation/Animation;

.field private mCurrentPointAnimation:I

.field private mCurrentPointAnimation3:I

.field private mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

.field private mPointAnimationView_land:Landroid/view/View;

.field private mPointAnimationView_pot:Landroid/view/View;

.field private mPointAnimationView_pot2:Landroid/view/View;

.field private mPointAnimations_land:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPointAnimations_pot:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPointAnimations_pot2:Ljava/util/List;
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
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;I)V

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Z
    .param p3    # Landroid/content/DialogInterface$OnCancelListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/help/TwHelpDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    iput v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$4;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$4;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$5;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$5;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/android/mms/help/TwHelpAnimatedDialog$6;

    invoke-direct {v0, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$6;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->init(Landroid/content/Context;)V

    return-void
.end method

.method private SetAnimationEffectonLand(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    const v1, 0x7f050006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerLand:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x7f050000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$3;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$3;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private SetAnimationEffectonPot(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    const v1, 0x7f050006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x7f050000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$1;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$1;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method private SetAnimationEffectonPot2(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    const v1, 0x7f050006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f050009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f05000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationListenerPot2:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x7f050000

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/mms/help/TwHelpAnimatedDialog$2;

    invoke-direct {v1, p0}, Lcom/android/mms/help/TwHelpAnimatedDialog$2;-><init>(Lcom/android/mms/help/TwHelpAnimatedDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/animation/Animation;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I
    .locals 0
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return p1
.end method

.method static synthetic access$108(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/help/TwHelpAnimatedDialog;I)I
    .locals 0
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;
    .param p1    # I

    iput p1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/mms/help/TwHelpAnimatedDialog;)I
    .locals 2
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/help/TwHelpAnimatedDialog;)Ljava/util/List;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/help/TwHelpAnimatedDialog;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/mms/help/TwHelpAnimatedDialog;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonPot(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonLand(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/help/TwHelpAnimatedDialog;->SetAnimationEffectonPot2(Landroid/content/Context;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_land:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimations_pot2:Ljava/util/List;

    iget v2, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mCurrentPointAnimation3:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mBubbleAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopAnimation_land()V
    .locals 2

    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_land:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public stopAnimation_pot()V
    .locals 2

    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public stopAnimation_pot2()V
    .locals 2

    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/mms/help/TwHelpAnimatedDialog;->mPointAnimationView_pot2:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
