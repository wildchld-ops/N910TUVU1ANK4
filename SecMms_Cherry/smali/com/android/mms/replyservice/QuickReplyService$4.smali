.class Lcom/android/mms/replyservice/QuickReplyService$4;
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

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$4;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$4;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$4;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$700(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/content/Context;

    move-result-object v1

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->launchMessage(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lcom/android/mms/replyservice/QuickReplyService;->access$1800(Lcom/android/mms/replyservice/QuickReplyService;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/replyservice/QuickReplyService$4;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
