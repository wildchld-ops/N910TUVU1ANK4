.class Lcom/android/mms/ui/SlideshowActivity$15;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->markAsRead(Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;

.field final synthetic val$callback:Ljava/lang/Runnable;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$15;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    iput-object p2, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$msgUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$15;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$msgUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$15;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    # getter for: Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z
    invoke-static {v0}, Lcom/android/mms/ui/SlideshowActivity;->access$2700(Lcom/android/mms/ui/SlideshowActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$15;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNotificationAsRead(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$15;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mms/ui/SlideshowActivity;->mUpdateSeen:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideshowActivity;->access$2702(Lcom/android/mms/ui/SlideshowActivity;Z)Z

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$15;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
