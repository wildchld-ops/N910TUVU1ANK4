.class Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskStack"
.end annotation


# instance fields
.field private final mThingsToLoad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;",
            ">;"
        }
    .end annotation
.end field

.field mWorkerThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)V

    const-string v2, "msg:contact cache task"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/Contact$ContactsCache$TaskStack;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public pop(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;
    .locals 3

    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->equals(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;

    monitor-exit v2

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2

    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public push(Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;)V
    .locals 2

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mThingsToLoad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
