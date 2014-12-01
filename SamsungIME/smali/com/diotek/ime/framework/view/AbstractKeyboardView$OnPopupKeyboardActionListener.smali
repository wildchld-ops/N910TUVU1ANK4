.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;
.super Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPopupKeyboardActionListener"
.end annotation


# instance fields
.field private mDismissOnInput:Z

.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    return-void
.end method

.method public constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Z)V
    .locals 1

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    iput-boolean p2, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-nez v0, :cond_0

    const/16 v0, -0x7f

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isJapaneseLanguageMode()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_3

    const p1, 0xff1f

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/diotek/ime/framework/repository/InputStatus;->setFlagKeyLongpressed(Z)V

    return-void

    :cond_3
    const/16 v0, 0x21

    if-ne p1, v0, :cond_2

    const p1, 0xff01

    goto :goto_0
.end method

.method public onRelease(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->mDismissOnInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->dismissPopupKeyboard()V

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    return-void
.end method
