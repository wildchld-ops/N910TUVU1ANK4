.class Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;
.super Ljava/lang/Object;
.source "ShootingModeGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformAnimation"
.end annotation


# instance fields
.field public final animation:Landroid/view/animation/TranslateAnimation;

.field private final mAnimationView:Landroid/view/View;

.field mDuration:I

.field mFromX:I

.field mFromY:I

.field mOffset:I

.field mToX:I

.field mToY:I

.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Landroid/view/View;IIIIII)V
    .locals 10
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I

    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    iput-object p2, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mAnimationView:Landroid/view/View;

    iput p3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    iput p4, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    iput p5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    move/from16 v0, p6

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    move/from16 v0, p7

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromX:I

    int-to-float v3, v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToX:I

    int-to-float v5, v5

    const/4 v6, 0x0

    iget v7, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mFromY:I

    int-to-float v7, v7

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mToY:I

    int-to-float v9, v9

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;)V
    .locals 0
    .param p0    # Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;

    invoke-direct {p0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->startAnimation()V

    return-void
.end method

.method private startAnimation()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mOffset:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # setter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimating:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1102(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;Z)Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$400(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->mAnimationTimeHandler:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->access$1300(Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$AnimationTimeHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->mAnimationView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView$TransformAnimation;->animation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
