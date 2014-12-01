.class public Lcom/voovio/servlet/ServletTaskResult;
.super Ljava/lang/Object;
.source "ServletTaskResult.java"


# instance fields
.field strErrorMessage:Ljava/lang/String;

.field strResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/voovio/servlet/ServletTaskResult;->strErrorMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/voovio/servlet/ServletTaskResult;->strResponse:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/servlet/ServletTaskResult;->strErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voovio/servlet/ServletTaskResult;->strResponse:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/servlet/ServletTaskResult;->strErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public setResponse(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voovio/servlet/ServletTaskResult;->strResponse:Ljava/lang/String;

    return-void
.end method
