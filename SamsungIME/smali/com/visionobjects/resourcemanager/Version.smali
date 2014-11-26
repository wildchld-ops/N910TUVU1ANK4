.class public Lcom/visionobjects/resourcemanager/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/visionobjects/resourcemanager/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mFields:[I

.field private final mString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/visionobjects/resourcemanager/Version;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/visionobjects/resourcemanager/Version;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/resourcemanager/Version;)V
    .locals 1
    .param p1    # Lcom/visionobjects/resourcemanager/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iget-object v0, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    iput-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v11, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    const-string v8, ""

    iput-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    new-array v8, v9, [I

    iput-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iget-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    const/4 v3, -0x2

    new-array v7, v5, [I

    const/4 v2, 0x0

    :goto_0
    if-eq v3, v11, :cond_3

    iget-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v11, :cond_2

    :try_start_0
    iget-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v8, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v8, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v8, Lcom/visionobjects/resourcemanager/Version;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Number version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is corrupted"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    aput v8, v7, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    new-array v8, v2, [I

    iput-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_0

    iget-object v8, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v9, v7, v4

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ArrayIndexOutOfBoundsException in VODB Version. index : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", i : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", offset : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lcom/visionobjects/resourcemanager/Version;)I
    .locals 8
    .param p1    # Lcom/visionobjects/resourcemanager/Version;

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    iget-object v7, p1, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    array-length v1, v6

    iget-object v6, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    array-length v2, v6

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_0

    if-ne v1, v0, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    iget-object v6, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v7, v7, v0

    if-le v6, v7, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v6, v6, v0

    iget-object v7, p1, Lcom/visionobjects/resourcemanager/Version;->mFields:[I

    aget v7, v7, v0

    if-le v6, v7, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/visionobjects/resourcemanager/Version;

    invoke-virtual {p0, p1}, Lcom/visionobjects/resourcemanager/Version;->compareTo(Lcom/visionobjects/resourcemanager/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/visionobjects/resourcemanager/Version;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/visionobjects/resourcemanager/Version;

    invoke-virtual {p0, p1}, Lcom/visionobjects/resourcemanager/Version;->compareTo(Lcom/visionobjects/resourcemanager/Version;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/resourcemanager/Version;->mString:Ljava/lang/String;

    return-object v0
.end method
