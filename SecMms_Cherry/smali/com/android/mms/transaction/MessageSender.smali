.class public interface abstract Lcom/android/mms/transaction/MessageSender;
.super Ljava/lang/Object;
.source "MessageSender.java"


# static fields
.field public static final RECIPIENTS_SEPARATOR:Ljava/lang/String; = ";"


# virtual methods
.method public abstract queueMessageForPending(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method

.method public abstract sendMessage(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method

.method public abstract sendSpamRec(JLandroid/net/Uri;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation
.end method

.method public abstract setPriorityLevel(I)V
.end method

.method public abstract setSimSlot(I)V
.end method
