.class Lcom/android/incallui/AnswerGrowpadFragment$3;
.super Ljava/lang/Object;
.source "AnswerGrowpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerGrowpadFragment;->showCustomMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerGrowpadFragment;

.field final synthetic val$et:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerGrowpadFragment;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerGrowpadFragment$3;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    iput-object p2, p0, Lcom/android/incallui/AnswerGrowpadFragment$3;->val$et:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment$3;->val$et:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment$3;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    # invokes: Lcom/android/incallui/AnswerGrowpadFragment;->dismissCustomMessagePopup()V
    invoke-static {v1}, Lcom/android/incallui/AnswerGrowpadFragment;->access$100(Lcom/android/incallui/AnswerGrowpadFragment;)V

    iget-object v1, p0, Lcom/android/incallui/AnswerGrowpadFragment$3;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    return-void
.end method
