.class public final Lcom/voovio/io/Output;
.super Ljava/lang/Object;
.source "Output.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static WriteBooleanArray(Lcom/voovio/io/LittleEndianDataOutputStream;[Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static WriteFloatArray(Lcom/voovio/io/LittleEndianDataOutputStream;[F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static WriteImageToFile([BLjava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static WriteIntArray(Lcom/voovio/io/LittleEndianDataOutputStream;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static WritePoint(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/geometry/Point;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lcom/voovio/geometry/Point;->x:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    iget v0, p1, Lcom/voovio/geometry/Point;->y:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public static WriteString(Lcom/voovio/io/LittleEndianDataOutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeInt(I)V

    const-string v2, "latin1"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->write([B)V

    return-void
.end method

.method public static WriteVector3(Lcom/voovio/io/LittleEndianDataOutputStream;Lcom/voovio/voo3d/data/Vector3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    iget v0, p1, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v0}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    return-void
.end method

.method public static WriteVector3Array(Lcom/voovio/io/LittleEndianDataOutputStream;[Lcom/voovio/voo3d/data/Vector3;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, p1, v0

    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->x:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->y:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    iget v3, v2, Lcom/voovio/voo3d/data/Vector3;->z:F

    invoke-virtual {p0, v3}, Lcom/voovio/io/LittleEndianDataOutputStream;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
