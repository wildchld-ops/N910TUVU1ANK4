.class Lcom/android/mms/rcs/transaction/RcsFileTransfer$7;
.super Ljava/lang/Object;
.source "RcsFileTransfer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsFileTransfer;->createImageResizeDialog(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$7;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsFileTransfer$7;->this$0:Lcom/android/mms/rcs/transaction/RcsFileTransfer;

    # setter for: Lcom/android/mms/rcs/transaction/RcsFileTransfer;->mSelectedResizeType:I
    invoke-static {v0, p2}, Lcom/android/mms/rcs/transaction/RcsFileTransfer;->access$1502(Lcom/android/mms/rcs/transaction/RcsFileTransfer;I)I

    return-void
.end method
