.class Lcom/android/mms/cover/MissedMsgActivity$4;
.super Ljava/lang/Object;
.source "MissedMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/cover/MissedMsgActivity;->initResourceLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/cover/MissedMsgActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/cover/MissedMsgActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "Mms/MissedMsgActivity"

    const-string v1, "Exit preview message"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    # setter for: Lcom/android/mms/cover/MissedMsgActivity;->mIsFinishing:Z
    invoke-static {v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$802(Z)Z

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->sEnablePreview:Z
    invoke-static {}, Lcom/android/mms/cover/MissedMsgActivity;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mShowMsgPreview:Z
    invoke-static {v0}, Lcom/android/mms/cover/MissedMsgActivity;->access$200(Lcom/android/mms/cover/MissedMsgActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$4$1;-><init>(Lcom/android/mms/cover/MissedMsgActivity$4;)V

    iget-object v2, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    # getter for: Lcom/android/mms/cover/MissedMsgActivity;->mCurrentIdx:I
    invoke-static {v2}, Lcom/android/mms/cover/MissedMsgActivity;->access$1100(Lcom/android/mms/cover/MissedMsgActivity;)I

    move-result v2

    # invokes: Lcom/android/mms/cover/MissedMsgActivity;->markAsRead(Ljava/lang/Runnable;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/cover/MissedMsgActivity;->access$1200(Lcom/android/mms/cover/MissedMsgActivity;Ljava/lang/Runnable;IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    iget-object v0, v0, Lcom/android/mms/cover/MissedMsgActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/cover/MissedMsgActivity$4$2;

    invoke-direct {v1, p0}, Lcom/android/mms/cover/MissedMsgActivity$4$2;-><init>(Lcom/android/mms/cover/MissedMsgActivity$4;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/mms/cover/MissedMsgActivity$4;->this$0:Lcom/android/mms/cover/MissedMsgActivity;

    invoke-virtual {v0, v4, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method
