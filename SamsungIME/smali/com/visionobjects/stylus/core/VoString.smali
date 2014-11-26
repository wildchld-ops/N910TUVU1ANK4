.class public Lcom/visionobjects/stylus/core/VoString;
.super Ljava/lang/Object;
.source "VoString.java"


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_1(C)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-void
.end method

.method private constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/Char;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_2(JLcom/visionobjects/stylus/core/Char;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_VoString__SWIG_3([B)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-void
.end method

.method public static number(D)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_2(D)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static number(DC)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_1(DC)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static number(DCI)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_number__SWIG_0(DCI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_add(JLcom/visionobjects/stylus/core/VoString;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public addAffect(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_addAffect(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public append(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_append(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public at(I)Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_at(JLcom/visionobjects/stylus/core/VoString;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public byteCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_byteCount(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public chop(I)V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_chop(JLcom/visionobjects/stylus/core/VoString;I)V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_clear(JLcom/visionobjects/stylus/core/VoString;)V

    return-void
.end method

.method public contains(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_contains__SWIG_1(JLcom/visionobjects/stylus/core/VoString;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_contains__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public containsOneCharOf(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_containsOneCharOf(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public count(Lcom/visionobjects/stylus/core/Char;)I
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Char;->a(Lcom/visionobjects/stylus/core/Char;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_count(JLcom/visionobjects/stylus/core/VoString;JLcom/visionobjects/stylus/core/Char;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/VoString;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_VoString(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/visionobjects/stylus/core/VoString;->nativeEquals(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/VoString;->delete()V

    return-void
.end method

.method public findBytePos(Ljava/lang/String;)I
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_findBytePos__SWIG_1(JLcom/visionobjects/stylus/core/VoString;[B)I

    move-result v0

    return v0
.end method

.method public findBytePos(Ljava/lang/String;I)I
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_findBytePos__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[BI)I

    move-result v0

    return v0
.end method

.method public firstChar()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_firstChar(JLcom/visionobjects/stylus/core/VoString;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_hashCode(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_isEmpty(JLcom/visionobjects/stylus/core/VoString;)Z

    move-result v0

    return v0
.end method

.method public isUnicodeChar(J)Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_isUnicodeChar(JLcom/visionobjects/stylus/core/VoString;J)Z

    move-result v0

    return v0
.end method

.method public lastChar()Lcom/visionobjects/stylus/core/Char;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Char;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_lastChar(JLcom/visionobjects/stylus/core/VoString;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Char;-><init>(JZ)V

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_length(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public mid(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_mid__SWIG_1(JLcom/visionobjects/stylus/core/VoString;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public mid(II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_mid__SWIG_0(JLcom/visionobjects/stylus/core/VoString;II)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public nativeEquals(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_nativeEquals(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public notEquals(Ljava/lang/String;)Z
    .locals 3

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_notEquals(JLcom/visionobjects/stylus/core/VoString;[B)Z

    move-result v0

    return v0
.end method

.method public remapCircledCharacters()V
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remapCircledCharacters(JLcom/visionobjects/stylus/core/VoString;)V

    return-void
.end method

.method public remove(II)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remove__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_remove__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public repeated(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_repeated(JLcom/visionobjects/stylus/core/VoString;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public replace(IILjava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_replace__SWIG_1(JLcom/visionobjects/stylus/core/VoString;II[B)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v6
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;)Lcom/visionobjects/stylus/core/VoString;
    .locals 5

    new-instance v0, Lcom/visionobjects/stylus/core/VoString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v1, v2, p0, v3, v4}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_replace__SWIG_0(JLcom/visionobjects/stylus/core/VoString;[B[B)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/VoString;-><init>(JZ)V

    return-object v0
.end method

.method public split(C)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListString;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_split(JLcom/visionobjects/stylus/core/VoString;C)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListString;-><init>(JZ)V

    return-object v0
.end method

.method public toDouble()D
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toDouble(JLcom/visionobjects/stylus/core/VoString;)D

    move-result-wide v0

    return-wide v0
.end method

.method public toInt()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toInt(JLcom/visionobjects/stylus/core/VoString;)I

    move-result v0

    return v0
.end method

.method public toLower()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toLower(JLcom/visionobjects/stylus/core/VoString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public toUpper()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/VoString;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->VoString_toUpper(JLcom/visionobjects/stylus/core/VoString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
