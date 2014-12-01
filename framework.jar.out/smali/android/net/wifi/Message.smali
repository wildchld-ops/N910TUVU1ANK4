.class public Landroid/net/wifi/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field private abortLogin:Ljava/net/URI;

.field private accessLocation:Ljava/lang/String;

.field private accessProcedure:Ljava/lang/String;

.field private comment:Ljava/lang/String;

.field private delayType:I

.field public hasWispr:Z

.field private locationName:Ljava/lang/String;

.field private loginResultURL:Ljava/net/URI;

.field private loginURL:Ljava/net/URI;

.field private logoffURL:Ljava/net/URI;

.field public messageType:I

.field private nextURL:Ljava/net/URI;

.field private replyMessage:Ljava/lang/String;

.field public responseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/Message;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginURL()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/Message;->loginURL:Ljava/net/URI;

    return-object v0
.end method

.method public getLogoffURL()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/Message;->logoffURL:Ljava/net/URI;

    return-object v0
.end method

.method public getNextURL()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/Message;->nextURL:Ljava/net/URI;

    return-object v0
.end method

.method public setAccessProcedure(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/Message;->accessProcedure:Ljava/lang/String;

    return-void
.end method

.method public setAccesslocation(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/wifi/Message;->accessLocation:Ljava/lang/String;

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/Message;->comment:Ljava/lang/String;

    return-void
.end method

.method public setLoginURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->loginURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setLogoffURL(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->logoffURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMessageType(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/Message;->messageType:I

    return-void
.end method

.method public setNextURL(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/Message;->nextURL:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setResponseCode(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/Message;->responseCode:I

    return-void
.end method
