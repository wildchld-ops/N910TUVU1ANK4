.class Lcom/android/mms/ui/DraftMessageManager$10;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DraftMessageManager;->delayedRecipientRefresh(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$10;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    iget-object v0, p0, Lcom/android/mms/ui/DraftMessageManager$10;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    # getter for: Lcom/android/mms/ui/DraftMessageManager;->mMsgListAdapter:Lcom/android/mms/ui/DraftMessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/DraftMessageManager;->access$700(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/DraftMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/DraftMessageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
