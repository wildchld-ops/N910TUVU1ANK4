.class Lcom/android/incallui/AnswerGrowpadFragment$1;
.super Ljava/lang/Object;
.source "AnswerGrowpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerGrowpadFragment;->showMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerGrowpadFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerGrowpadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerGrowpadFragment$1;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment$1;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    # getter for: Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerGrowpadFragment;->access$000(Lcom/android/incallui/AnswerGrowpadFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerGrowpadFragment$1;->this$0:Lcom/android/incallui/AnswerGrowpadFragment;

    # getter for: Lcom/android/incallui/AnswerGrowpadFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerGrowpadFragment;->access$000(Lcom/android/incallui/AnswerGrowpadFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    :cond_0
    return-void
.end method
