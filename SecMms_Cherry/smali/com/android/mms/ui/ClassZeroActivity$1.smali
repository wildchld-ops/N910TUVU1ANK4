.class Lcom/android/mms/ui/ClassZeroActivity$1;
.super Landroid/os/Handler;
.source "ClassZeroActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # getter for: Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->cancelNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$300(Lcom/android/mms/ui/ClassZeroActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$1;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)V

    :cond_0
    return-void
.end method
