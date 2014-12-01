.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;->validateFiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFiles:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$100(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$6;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # getter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mFilesHashMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1000(Lcom/android/mms/rcs/transaction/RcsFileTransfer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
