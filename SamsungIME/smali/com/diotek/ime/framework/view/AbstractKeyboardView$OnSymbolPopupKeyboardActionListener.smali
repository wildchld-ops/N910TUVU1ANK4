.class Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;
.super Lcom/diotek/ime/framework/view/event/KeyboardActionListener;
.source "AbstractKeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/diotek/ime/framework/view/AbstractKeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSymbolPopupKeyboardActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;


# direct methods
.method private constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    invoke-direct {p0}, Lcom/diotek/ime/framework/view/event/KeyboardActionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;Lcom/diotek/ime/framework/view/AbstractKeyboardView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;-><init>(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->onKey(I[I)V

    const/16 v0, -0x6d

    if-eq p1, v0, :cond_0

    const/16 v0, -0xbe

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    # invokes: Lcom/diotek/ime/framework/view/AbstractKeyboardView;->changeSymbolPopupPage()V
    invoke-static {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->access$2700(Lcom/diotek/ime/framework/view/AbstractKeyboardView;)V

    :cond_1
    return-void
.end method

.method public onPress(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onPress(I)V

    return-void
.end method

.method public onRelease(I)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onRelease(I)V

    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/AbstractKeyboardView$OnSymbolPopupKeyboardActionListener;->this$0:Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    iget-object v0, v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    return-void
.end method
