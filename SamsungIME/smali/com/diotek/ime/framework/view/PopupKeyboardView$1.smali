.class Lcom/diotek/ime/framework/view/PopupKeyboardView$1;
.super Ljava/lang/Object;
.source "PopupKeyboardView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/PopupKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/PopupKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    iget-object v2, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateFrame:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$000(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->getViewLocationInWindow(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateShown:Z
    invoke-static {v1}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$100(Lcom/diotek/ime/framework/view/PopupKeyboardView;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$200(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$300(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mCandidateViewHeight:I
    invoke-static {v3}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$200(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I

    move-result v3

    iget-object v4, p0, Lcom/diotek/ime/framework/view/PopupKeyboardView$1;->this$0:Lcom/diotek/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/diotek/ime/framework/view/PopupKeyboardView;->mMoveHandlerHeight:I
    invoke-static {v4}, Lcom/diotek/ime/framework/view/PopupKeyboardView;->access$300(Lcom/diotek/ime/framework/view/PopupKeyboardView;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method
