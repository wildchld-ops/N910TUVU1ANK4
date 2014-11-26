.class Lcom/android/mms/saverestore/SaveRestoreOperation$1;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->showNoSmsSelectedDialog()V
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

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$1;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$1;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$1;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mSaveCompleteListener:Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$000(Lcom/android/mms/saverestore/SaveRestoreOperation;)Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation$SaveRestoreListener;->onSaveCompleted()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
