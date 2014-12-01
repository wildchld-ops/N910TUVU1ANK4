.class Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;
.super Ljava/lang/Object;
.source "AbstractCandidateCustomButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isMiniKeyboardOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout$1;->this$0:Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
