.class final Lcom/android/mms/data/Conversation$5;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Conversation;->markAllConversationsAsRead(Landroid/content/Context;)V
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

    iput-object p1, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/mms/data/Conversation;->blockingMarkAllSmsMessagesAsRead(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1000(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/mms/data/Conversation;->blockingMarkAllMmsMessagesAsRead(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/android/mms/data/Conversation;->access$1100(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/mms/data/Conversation$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    return-void
.end method
