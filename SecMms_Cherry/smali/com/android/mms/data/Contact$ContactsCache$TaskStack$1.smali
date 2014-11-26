.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method constructor <init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    # getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$200(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    # getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$200(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    # getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$200(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;->this$0:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    # getter for: Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->access$200(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Runnable;

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v2

    goto :goto_1
.end method
