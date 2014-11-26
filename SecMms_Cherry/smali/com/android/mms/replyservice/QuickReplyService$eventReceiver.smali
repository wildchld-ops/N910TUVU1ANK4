.class Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickReplyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/replyservice/QuickReplyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "eventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/replyservice/QuickReplyService;


# direct methods
.method private constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/replyservice/QuickReplyService;Lcom/android/mms/replyservice/QuickReplyService$1;)V
    .locals 0
    .param p1    # Lcom/android/mms/replyservice/QuickReplyService;
    .param p2    # Lcom/android/mms/replyservice/QuickReplyService$1;

    invoke-direct {p0, p1}, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;-><init>(Lcom/android/mms/replyservice/QuickReplyService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.FindingLostPhonePlus.SUBSCRIBE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    iget-object v2, p0, Lcom/android/mms/replyservice/QuickReplyService$eventReceiver;->this$0:Lcom/android/mms/replyservice/QuickReplyService;

    # getter for: Lcom/android/mms/replyservice/QuickReplyService;->mReplyPopup:Landroid/view/View;
    invoke-static {v2}, Lcom/android/mms/replyservice/QuickReplyService;->access$100(Lcom/android/mms/replyservice/QuickReplyService;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    # invokes: Lcom/android/mms/replyservice/QuickReplyService;->setPopupSlideAnimation(Landroid/view/View;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/replyservice/QuickReplyService;->access$200(Lcom/android/mms/replyservice/QuickReplyService;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
