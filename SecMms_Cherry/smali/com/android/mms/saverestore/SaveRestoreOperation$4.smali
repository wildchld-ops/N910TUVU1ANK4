.class Lcom/android/mms/saverestore/SaveRestoreOperation$4;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->showErrorSuccessRestoreDialog(II)V
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

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$4;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$4;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/saverestore/SavedMsgsList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$4;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$300(Lcom/android/mms/saverestore/SaveRestoreOperation;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
