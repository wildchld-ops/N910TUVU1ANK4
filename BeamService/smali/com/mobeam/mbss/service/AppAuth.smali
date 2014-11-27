.class public Lcom/mobeam/mbss/service/AppAuth;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public appPackage:Lcom/mobeam/mbss/service/Package;

.field public userID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/mobeam/mbss/service/AppAuth;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/mobeam/mbss/service/AppAuth;

    iget-object v2, p0, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    iget-object v3, p1, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    invoke-virtual {v2, v3}, Lcom/mobeam/mbss/service/Package;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    iget-object v3, p1, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    invoke-virtual {v0}, Lcom/mobeam/mbss/service/Package;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppAuth [appPackage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/mbss/service/AppAuth;->appPackage:Lcom/mobeam/mbss/service/Package;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/AppAuth;->userID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
