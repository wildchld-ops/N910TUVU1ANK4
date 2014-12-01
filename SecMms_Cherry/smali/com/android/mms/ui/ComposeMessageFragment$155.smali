.class Lcom/android/mms/ui/ComposeMessageFragment$155;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$155;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$155;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->RemoveToButton(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13500(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    return-void
.end method
