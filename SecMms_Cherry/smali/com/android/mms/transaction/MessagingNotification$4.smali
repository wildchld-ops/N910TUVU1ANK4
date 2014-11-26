.class final Lcom/android/mms/transaction/MessagingNotification$4;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateMessageIndicator(Landroid/content/Context;JZJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isStatusMessage:Z

.field final synthetic val$msgId:J

.field final synthetic val$msgType:I

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JZJI)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$threadId:J

    iput-boolean p4, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$isStatusMessage:Z

    iput-wide p5, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$msgId:J

    iput p7, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$msgType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$threadId:J

    iget-boolean v3, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$isStatusMessage:Z

    iget-wide v4, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$msgId:J

    iget v6, p0, Lcom/android/mms/transaction/MessagingNotification$4;->val$msgType:I

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateMessageIndicator(Landroid/content/Context;JZJI)V

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
