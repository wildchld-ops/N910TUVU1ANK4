.class public Lcom/voovio/servlet/ServletTask;
.super Ljava/lang/Object;
.source "ServletTask.java"


# instance fields
.field strUrl:Ljava/lang/String;

.field strUrlParameters:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/servlet/ServletTask;->strUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/voovio/servlet/ServletTask;->strUrlParameters:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/servlet/ServletTask;->strUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlParameters()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/servlet/ServletTask;->strUrlParameters:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/servlet/ServletTask;->strUrl:Ljava/lang/String;

    return-void
.end method

.method public setUrlParameters(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/servlet/ServletTask;->strUrlParameters:Ljava/lang/String;

    return-void
.end method
