.class Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$3;
.super Ljava/lang/Object;
.source "CandidatePrevNextButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$3;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout$3;->this$0:Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;

    # getter for: Lcom/diotek/ime/framework/view/candidate/AbstractCandidateCustomButtonLayout;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;->access$100(Lcom/diotek/ime/implement/view/candidate/CandidatePrevNextButtonLayout;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    :cond_0
    return-void
.end method
