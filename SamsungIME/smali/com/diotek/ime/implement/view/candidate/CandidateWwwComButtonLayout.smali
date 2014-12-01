.class public Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;
.super Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;
.source "CandidateWwwComButtonLayout.java"


# static fields
.field private static final TAG_BUTTON_AT:Ljava/lang/String; = "button_at"

.field private static final TAG_BUTTON_DOT_COM:Ljava/lang/String; = "button_dot_com"

.field private static final TAG_BUTTON_WWW_DOT:Ljava/lang/String; = "button_www_dot"


# instance fields
.field private mLongpressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$9;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->showPopupWindow(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mLongpressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mSecondButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    return-object v0
.end method

.method private showPopupWindow(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputModeManager:Lcom/diotek/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/inputmode/InputModeManager;->isVOHWRmodeEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f08002d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    :goto_0
    invoke-virtual {v0}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->isPopupWindowShown()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/view/AbstractKeyboardView;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;

    invoke-direct {v1}, Lcom/diotek/ime/framework/view/KeboardKeyInfo;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    iget-object v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->codes:[I

    const/16 v3, -0x74

    aput v3, v2, v4

    const v2, 0x7f050213

    iput v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->popupResId:I

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->y:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/diotek/ime/framework/view/KeboardKeyInfo;->height:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/diotek/ime/framework/view/AbstractKeyboardView;->showPopupMiniKeyboard(Lcom/diotek/ime/framework/view/KeboardKeyInfo;I)Z

    goto :goto_1
.end method


# virtual methods
.method protected getButtonBackground(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020932

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method protected getButtonTypeface()Landroid/graphics/Typeface;
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/common/FontManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/FontManager;

    move-result-object v0

    const-string v1, "SAMSUNGSANS_KEYPAD"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-interface {v0, v1, v2}, Lcom/diotek/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method protected getFirstButtonId()I
    .locals 1

    const v0, 0x7f080017

    return v0
.end method

.method protected getSecondButtonId()I
    .locals 1

    const v0, 0x7f080018

    return v0
.end method

.method protected setButtonListener(Landroid/view/View;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    const-string v1, "button_at"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$1;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$2;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$2;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "button_www_dot"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$4;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    :cond_2
    const-string v1, "button_dot_com"

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$5;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$6;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$6;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$7;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$7;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_3
    new-instance v1, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;-><init>(Lcom/diotek/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method
