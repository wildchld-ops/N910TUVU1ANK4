.class public interface abstract Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageStatusListener"
.end annotation


# virtual methods
.method public abstract onAttachmentChanged(I)V
.end method

.method public abstract onAttachmentError(I)V
.end method

.method public abstract onMaxPendingMessagesReached()V
.end method

.method public abstract onMessageSent()V
.end method

.method public abstract onPreMessageSent()V
.end method

.method public abstract onProtocolChanged(ZI)V
.end method
