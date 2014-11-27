.class public Lcom/google/a/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final b:[C


# instance fields
.field public a:Z

.field private final c:Lcom/google/a/d/i;

.field private final d:Ljava/io/Reader;

.field private final e:[C

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[Lcom/google/a/d/d;

.field private k:I

.field private l:Lcom/google/a/d/e;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/a/d/a;->b:[C

    new-instance v0, Lcom/google/a/d/b;

    invoke-direct {v0}, Lcom/google/a/d/b;-><init>()V

    sput-object v0, Lcom/google/a/b/r;->a:Lcom/google/a/b/r;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/d/i;

    invoke-direct {v0}, Lcom/google/a/d/i;-><init>()V

    iput-object v0, p0, Lcom/google/a/d/a;->c:Lcom/google/a/d/i;

    iput-boolean v1, p0, Lcom/google/a/d/a;->a:Z

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/google/a/d/a;->e:[C

    iput v1, p0, Lcom/google/a/d/a;->f:I

    iput v1, p0, Lcom/google/a/d/a;->g:I

    iput v2, p0, Lcom/google/a/d/a;->h:I

    iput v2, p0, Lcom/google/a/d/a;->i:I

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/google/a/d/d;

    iput-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iput v1, p0, Lcom/google/a/d/a;->k:I

    sget-object v0, Lcom/google/a/d/d;->f:Lcom/google/a/d/d;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/d;)V

    iput-boolean v1, p0, Lcom/google/a/d/a;->q:Z

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/google/a/d/a;->d:Ljava/io/Reader;

    return-void
.end method

.method static synthetic a(Lcom/google/a/d/a;)Lcom/google/a/d/e;
    .locals 1

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    return-object v0
.end method

.method static synthetic a(Lcom/google/a/d/a;Lcom/google/a/d/e;)Lcom/google/a/d/e;
    .locals 0

    iput-object p1, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    new-instance v0, Lcom/google/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(C)Ljava/lang/String;
    .locals 8

    iget-object v5, p0, Lcom/google/a/d/a;->e:[C

    const/4 v0, 0x0

    :cond_0
    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v2, p0, Lcom/google/a/d/a;->g:I

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_5

    add-int/lit8 v3, v4, 0x1

    aget-char v4, v5, v4

    if-ne v4, p1, :cond_3

    iput v3, p0, Lcom/google/a/d/a;->f:I

    iget-boolean v2, p0, Lcom/google/a/d/a;->q:Z

    if-eqz v2, :cond_1

    const-string v0, "skipped!"

    :goto_1
    return-object v0

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/a/d/a;->c:Lcom/google/a/d/i;

    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Lcom/google/a/d/i;->a([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/16 v6, 0x5c

    if-ne v4, v6, :cond_7

    iput v3, p0, Lcom/google/a/d/a;->f:I

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    sub-int v2, v3, v1

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/a/d/a;->v()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v2, p0, Lcom/google/a/d/a;->g:I

    move-object v3, v0

    move v0, v1

    move v7, v1

    move v1, v2

    move v2, v7

    :goto_2
    move v4, v2

    move v2, v1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_6
    sub-int v2, v4, v1

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v4, p0, Lcom/google/a/d/a;->f:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "Unterminated string"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_7
    move v7, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v7

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/a/d/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/google/a/d/d;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/a/d/a;->k:I

    iget-object v1, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/a/d/a;->k:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/a/d/d;

    iget-object v1, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v2, p0, Lcom/google/a/d/a;->k:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v1, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->k:I

    aput-object p1, v0, v1

    return-void
.end method

.method private a(Lcom/google/a/d/e;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-void
.end method

.method private a(I)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->h:I

    iget v0, p0, Lcom/google/a/d/a;->i:I

    iget v6, p0, Lcom/google/a/d/a;->f:I

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-char v7, v5, v4

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/google/a/d/a;->h:I

    iput v0, p0, Lcom/google/a/d/a;->i:I

    iget v0, p0, Lcom/google/a/d/a;->g:I

    iget v2, p0, Lcom/google/a/d/a;->f:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/google/a/d/a;->g:I

    iget v2, p0, Lcom/google/a/d/a;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/google/a/d/a;->g:I

    iget v0, p0, Lcom/google/a/d/a;->f:I

    iget v2, p0, Lcom/google/a/d/a;->g:I

    invoke-static {v5, v0, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iput v3, p0, Lcom/google/a/d/a;->f:I

    :cond_2
    iget-object v0, p0, Lcom/google/a/d/a;->d:Ljava/io/Reader;

    iget v2, p0, Lcom/google/a/d/a;->g:I

    array-length v4, v5

    iget v6, p0, Lcom/google/a/d/a;->g:I

    sub-int/2addr v4, v6

    invoke-virtual {v0, v5, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    iget v2, p0, Lcom/google/a/d/a;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/a/d/a;->g:I

    iget v0, p0, Lcom/google/a/d/a;->h:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/a/d/a;->i:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/google/a/d/a;->g:I

    if-lez v0, :cond_3

    aget-char v0, v5, v3

    const v2, 0xfeff

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    iget v0, p0, Lcom/google/a/d/a;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->i:I

    :cond_3
    iget v0, p0, Lcom/google/a/d/a;->g:I

    if-lt v0, p1, :cond_2

    :goto_3
    return v1

    :cond_4
    iput v3, p0, Lcom/google/a/d/a;->g:I

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3
.end method

.method static synthetic b(Lcom/google/a/d/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v0

    return v0
.end method

.method private b(Z)Lcom/google/a/d/e;
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v1, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/a/d/d;->b:Lcom/google/a/d/d;

    aput-object v2, v0, v1

    :goto_0
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    invoke-direct {p0}, Lcom/google/a/d/a;->q()Lcom/google/a/d/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    iget v0, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->k:I

    sget-object v0, Lcom/google/a/d/e;->b:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    goto :goto_0

    :sswitch_3
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->k:I

    sget-object v0, Lcom/google/a/d/e;->b:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_1

    :cond_1
    :sswitch_4
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    const-string v0, "null"

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/e;->i:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_4
        0x3b -> :sswitch_4
        0x5d -> :sswitch_3
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_2
        0x5d -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic c(Lcom/google/a/d/a;)I
    .locals 1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v0

    return v0
.end method

.method private c(Z)Lcom/google/a/d/e;
    .locals 3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    :sswitch_0
    invoke-direct {p0, v1}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->e(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Expected name"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_0
    iget v0, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->k:I

    sget-object v0, Lcom/google/a/d/e;->d:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_1
    iget v0, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->k:I

    sget-object v0, Lcom/google/a/d/e;->d:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v1, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/a/d/d;->d:Lcom/google/a/d/d;

    aput-object v2, v0, v1

    sget-object v0, Lcom/google/a/d/e;->e:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private d(Z)I
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v0, p0, Lcom/google/a/d/a;->g:I

    :goto_0
    if-ne v1, v0, :cond_0

    iput v1, p0, Lcom/google/a/d/a;->f:I

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v0, p0, Lcom/google/a/d/a;->g:I

    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-char v1, v5, v1

    sparse-switch v1, :sswitch_data_0

    iput v4, p0, Lcom/google/a/d/a;->f:I

    move v0, v1

    :goto_1
    return v0

    :sswitch_0
    move v1, v4

    goto :goto_0

    :sswitch_1
    iput v4, p0, Lcom/google/a/d/a;->f:I

    if-ne v4, v0, :cond_1

    invoke-direct {p0, v3}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    iget v0, p0, Lcom/google/a/d/a;->f:I

    aget-char v0, v5, v0

    sparse-switch v0, :sswitch_data_1

    move v0, v1

    goto :goto_1

    :sswitch_2
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    const-string v1, "*/"

    :goto_2
    iget v0, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    iget v4, p0, Lcom/google/a/d/a;->g:I

    if-le v0, v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/a/d/a;->e:[C

    iget v6, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v6, v0

    aget-char v4, v4, v6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_4
    if-nez v0, :cond_6

    const-string v0, "Unterminated comment"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/a/d/a;->g:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    invoke-direct {p0}, Lcom/google/a/d/a;->u()V

    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v0, p0, Lcom/google/a/d/a;->g:I

    goto/16 :goto_0

    :sswitch_4
    iput v4, p0, Lcom/google/a/d/a;->f:I

    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    invoke-direct {p0}, Lcom/google/a/d/a;->u()V

    iget v1, p0, Lcom/google/a/d/a;->f:I

    iget v0, p0, Lcom/google/a/d/a;->g:I

    goto/16 :goto_0

    :cond_7
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "End of input at line "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, -0x1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x23 -> :sswitch_4
        0x2f -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2a -> :sswitch_2
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic d(Lcom/google/a/d/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/a/d/a;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private e(Z)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->o:I

    iput v2, p0, Lcom/google/a/d/a;->p:I

    move v1, v2

    move-object v0, v3

    :cond_0
    :goto_0
    iget v4, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/google/a/d/a;->g:I

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/a/d/a;->e:[C

    iget v5, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v5, v1

    aget-char v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    :goto_1
    :sswitch_1
    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/a/d/a;->f:I

    iput v0, p0, Lcom/google/a/d/a;->o:I

    :goto_2
    iget v0, p0, Lcom/google/a/d/a;->p:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->p:I

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/google/a/d/a;->e:[C

    array-length v4, v4

    if-ge v1, v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/google/a/d/a;->a(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/a/d/a;->e:[C

    iget v5, p0, Lcom/google/a/d/a;->g:I

    aput-char v2, v4, v5

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_3
    iget-object v4, p0, Lcom/google/a/d/a;->e:[C

    iget v5, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v0, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/google/a/d/a;->p:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/a/d/a;->p:I

    iget v4, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/a/d/a;->f:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/google/a/d/a;->q:Z

    if-eqz v2, :cond_5

    const-string v3, "skipped!"

    goto :goto_2

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/a/d/a;->c:Lcom/google/a/d/i;

    iget-object v2, p0, Lcom/google/a/d/a;->e:[C

    iget v3, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/a/d/i;->a([CII)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/google/a/d/a;->e:[C

    iget v3, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    move v1, v2

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private o()Lcom/google/a/d/e;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    iput-object v1, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    iput-object v1, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method private q()Lcom/google/a/d/e;
    .locals 11

    const/16 v9, 0x65

    const/16 v3, 0x4c

    const/16 v8, 0x45

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->e(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    iget v0, p0, Lcom/google/a/d/a;->p:I

    if-nez v0, :cond_0

    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :sswitch_0
    sget-object v0, Lcom/google/a/d/d;->c:Lcom/google/a/d/d;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/d;)V

    sget-object v0, Lcom/google/a/d/e;->c:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    :goto_0
    return-object v0

    :sswitch_1
    sget-object v0, Lcom/google/a/d/d;->a:Lcom/google/a/d/d;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/d;)V

    sget-object v0, Lcom/google/a/d/e;->a:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    :sswitch_3
    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/a/d/a;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/google/a/d/a;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    const/16 v0, 0x6e

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_1

    const/16 v0, 0x4e

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_1
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_2

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_6

    :cond_2
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_3
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_6

    :cond_4
    const-string v0, "null"

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/e;->i:Lcom/google/a/d/e;

    :goto_1
    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    :cond_5
    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/google/a/d/a;->p:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/16 v0, 0x74

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_7

    const/16 v0, 0x54

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_7
    const/16 v0, 0x72

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_8

    const/16 v0, 0x52

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_8
    const/16 v0, 0x75

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_9

    const/16 v0, 0x55

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_b

    :cond_9
    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_a

    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_b

    :cond_a
    const-string v0, "true"

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/e;->h:Lcom/google/a/d/e;

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/google/a/d/a;->p:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    const/16 v0, 0x66

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x46

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_c
    const/16 v0, 0x61

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_d

    const/16 v0, 0x41

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_d
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_11

    :cond_e
    const/16 v0, 0x73

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_f

    const/16 v0, 0x53

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_11

    :cond_f
    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-eq v9, v0, :cond_10

    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->o:I

    add-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    if-ne v8, v0, :cond_11

    :cond_10
    const-string v0, "false"

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/e;->h:Lcom/google/a/d/e;

    goto/16 :goto_1

    :cond_11
    iget-object v0, p0, Lcom/google/a/d/a;->c:Lcom/google/a/d/i;

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    iget v3, p0, Lcom/google/a/d/a;->p:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/d/i;->a([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->o:I

    iget v4, p0, Lcom/google/a/d/a;->p:I

    aget-char v0, v3, v2

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1c

    add-int/lit8 v1, v2, 0x1

    aget-char v0, v3, v1

    :goto_2
    if-ne v0, v6, :cond_13

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_12
    const/16 v5, 0x2e

    if-ne v0, v5, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_3
    if-lt v0, v6, :cond_15

    if-gt v0, v7, :cond_15

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_3

    :cond_13
    const/16 v5, 0x31

    if-lt v0, v5, :cond_14

    if-gt v0, v7, :cond_14

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :goto_4
    if-lt v0, v6, :cond_12

    if-gt v0, v7, :cond_12

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    goto :goto_4

    :cond_14
    sget-object v0, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    goto/16 :goto_1

    :cond_15
    move v10, v0

    move v0, v1

    move v1, v10

    if-eq v1, v9, :cond_16

    if-ne v1, v8, :cond_1a

    :cond_16
    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    const/16 v5, 0x2b

    if-eq v0, v5, :cond_17

    const/16 v5, 0x2d

    if-ne v0, v5, :cond_18

    :cond_17
    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    :cond_18
    if-lt v0, v6, :cond_19

    if-gt v0, v7, :cond_19

    add-int/lit8 v1, v1, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_5
    if-lt v1, v6, :cond_1a

    if-gt v1, v7, :cond_1a

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v3, v1

    move v10, v0

    move v0, v1

    move v1, v10

    goto :goto_5

    :cond_19
    sget-object v0, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    goto/16 :goto_1

    :cond_1a
    add-int v1, v2, v4

    if-ne v0, v1, :cond_1b

    sget-object v0, Lcom/google/a/d/e;->g:Lcom/google/a/d/e;

    goto/16 :goto_1

    :cond_1b
    sget-object v0, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    goto/16 :goto_1

    :cond_1c
    move v1, v2

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x27 -> :sswitch_2
        0x5b -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private r()I
    .locals 4

    iget v1, p0, Lcom/google/a/d/a;->h:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/a/d/a;->f:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/a/d/a;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private s()I
    .locals 4

    iget v1, p0, Lcom/google/a/d/a;->i:I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/google/a/d/a;->f:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/a/d/a;->e:[C

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method private t()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/d/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    :cond_0
    iget v0, p0, Lcom/google/a/d/a;->f:I

    iget v1, p0, Lcom/google/a/d/a;->g:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    return-void
.end method

.method private v()C
    .locals 7

    const/4 v5, 0x4

    iget v0, p0, Lcom/google/a/d/a;->f:I

    iget v1, p0, Lcom/google/a/d/a;->g:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/d/a;->f:I

    aget-char v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/google/a/d/a;->g:I

    if-le v0, v1, :cond_1

    invoke-direct {p0, v5}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v1, 0x0

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v2, v0, 0x4

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_1
    if-ge v1, v2, :cond_5

    iget-object v3, p0, Lcom/google/a/d/a;->e:[C

    aget-char v3, v3, v1

    shl-int/lit8 v0, v0, 0x4

    int-to-char v0, v0

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    add-int/lit8 v3, v3, -0x30

    add-int/2addr v0, v3

    int-to-char v0, v0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-gt v3, v4, :cond_3

    add-int/lit8 v3, v3, -0x61

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-gt v3, v4, :cond_4

    add-int/lit8 v3, v3, -0x41

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v0, v3

    int-to-char v0, v0

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\\u"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->c:Lcom/google/a/d/i;

    iget-object v3, p0, Lcom/google/a/d/a;->e:[C

    iget v4, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/a/d/i;->a([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v1, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/a/d/a;->f:I

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_3
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_4
    const/16 v0, 0xd

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_2
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lcom/google/a/d/e;->a:Lcom/google/a/d/e;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/e;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/a/d/a;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    sget-object v0, Lcom/google/a/d/e;->b:Lcom/google/a/d/e;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/e;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/google/a/d/e;->c:Lcom/google/a/d/e;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/e;)V

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/a/d/d;->h:Lcom/google/a/d/d;

    aput-object v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->k:I

    iget-object v0, p0, Lcom/google/a/d/a;->d:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lcom/google/a/d/e;->d:Lcom/google/a/d/e;

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Lcom/google/a/d/e;)V

    return-void
.end method

.method public e()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->d:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->b:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lcom/google/a/d/e;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/google/a/d/c;->a:[I

    iget-object v2, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v3, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/google/a/d/a;->a:Z

    if-eqz v1, :cond_4

    invoke-direct {p0, v4}, Lcom/google/a/d/a;->d(Z)I

    iget v1, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/a/d/a;->f:I

    iget v1, p0, Lcom/google/a/d/a;->f:I

    sget-object v2, Lcom/google/a/d/a;->b:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/a/d/a;->g:I

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/google/a/d/a;->b:[C

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/google/a/d/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_1
    sget-object v1, Lcom/google/a/d/a;->b:[C

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/a/d/a;->e:[C

    iget v2, p0, Lcom/google/a/d/a;->f:I

    add-int/2addr v2, v0

    aget-char v1, v1, v2

    sget-object v2, Lcom/google/a/d/a;->b:[C

    aget-char v2, v2, v0

    if-ne v1, v2, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/google/a/d/a;->f:I

    sget-object v1, Lcom/google/a/d/a;->b:[C

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    :cond_4
    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v1, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/a/d/d;->g:Lcom/google/a/d/d;

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/a/d/a;->q()Lcom/google/a/d/e;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/a/d/a;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v2, Lcom/google/a/d/e;->a:Lcom/google/a/d/e;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v2, Lcom/google/a/d/e;->c:Lcom/google/a/d/e;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/google/a/d/a;->b(Z)Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->b(Z)Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v4}, Lcom/google/a/d/a;->c(Z)Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0, v4}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :pswitch_6
    invoke-direct {p0}, Lcom/google/a/d/a;->t()V

    iget v0, p0, Lcom/google/a/d/a;->f:I

    iget v1, p0, Lcom/google/a/d/a;->g:I

    if-lt v0, v1, :cond_5

    invoke-direct {p0, v4}, Lcom/google/a/d/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/a/d/a;->e:[C

    iget v1, p0, Lcom/google/a/d/a;->f:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    :cond_6
    :pswitch_7
    iget-object v0, p0, Lcom/google/a/d/a;->j:[Lcom/google/a/d/d;

    iget v1, p0, Lcom/google/a/d/a;->k:I

    add-int/lit8 v1, v1, -0x1

    sget-object v2, Lcom/google/a/d/d;->e:Lcom/google/a/d/d;

    aput-object v2, v0, v1

    invoke-direct {p0}, Lcom/google/a/d/a;->q()Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->c(Z)Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    invoke-direct {p0, v0}, Lcom/google/a/d/a;->d(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/google/a/d/e;->j:Lcom/google/a/d/e;

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/google/a/d/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/a/d/a;->f:I

    iget-boolean v0, p0, Lcom/google/a/d/a;->a:Z

    if-nez v0, :cond_8

    const-string v0, "Expected EOF"

    invoke-direct {p0, v0}, Lcom/google/a/d/a;->a(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-direct {p0}, Lcom/google/a/d/a;->q()Lcom/google/a/d/e;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->e:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->g:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-object v0
.end method

.method public i()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->h:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    const-string v1, "true"

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->i:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-void
.end method

.method public k()D
    .locals 4

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->g:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/google/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v2, p0, Lcom/google/a/d/a;->a:Z

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Lcom/google/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-wide v0
.end method

.method public l()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->g:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_1
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v0, Lcom/google/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-long v0, v2

    long-to-double v4, v0

    cmpl-double v2, v4, v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a long but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return-wide v0
.end method

.method public m()I
    .locals 5

    invoke-virtual {p0}, Lcom/google/a/d/a;->f()Lcom/google/a/d/e;

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->f:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    sget-object v1, Lcom/google/a/d/e;->g:Lcom/google/a/d/e;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->l:Lcom/google/a/d/e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_1
    int-to-long v1, v0

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/google/a/d/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JSON forbids octal prefixes: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/d/h;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-int v0, v1

    int-to-double v3, v0

    cmpl-double v1, v3, v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected an int but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/a/d/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->r()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/a/d/a;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    return v0
.end method

.method public n()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/d/a;->q:Z

    move v0, v1

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/google/a/d/a;->o()Lcom/google/a/d/e;

    move-result-object v2

    sget-object v3, Lcom/google/a/d/e;->a:Lcom/google/a/d/e;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/google/a/d/e;->c:Lcom/google/a/d/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/google/a/d/a;->q:Z

    return-void

    :cond_3
    :try_start_1
    sget-object v3, Lcom/google/a/d/e;->b:Lcom/google/a/d/e;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/google/a/d/e;->d:Lcom/google/a/d/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_2

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/google/a/d/a;->q:Z

    throw v0
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/a/d/a;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/google/a/d/a;->f:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/a/d/a;->e:[C

    iget v4, p0, Lcom/google/a/d/a;->f:I

    sub-int/2addr v4, v2

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/google/a/d/a;->g:I

    iget v3, p0, Lcom/google/a/d/a;->f:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/a/d/a;->e:[C

    iget v4, p0, Lcom/google/a/d/a;->f:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
