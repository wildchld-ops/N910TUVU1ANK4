.class Lcom/android/mms/ui/ManageSDMessages$4$1;
.super Ljava/lang/Object;
.source "ManageSDMessages.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSDMessages$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSDMessages$4;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSDMessages$4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    new-instance v1, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v2, v2, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v3, v3, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const v4, 0x7f040064

    iget-object v5, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v5, v5, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->arMsgItem:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/mms/ui/ManageSDMessages;->access$400(Lcom/android/mms/ui/ManageSDMessages;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;-><init>(Lcom/android/mms/ui/ManageSDMessages;Landroid/content/Context;ILjava/util/ArrayList;)V

    # setter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$502(Lcom/android/mms/ui/ManageSDMessages;Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMessageListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSDMessages;->access$600(Lcom/android/mms/ui/ManageSDMessages;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v1, v1, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    # getter for: Lcom/android/mms/ui/ManageSDMessages;->mMsgListAdapter:Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ManageSDMessages;->access$500(Lcom/android/mms/ui/ManageSDMessages;)Lcom/android/mms/ui/ManageSDMessages$VMessageListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/mms/ui/ManageSDMessages$4$1;->this$1:Lcom/android/mms/ui/ManageSDMessages$4;

    iget-object v0, v0, Lcom/android/mms/ui/ManageSDMessages$4;->this$0:Lcom/android/mms/ui/ManageSDMessages;

    const/4 v1, 0x0

    # invokes: Lcom/android/mms/ui/ManageSDMessages;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ManageSDMessages;->access$700(Lcom/android/mms/ui/ManageSDMessages;I)V

    return-void
.end method
