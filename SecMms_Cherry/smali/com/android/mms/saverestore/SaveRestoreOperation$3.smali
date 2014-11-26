.class Lcom/android/mms/saverestore/SaveRestoreOperation$3;
.super Ljava/lang/Object;
.source "SaveRestoreOperation.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/saverestore/SaveRestoreOperation;->showMmsSelectedDialog([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

.field final synthetic val$ids:[J


# direct methods
.method constructor <init>(Lcom/android/mms/saverestore/SaveRestoreOperation;[J)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$3;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iput-object p2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$3;->val$ids:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    iget-object v0, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$3;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    iget-object v1, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$3;->val$ids:[J

    iget-object v2, p0, Lcom/android/mms/saverestore/SaveRestoreOperation$3;->this$0:Lcom/android/mms/saverestore/SaveRestoreOperation;

    # getter for: Lcom/android/mms/saverestore/SaveRestoreOperation;->mIsThreadId:Z
    invoke-static {v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$500(Lcom/android/mms/saverestore/SaveRestoreOperation;)Z

    move-result v2

    # invokes: Lcom/android/mms/saverestore/SaveRestoreOperation;->showSavedMsgsListDialog([JZ)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/saverestore/SaveRestoreOperation;->access$900(Lcom/android/mms/saverestore/SaveRestoreOperation;[JZ)V

    return-void
.end method
