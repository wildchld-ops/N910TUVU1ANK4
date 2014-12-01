.class Lcom/android/mms/saverestore/SavedMsgsList$16;
.super Ljava/lang/Object;
.source "SavedMsgsList.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SavedMsgsList;->getEditTextFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SavedMsgsList;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iput-object p2, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5

    const v4, 0x7f0c0142

    const/4 v0, 0x0

    :goto_0
    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3700()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->INVALID_CHAR:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3700()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3600(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    iget-object v2, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->val$ctx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    # setter for: Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3602(Lcom/android/mms/saverestore/SavedMsgsList;Landroid/widget/Toast;)Landroid/widget/Toast;

    :goto_1
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3600(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, ""

    :goto_2
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/saverestore/SavedMsgsList$16;->this$0:Lcom/android/mms/saverestore/SavedMsgsList;

    # getter for: Lcom/android/mms/saverestore/SavedMsgsList;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/saverestore/SavedMsgsList;->access$3600(Lcom/android/mms/saverestore/SavedMsgsList;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method
