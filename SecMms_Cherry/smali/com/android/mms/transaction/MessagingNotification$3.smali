.class final Lcom/android/mms/transaction/MessagingNotification$3;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isStatusMessage:Z

.field final synthetic val$messageUri:Landroid/net/Uri;

.field final synthetic val$msgType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$messageUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$isStatusMessage:Z

    iput p4, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$msgType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$messageUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$isStatusMessage:Z

    iget v3, p0, Lcom/android/mms/transaction/MessagingNotification$3;->val$msgType:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZII)V

    const-string v0, "Mms/MessagingNotification"

    const-string v1, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
