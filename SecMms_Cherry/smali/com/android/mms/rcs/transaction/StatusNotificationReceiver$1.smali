.class Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;
.super Ljava/lang/Object;
.source "StatusNotificationReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;->onFTCanceled(Ljava/lang/Long;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;

.field final synthetic val$ftSessionId:Ljava/lang/Long;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->this$0:Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;

    iput-object p2, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$ftSessionId:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->this$0:Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;

    iget-object v0, v0, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->this$0:Lcom/android/mms/rcs/transaction/StatusNotificationReceiver;

    iget-object v1, v1, Lcom/android/mms/rcs/transaction/NotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$uri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$values:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "session_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/rcs/transaction/StatusNotificationReceiver$1;->val$ftSessionId:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
