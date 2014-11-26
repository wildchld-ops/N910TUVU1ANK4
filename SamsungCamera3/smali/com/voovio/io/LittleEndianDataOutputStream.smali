.class public Lcom/voovio/io/LittleEndianDataOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LittleEndianDataOutputStream.java"


# instance fields
.field protected written:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public size()I
    .locals 1

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([B)V
    .locals 3
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeBoolean(Z)V
    .locals 1
    .param p1    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->write(I)V

    goto :goto_0
.end method

.method public writeByte(I)V
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void
.end method

.method public writeBytes(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    iget v2, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void

    :cond_0
    iget-object v2, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public writeChar(I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void
.end method

.method public writeChars(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    iget v3, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    mul-int/lit8 v4, v2, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v3, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final writeDouble(D)V
    .locals 2
    .param p1    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeLong(J)V

    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    return-void
.end method

.method public writeInt(I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void
.end method

.method public writeLong(J)V
    .locals 3
    .param p1    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    long-to-int v1, p1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x8

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x10

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x18

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x28

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x30

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x38

    ushr-long v1, p1, v1

    long-to-int v1, v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void
.end method

.method public writeShort(I)V
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void
.end method

.method public writeUTF(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x7ff

    const/16 v7, 0x7f

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    const v4, 0xffff

    if-le v2, v4, :cond_3

    new-instance v4, Ljava/io/UTFDataFormatException;

    invoke-direct {v4}, Ljava/io/UTFDataFormatException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_1

    if-gt v0, v7, :cond_1

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v8, :cond_2

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_3
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit16 v5, v2, 0xff

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_4

    iget v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    iput v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    return-void

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v6, :cond_5

    if-gt v0, v7, :cond_5

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-le v0, v8, :cond_6

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    goto :goto_3

    :cond_6
    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x1f

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget-object v4, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write(I)V

    iget v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/voovio/io/LittleEndianDataOutputStream;->written:I

    goto :goto_3
.end method
