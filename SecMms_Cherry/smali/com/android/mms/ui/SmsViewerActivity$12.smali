.class Lcom/android/mms/ui/SmsViewerActivity$12;
.super Ljava/lang/Object;
.source "SmsViewerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsViewerActivity;->markAsRead(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsViewerActivity;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsViewerActivity;Landroid/content/ContentValues;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->val$values:Landroid/content/ContentValues;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    # getter for: Lcom/android/mms/ui/SmsViewerActivity;->msgUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/SmsViewerActivity;->access$1000(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    iget-boolean v0, v0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    # getter for: Lcom/android/mms/ui/SmsViewerActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/SmsViewerActivity;->access$300(Lcom/android/mms/ui/SmsViewerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SmsViewerActivity$12;->this$0:Lcom/android/mms/ui/SmsViewerActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/SmsViewerActivity;->update_seen:Z

    return-void
.end method
