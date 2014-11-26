.class Lcom/android/mms/data/WorkingMessage$7;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncSendLocation(Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$locked:Z

.field final synthetic val$mBodyString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$7;->val$mBodyString:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/mms/data/WorkingMessage$7;->val$locked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$7;->val$mBodyString:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage$7;->val$locked:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->SendFreeMessageWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$7;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$7;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method
