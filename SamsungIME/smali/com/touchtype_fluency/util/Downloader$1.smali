.class final Lcom/touchtype_fluency/util/Downloader$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/Downloader;->doDownload(Z)V
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

    iput-object p1, p0, Lcom/touchtype_fluency/util/Downloader$1;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$1;->a:Lcom/touchtype_fluency/util/Downloader;

    iget-object v1, p0, Lcom/touchtype_fluency/util/Downloader$1;->a:Lcom/touchtype_fluency/util/Downloader;

    invoke-static {v1}, Lcom/touchtype_fluency/util/Downloader;->a(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/Downloader;->onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V

    return-void
.end method
