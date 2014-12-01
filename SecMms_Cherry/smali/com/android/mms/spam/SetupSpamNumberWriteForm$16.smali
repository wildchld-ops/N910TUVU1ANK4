.class Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;
.super Ljava/lang/Object;
.source "SetupSpamNumberWriteForm.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showNumberConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z
    invoke-static {v1}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$700(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$600(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I

    move-result v3

    # invokes: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->addSpamNumber(Ljava/lang/String;I)I
    invoke-static {v1, v2, v3}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$800(Lcom/android/mms/spam/SetupSpamNumberWriteForm;Ljava/lang/String;I)I

    :goto_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    iget-object v2, v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I
    invoke-static {v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$600(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$16;->this$0:Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    # getter for: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I
    invoke-static {v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$900(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I

    move-result v5

    # invokes: Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->access$1000(Lcom/android/mms/spam/SetupSpamNumberWriteForm;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_0
.end method
