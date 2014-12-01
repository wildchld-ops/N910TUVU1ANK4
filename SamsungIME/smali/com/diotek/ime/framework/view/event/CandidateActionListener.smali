.class public Lcom/diotek/ime/framework/view/event/CandidateActionListener;
.super Ljava/lang/Object;
.source "CandidateActionListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/diotek/ime/framework/common/InputManager;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCandidateExpanded()V
    .locals 0

    return-void
.end method

.method public onCandidateHidden()V
    .locals 0

    return-void
.end method

.method public onCandidateReduced()V
    .locals 0

    return-void
.end method

.method public onCandidateSelected(ILjava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onCandidateShown()V
    .locals 0

    return-void
.end method

.method public onFlipDown(ILjava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onFlipLeft(ILjava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFlipRight(ILjava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFlipUp(ILjava/lang/CharSequence;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/view/event/CandidateActionListener;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    return v0
.end method
