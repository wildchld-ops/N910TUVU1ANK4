.class final Lcom/android/mms/ui/MessageUtils$4;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageUri:Landroid/net/Uri;

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$imageUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$4;->val$cb:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    iput-boolean p5, p0, Lcom/android/mms/ui/MessageUtils$4;->val$append:Z

    iput-boolean p6, p0, Lcom/android/mms/ui/MessageUtils$4;->val$sendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v2, "Mms/MessageUtils"

    const-string v3, "resizeImageAsync new Thread"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$4;->val$imageUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const-string v2, "Mms/MessageUtils"

    const-string v3, "resizeImageAsync new Thread start"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$4;->val$handler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/MessageUtils$4$1;

    invoke-direct {v3, p0, v1}, Lcom/android/mms/ui/MessageUtils$4$1;-><init>(Lcom/android/mms/ui/MessageUtils$4;Lcom/google/android/mms/pdu/PduPart;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v2, "Mms/MessageUtils"

    const-string v3, "resizeImageAsync new Thread"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    const-string v3, "Mms/MessageUtils"

    const-string v4, "resizeImageAsync new Thread start"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
