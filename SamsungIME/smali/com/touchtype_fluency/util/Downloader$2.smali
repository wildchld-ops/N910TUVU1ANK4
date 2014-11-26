.class final Lcom/touchtype_fluency/util/Downloader$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/Downloader;->cancelDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->b(Lcom/touchtype_fluency/util/Downloader;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$2;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v0}, Lcom/touchtype_fluency/util/Downloader;->a(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/util/HttpDownload;->interrupt()V

    return-void
.end method
