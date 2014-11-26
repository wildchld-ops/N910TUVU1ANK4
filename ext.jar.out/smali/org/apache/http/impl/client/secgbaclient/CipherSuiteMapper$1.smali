.class final Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper$1;
.super Ljava/util/HashMap;
.source "CipherSuiteMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/impl/client/secgbaclient/CipherSuiteMapper;->initializeMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "[B>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "TLS_NULL_WITH_NULL_NULL"

    new-array v1, v2, [B

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_NULL_MD5"

    new-array v1, v2, [B

    fill-array-data v1, :array_1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NULL-MD5"

    new-array v1, v2, [B

    fill-array-data v1, :array_2

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_NULL_SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_3

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NULL-SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_4

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_NULL_SHA256"

    new-array v1, v2, [B

    fill-array-data v1, :array_5

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_RC4_128_MD5"

    new-array v1, v2, [B

    fill-array-data v1, :array_6

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RC4-MD5"

    new-array v1, v2, [B

    fill-array-data v1, :array_7

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_RC4_128_SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_8

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RC4-SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_9

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_a

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "DES-CBC3-SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_b

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_c

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES128-SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_d

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_e

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AES256-SHA"

    new-array v1, v2, [B

    fill-array-data v1, :array_f

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    new-array v1, v2, [B

    fill-array-data v1, :array_10

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    new-array v1, v2, [B

    fill-array-data v1, :array_11

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x0t
        0x2t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x3bt
    .end array-data

    nop

    :array_6
    .array-data 1
        0x0t
        0x4t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x0t
        0x4t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x0t
        0x5t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x0t
        0x5t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x0t
        0xat
    .end array-data

    nop

    :array_b
    .array-data 1
        0x0t
        0xat
    .end array-data

    nop

    :array_c
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_d
    .array-data 1
        0x0t
        0x2ft
    .end array-data

    nop

    :array_e
    .array-data 1
        0x0t
        0x35t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0x35t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x0t
        0x3ct
    .end array-data

    nop

    :array_11
    .array-data 1
        0x0t
        0x3dt
    .end array-data
.end method
