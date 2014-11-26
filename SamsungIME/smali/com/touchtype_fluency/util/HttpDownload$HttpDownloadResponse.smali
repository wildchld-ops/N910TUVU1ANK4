.class public Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpDownloadResponse"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->b:Ljava/lang/String;

    iput p4, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->d:I

    iput-object p5, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->d:I

    return v0
.end method

.method public getResponseMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/touchtype_fluency/util/HttpDownload$HttpDownloadResponse;->c:Ljava/lang/String;

    return-object v0
.end method
