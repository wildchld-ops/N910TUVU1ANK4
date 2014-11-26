.class Lcom/android/mms/rcs/transaction/RcsBaseTransaction$2;
.super Ljava/lang/Object;
.source "RcsBaseTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->sendFallbackMessageMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$2;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$2;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$2;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    # getter for: Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->mFallbackMessages:Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;
    invoke-static {v1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->access$100(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->hideRcsMessage(Lcom/android/mms/rcs/transaction/RcsBaseTransaction$RcsInfo;)V

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/RcsBaseTransaction$2;->this$0:Lcom/android/mms/rcs/transaction/RcsBaseTransaction;

    # invokes: Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->unbindFallbackService()V
    invoke-static {v0}, Lcom/android/mms/rcs/transaction/RcsBaseTransaction;->access$200(Lcom/android/mms/rcs/transaction/RcsBaseTransaction;)V

    return-void
.end method
