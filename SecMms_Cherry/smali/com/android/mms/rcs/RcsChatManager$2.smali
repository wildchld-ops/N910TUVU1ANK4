.class final Lcom/android/mms/rcs/RcsChatManager$2;
.super Ljava/lang/Object;
.source "RcsChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsChatManager;->runningUncompletedRcsJob(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsChatManager$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/rcs/RcsChatManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsChatManager;->updateRcsStatusToFailed(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsChatManager$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsChatManager;->processingPendingImTransaction(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/rcs/RcsChatManager$2;->val$context:Landroid/content/Context;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/rcs/RcsChatManager;->deleteHideRcsMessage(Landroid/content/Context;J)V

    return-void
.end method
