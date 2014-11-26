.class Lcom/android/mms/rcs/RcsChatManager$1;
.super Ljava/lang/Object;
.source "RcsChatManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsChatManager;->requestCaps(ZLjava/lang/String;Ljava/lang/String;ZZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsChatManager;

.field final synthetic val$queryUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsChatManager;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsChatManager$1;->this$0:Lcom/android/mms/rcs/RcsChatManager;

    iput-object p2, p0, Lcom/android/mms/rcs/RcsChatManager$1;->val$queryUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsChatManager$1;->this$0:Lcom/android/mms/rcs/RcsChatManager;

    # getter for: Lcom/android/mms/rcs/RcsChatManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/rcs/RcsChatManager;->access$000(Lcom/android/mms/rcs/RcsChatManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/RcsChatManager$1;->this$0:Lcom/android/mms/rcs/RcsChatManager;

    # getter for: Lcom/android/mms/rcs/RcsChatManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/rcs/RcsChatManager;->access$000(Lcom/android/mms/rcs/RcsChatManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/rcs/RcsChatManager$1;->val$queryUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/rcs/transaction/ServiceProvider;->SERVICE_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
