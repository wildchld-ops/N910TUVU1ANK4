.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;
.super Ljava/lang/Object;
.source "AbstractKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showSymbolPopupKeyboard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v0, v6, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/diotek/ime/framework/common/InputManager;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->getWindowWidth()I

    move-result v4

    iget-object v5, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v3, v3, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v4, "SYMBOLS_PAGE"

    invoke-interface {v3, v4, v2}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_3

    iget-object v3, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$15;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v3}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isSymbolPopupKeyboardOnScreen()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method
