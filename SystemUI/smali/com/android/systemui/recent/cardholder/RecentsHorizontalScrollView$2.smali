.class Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;
.super Ljava/lang/Object;
.source "RecentsHorizontalScrollView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;->createBottomStackOutAnimation()Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$ydiff:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;

    iput-object p2, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$ydiff:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1    # Landroid/view/animation/Animation;

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1    # Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->this$0:Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;

    iget-object v3, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;->getScrollPosition(Landroid/view/View;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$ydiff:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView;->setScrollPosition(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recent/cardholder/RecentsHorizontalScrollView$2;->val$v:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method
