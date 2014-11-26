.class Lcom/android/mms/animation/MsgListSelectionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MsgListSelectionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/animation/MsgListSelectionAnimation;->prepareContainerSlideOutAnimate(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/mms/animation/MsgListSelectionAnimation;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$3;->this$0:Lcom/android/mms/animation/MsgListSelectionAnimation;

    iput-object p2, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$3;->val$v:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$3;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$3;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/animation/MsgListSelectionAnimation$3;->val$v:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
