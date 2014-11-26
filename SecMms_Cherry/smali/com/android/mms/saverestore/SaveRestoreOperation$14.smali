.class Lcom/android/mms/saverestore/SaveRestoreOperation$14;
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

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I
    .param p4    # Landroid/text/Spanned;
    .param p5    # I
    .param p6    # I

    const v4, 0x7f0c0142

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83d

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd83c

    if-eq v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x25e4

    if-le v1, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x270f

    if-ge v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->val$ctx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1702(Lcom/android/mms/saverestore/SaveRestoreOperation;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, ""

    :goto_2
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$14;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$1700(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method
