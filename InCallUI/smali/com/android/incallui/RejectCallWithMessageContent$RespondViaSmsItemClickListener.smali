.class public Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RejectCallWithMessageContent.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/RejectCallWithMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/RejectCallWithMessageContent;


# direct methods
.method public constructor <init>(Lcom/android/incallui/RejectCallWithMessageContent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0e028a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- message: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v1, v1, Lcom/android/incallui/RejectCallWithMessageContent;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/RejectCallWithMessageContent$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/RejectCallWithMessageContent;

    iget-object v1, v1, Lcom/android/incallui/RejectCallWithMessageContent;->mOnItemClickListener:Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;

    invoke-interface {v1, v0}, Lcom/android/incallui/RejectCallWithMessageContent$OnItemClickListener;->rejectCallWithMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
