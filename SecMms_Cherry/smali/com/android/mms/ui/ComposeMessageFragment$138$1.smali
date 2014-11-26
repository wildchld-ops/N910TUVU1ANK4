.class Lcom/android/mms/ui/ComposeMessageFragment$138$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$138;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$138;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$138;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$138$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$138;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$138$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$138;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$138;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    # invokes: Lcom/android/mms/ui/ComposeMessageFragment;->checkPendingNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$10800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    return-void
.end method
