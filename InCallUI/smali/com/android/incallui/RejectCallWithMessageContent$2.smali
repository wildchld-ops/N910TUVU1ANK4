.class Lcom/android/incallui/RejectCallWithMessageContent$2;
.super Ljava/lang/Object;
.source "RejectCallWithMessageContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/RejectCallWithMessageContent;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContent;


# direct methods
.method constructor <init>(Lcom/android/incallui/RejectCallWithMessageContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent$2;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "RejectCallWithMessageContent"

    const-string v1, "AnswerMemo Button clicked"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$2;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v0, v0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/RejectCallWithMessageContent$2;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v0, v0, Lcom/android/incallui/RejectCallWithMessageContent;->mOnAnswerMemoClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;

    invoke-interface {v0}, Lcom/android/incallui/RejectCallWithMessageContent$OnAnswerMemoClickListener;->rejectWithAnswerMemo()V

    :cond_0
    return-void
.end method
