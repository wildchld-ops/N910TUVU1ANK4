.class public Lcom/arm/streamline/StreamlineAnnotate;
.super Ljava/lang/Object;
.source "StreamlineAnnotate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/arm/streamline/StreamlineAnnotate$Color;
    }
.end annotation


# static fields
.field public static final BLACK:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final BLUE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final CYAN:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final DKGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final ESCAPE_CODE:B = 0x1ct

.field private static final FILE:Ljava/io/FileOutputStream;

.field public static final GREEN:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final LTGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final MARKER_ANNOTATION:B = 0x5t

.field private static final NAME_CHANNEL_ANNOTATION:B = 0x7t

.field private static final NAME_GROUP_ANNOTATION:B = 0x8t

.field private static final OUT:Ljava/io/OutputStream;

.field public static final PURPLE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final RED:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field private static final STRING_ANNOTATION:B = 0x6t

.field private static final VISUAL_ANNOTATION:B = 0x4t

.field public static final WHITE:Lcom/arm/streamline/StreamlineAnnotate$Color;

.field public static final YELLOW:Lcom/arm/streamline/StreamlineAnnotate$Color;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v3, 0xff

    const/4 v4, 0x0

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v4, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->RED:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v4, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->BLUE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v3, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->GREEN:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v4, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->PURPLE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3, v3, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->YELLOW:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4, v3, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(III)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->CYAN:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->WHITE:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    const/16 v3, 0xbb

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->LTGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    const/16 v3, 0x55

    invoke-direct {v2, v3}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->DKGRAY:Lcom/arm/streamline/StreamlineAnnotate$Color;

    new-instance v2, Lcom/arm/streamline/StreamlineAnnotate$Color;

    invoke-direct {v2, v4}, Lcom/arm/streamline/StreamlineAnnotate$Color;-><init>(I)V

    sput-object v2, Lcom/arm/streamline/StreamlineAnnotate;->BLACK:Lcom/arm/streamline/StreamlineAnnotate$Color;

    const/4 v0, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    sput-object v0, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 4

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    :try_start_0
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-eqz p1, :cond_0

    add-int/lit8 v1, v1, 0x4

    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p1, :cond_1

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->red:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->green:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v3, p1, Lcom/arm/streamline/StreamlineAnnotate$Color;->blue:I

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    if-eqz p2, :cond_2

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static final annotate(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final annotate(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final annotate(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final end()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {v0, v1, v1}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final end(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->annotate(ILcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final marker()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final marker(Lcom/arm/streamline/StreamlineAnnotate$Color;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static final marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V
    .locals 5

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_4

    :try_start_0
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-eqz p0, :cond_0

    add-int/lit8 v2, v2, 0x4

    :cond_0
    const/4 v3, 0x4

    new-array v0, v3, [B

    const/4 v3, 0x0

    const/16 v4, 0x1c

    aput-byte v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x5

    aput-byte v4, v0, v3

    const/4 v3, 0x2

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    const/4 v3, 0x3

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p0, :cond_1

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v4, 0x1b

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->red:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->green:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    iget v4, p0, Lcom/arm/streamline/StreamlineAnnotate$Color;->blue:I

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    sget-object v3, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static final marker(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/arm/streamline/StreamlineAnnotate;->marker(Lcom/arm/streamline/StreamlineAnnotate$Color;Ljava/lang/String;)V

    return-void
.end method

.method public static nameChannel(IILjava/lang/String;)V
    .locals 4

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_2

    :try_start_0
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    :goto_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p2, :cond_0

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static nameGroup(ILjava/lang/String;)V
    .locals 4

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    :try_start_0
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    :goto_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, p0, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, p0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    ushr-int/lit8 v3, p0, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V

    if-eqz p1, :cond_0

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    sget-object v2, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static final visualAnnotate(Ljava/lang/String;[B)V
    .locals 6

    const/4 v1, 0x0

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    if-eqz v4, :cond_3

    if-eqz p0, :cond_4

    :try_start_0
    const-string v4, "US-ASCII"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v3, v2

    :goto_0
    const/4 v4, 0x4

    new-array v0, v4, [B

    const/4 v4, 0x0

    const/16 v5, 0x1c

    aput-byte v5, v0, v4

    const/4 v4, 0x1

    const/4 v5, 0x4

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x3

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    if-eqz p0, :cond_0

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    const-string v5, "US-ASCII"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    :cond_0
    if-eqz p1, :cond_1

    array-length v1, p1

    :cond_1
    const/4 v4, 0x0

    and-int/lit16 v5, v1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x1

    shr-int/lit8 v5, v1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x2

    shr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    const/4 v4, 0x3

    ushr-int/lit8 v5, v1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    if-lez v1, :cond_2

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_2
    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->OUT:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    sget-object v4, Lcom/arm/streamline/StreamlineAnnotate;->FILE:Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static final visualAnnotate([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/arm/streamline/StreamlineAnnotate;->visualAnnotate(Ljava/lang/String;[B)V

    return-void
.end method
