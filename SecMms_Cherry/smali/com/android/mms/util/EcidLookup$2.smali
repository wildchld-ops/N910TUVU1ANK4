.class final Lcom/android/mms/util/EcidLookup$2;
.super Ljava/lang/Object;
.source "EcidLookup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/EcidLookup;->delayedNotification(Landroid/content/Context;Landroid/net/Uri;ZLjava/lang/String;I)V
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

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/EcidLookup$2;->val$number:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/util/EcidLookup$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/util/EcidLookup$2;->val$messageUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/android/mms/util/EcidLookup$2;->val$isStatusMessage:Z

    iput p5, p0, Lcom/android/mms/util/EcidLookup$2;->val$msgType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    # getter for: Lcom/android/mms/util/EcidLookup;->sCache:Ljava/util/Map;
    invoke-static {}, Lcom/android/mms/util/EcidLookup;->access$200()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/util/EcidLookup$2;->val$number:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/EcidLookup$EcidContact;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->queryPending:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/util/EcidLookup$EcidContact;->pendingNotification:Ljava/lang/Runnable;

    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/EcidLookup$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/util/EcidLookup$2;->val$messageUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/util/EcidLookup$2;->val$isStatusMessage:Z

    iget v4, p0, Lcom/android/mms/util/EcidLookup$2;->val$msgType:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;Landroid/net/Uri;ZI)V

    return-void
.end method
