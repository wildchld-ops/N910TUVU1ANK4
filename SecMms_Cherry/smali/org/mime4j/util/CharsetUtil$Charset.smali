.class Lorg/mime4j/util/CharsetUtil$Charset;
.super Ljava/lang/Object;
.source "CharsetUtil.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mime4j/util/CharsetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Charset"
.end annotation


# instance fields
.field private aliases:[Ljava/lang/String;

.field private canonical:Ljava/lang/String;

.field private mime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    iput-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    iput-object p1, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iput-object p2, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    iput-object p3, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lorg/mime4j/util/CharsetUtil$1;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
    .param p4    # Lorg/mime4j/util/CharsetUtil$1;

    invoke-direct {p0, p1, p2, p3}, Lorg/mime4j/util/CharsetUtil$Charset;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/mime4j/util/CharsetUtil$Charset;

    iget-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/mime4j/util/CharsetUtil$Charset;)Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/mime4j/util/CharsetUtil$Charset;

    iget-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->mime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/mime4j/util/CharsetUtil$Charset;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lorg/mime4j/util/CharsetUtil$Charset;

    iget-object v0, p0, Lorg/mime4j/util/CharsetUtil$Charset;->aliases:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1    # Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lorg/mime4j/util/CharsetUtil$Charset;

    iget-object v1, p0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    iget-object v2, v0, Lorg/mime4j/util/CharsetUtil$Charset;->canonical:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method
