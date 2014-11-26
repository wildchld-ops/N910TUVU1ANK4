.class Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact$ContactsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableUpdateContact"
.end annotation


# instance fields
.field private mContact:Lcom/android/mms/data/Contact;

.field final synthetic this$0:Lcom/android/mms/data/Contact$ContactsCache;


# direct methods
.method public constructor <init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 1
    .param p2    # Lcom/android/mms/data/Contact;

    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->mContact:Lcom/android/mms/data/Contact;

    iput-object p2, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->mContact:Lcom/android/mms/data/Contact;

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/mms/data/Contact;)Z
    .locals 1
    .param p1    # Lcom/android/mms/data/Contact;

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->mContact:Lcom/android/mms/data/Contact;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized run()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->this$0:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache$RunnableUpdateContact;->mContact:Lcom/android/mms/data/Contact;

    const/4 v3, 0x0

    # invokes: Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact$ContactsCache;->access$100(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "Mms/ContactsCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
