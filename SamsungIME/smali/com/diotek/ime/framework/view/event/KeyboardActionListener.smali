.class public Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.super Ljava/lang/Object;
.source "KeyboardActionListener.java"

# interfaces
.implements Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnKeyboardActionListener;


# instance fields
.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    return-void
.end method

.method public onPress(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public swipeDown()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeDown()V

    return-void
.end method

.method public swipeLeft()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeLeft()V

    return-void
.end method

.method public swipeRight()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeRight()V

    return-void
.end method

.method public swipeUp()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->swipeUp()V

    return-void
.end method
