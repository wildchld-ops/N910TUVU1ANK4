.class public Lcom/sec/epdg/IWlanError;
.super Ljava/lang/Object;
.source "IWlanError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IWlanError$IkeError;,
        Lcom/sec/epdg/IWlanError$EpdgError;
    }
.end annotation


# instance fields
.field private mDetails:Ljava/lang/String;

.field private mError:Lcom/sec/epdg/IWlanError$EpdgError;

.field private mIkeError:Lcom/sec/epdg/IWlanError$IkeError;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/epdg/IWlanError;-><init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/epdg/IWlanError$EpdgError;Ljava/lang/String;Lcom/sec/epdg/IWlanError$IkeError;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/epdg/IWlanError;->mError:Lcom/sec/epdg/IWlanError$EpdgError;

    iput-object p2, p0, Lcom/sec/epdg/IWlanError;->mDetails:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/epdg/IWlanError;->mError:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-eq v0, v1, :cond_0

    if-eqz p3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code should be passed only if error type is IKE_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/epdg/IWlanError;->mError:Lcom/sec/epdg/IWlanError$EpdgError;

    sget-object v1, Lcom/sec/epdg/IWlanError$EpdgError;->IKE_NEGOTIATION_ERROR:Lcom/sec/epdg/IWlanError$EpdgError;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ike error code not specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p3, p0, Lcom/sec/epdg/IWlanError;->mIkeError:Lcom/sec/epdg/IWlanError$IkeError;

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanError;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/sec/epdg/IWlanError$EpdgError;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanError;->mError:Lcom/sec/epdg/IWlanError$EpdgError;

    return-object v0
.end method

.method public getIkeError()Lcom/sec/epdg/IWlanError$IkeError;
    .locals 1

    iget-object v0, p0, Lcom/sec/epdg/IWlanError;->mIkeError:Lcom/sec/epdg/IWlanError$IkeError;

    return-object v0
.end method
