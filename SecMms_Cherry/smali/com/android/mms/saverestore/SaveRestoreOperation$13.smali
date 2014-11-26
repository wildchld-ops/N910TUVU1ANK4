.class Lcom/android/mms/saverestore/SaveRestoreOperation$13;
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

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    const v7, 0x7f0c0142

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1800()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    :goto_1
    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1800()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->INVALID_CHAR:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1800()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v5, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->val$ctx:Landroid/content/Context;

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v4, v5}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1702(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_2
    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    :goto_3
    return-object v4

    :cond_2
    iget-object v4, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$13;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method
