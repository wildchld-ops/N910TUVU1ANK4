.class public abstract Lde/congrace/exp4j/ArrayUtil;
.super Ljava/lang/Object;
.source "ArrayUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reverse([D)[D
    .locals 6

    const/4 v0, 0x0

    array-length v4, p0

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
