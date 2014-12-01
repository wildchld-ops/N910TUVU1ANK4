.class Lcom/android/mms/saverestore/SaveRestoreOperation$10;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$10;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$10;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$10;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-boolean v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mNoSdCard:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$10;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$10;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v0, v0, Lcom/android/mms/saverestore/SaveRestoreOperation;->mAltDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
