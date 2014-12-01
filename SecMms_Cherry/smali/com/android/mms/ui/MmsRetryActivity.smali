.class public Lcom/android/mms/ui/MmsRetryActivity;
.super Landroid/app/Activity;
.source "MmsRetryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsRetryActivity"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMessageUri:Landroid/net/Uri;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    const-string v5, "Mms/MmsRetryActivity"

    const-string v6, "createNewSlideshow() started"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/MmsRetryActivity;->mMessageUri:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    new-instance v3, Lcom/android/mms/model/SlideModel;

    invoke-direct {v3, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    const-string v5, "Mms/MmsRetryActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "slideshow.getCurrentMessageSize() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeForResizing()I

    move-result v6

    if-le v5, v6, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MmsRetryActivity;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->MmsResizeForRetry(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v5, "Mms/MmsRetryActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v5, "Mms/MmsRetryActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v5, "Mms/MmsRetryActivity"

    const-string v6, "Message size is not over 500KB, no need to resize"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Mms/MmsRetryActivity"

    const-string v2, "onCreate() started"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsRetryActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsRetryActivity;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/MmsRetryActivity;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Mms/MmsRetryActivity"

    const-string v2, "mMessageUri is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsRetryActivity;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MmsRetryActivity;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mms/MmsRetryActivity"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
