.class Lcom/android/mms/saverestore/SaveRestoreOperation$12;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    const/4 v2, 0x0

    const v8, 0x7f0c0398

    const/16 v6, 0x32

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v3

    sub-int v4, p6, p5

    sub-int/2addr v3, v4

    rsub-int/lit8 v1, v3, 0x32

    if-gtz v1, :cond_3

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v4, v8, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1702(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_1
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const-string v2, ""

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    const v5, 0x7f0c0398

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1702(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_2
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$12;->val$ctx:Landroid/content/Context;

    const v4, 0x7f0c0398

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/16 v7, 0x32

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "Mms/SaveRestoreOperation"

    const-string v3, "InputFilter IndexOutOfBoundsExce"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ""

    goto/16 :goto_0
.end method
