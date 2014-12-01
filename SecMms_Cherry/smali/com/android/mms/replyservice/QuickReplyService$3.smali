.class Lcom/android/mms/replyservice/QuickReplyService$3;
.super Ljava/lang/Object;
.source "QuickReplyService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/replyservice/QuickReplyService;->initCustomLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/QuickReplyService;


# direct methods
.method constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$1700(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$1700(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->getRecipients()Lcom/android/mms/data/ContactList;
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$1700(Lcom/android/mms/replyservice/QuickReplyService;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->sendMarkAsReadIntent()V
    invoke-static {v0}, Lcom/android/mms/replyservice/QuickReplyService;->access$1600(Lcom/android/mms/replyservice/QuickReplyService;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$3;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
