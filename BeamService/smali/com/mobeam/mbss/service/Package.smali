.class public Lcom/mobeam/mbss/service/Package;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public hash:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public sigs:Lcom/mobeam/mbss/service/StringSet;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobeam/mbss/service/StringSet;

    invoke-direct {v0}, Lcom/mobeam/mbss/service/StringSet;-><init>()V

    iput-object v0, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/mobeam/mbss/service/StringSet;

    invoke-direct {v0}, Lcom/mobeam/mbss/service/StringSet;-><init>()V

    iput-object v0, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    iput-object p1, p0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    iput-object p3, p0, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    iput p4, p0, Lcom/mobeam/mbss/service/Package;->versionCode:I

    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
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

    instance-of v2, p1, Lcom/mobeam/mbss/service/Package;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/mobeam/mbss/service/Package;

    iget v2, p0, Lcom/mobeam/mbss/service/Package;->versionCode:I

    iget v3, p1, Lcom/mobeam/mbss/service/Package;->versionCode:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    iget-object v3, p1, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mobeam/mbss/service/Package;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mobeam/mbss/service/Package;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    iget-object v3, p1, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    invoke-static {v2, v3}, Lcom/mobeam/mbss/service/Package;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/mobeam/mbss/service/Package;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/mobeam/mbss/service/Package;->versionCode:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    invoke-virtual {v0}, Ljava/util/AbstractSet;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mobeam/mbss/service/Package;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Package;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mobeam/mbss/service/Package;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Package;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mobeam/mbss/service/Package;->sigs:Lcom/mobeam/mbss/service/StringSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
