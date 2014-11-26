.class Lcom/android/mms/transaction/MessagingNotification$2;
.super Ljava/lang/Object;
.source "MessagingNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/MessagingNotification;->updateMsgInsertedState(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/MessagingNotification;

.field final synthetic val$boxType:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$m_type:I

.field final synthetic val$msgType:Ljava/lang/String;

.field final synthetic val$msgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/MessagingNotification;Ljava/lang/String;ILandroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/transaction/MessagingNotification$2;->this$0:Lcom/android/mms/transaction/MessagingNotification;

    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgType:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$boxType:I

    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgUri:Landroid/net/Uri;

    iput p6, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$m_type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-wide/16 v1, -0x2

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$boxType:I

    if-nez v0, :cond_1

    # getter for: Lcom/android/mms/transaction/MessagingNotification;->SMS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$100()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgUri:Landroid/net/Uri;

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowWriteMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v6, -0x2

    move-wide v4, v1

    invoke-static/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification;->updateBadgeforNonDefault(Landroid/content/Context;JZJI)V

    :cond_1
    return-void

    :cond_2
    # getter for: Lcom/android/mms/transaction/MessagingNotification;->MMS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$m_type:I

    const/16 v3, 0x82

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$2;->val$msgUri:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z

    goto :goto_0
.end method
