.class public abstract Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;
.super Landroid/widget/LinearLayout;
.source "AbstractSpellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;,
        Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;
    }
.end annotation


# static fields
.field private static final LEFT_RIGHT_MARGIN:I = 0x1b

.field private static final TOP_BOTTOM_MARGIN:I = 0x8


# instance fields
.field private mFloatingWindow:Landroid/widget/PopupWindow;

.field private mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mSpellText:Ljava/lang/CharSequence;

.field private mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-direct {v0, p0, v1}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;-><init>(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$1;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-void
.end method

.method static synthetic access$100(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLengthOfSpellText()I
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSpellViewId()I
.end method

.method protected abstract getSpellViewLeftEdge()I
.end method

.method protected abstract getSpellViewTextSize()F
.end method

.method protected abstract getTextColor()I
.end method

.method public init()V
    .locals 5

    const/16 v4, 0x1b

    const/16 v3, 0x8

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getSpellViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->getSpellViewTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    invoke-virtual {v0, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public isSpellViewShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setSpellView(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSpellViewShown(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    iget-object v1, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->postShowFloatingWindow()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mSpellTextView:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout;->mFloatingWindowTimer:Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/chinesespell/AbstractSpellLayout$PopupTimer;->cancelShowing()V

    goto :goto_0
.end method
