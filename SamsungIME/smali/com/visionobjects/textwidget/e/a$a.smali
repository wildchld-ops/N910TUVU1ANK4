.class final Lcom/visionobjects/textwidget/e/a$a;
.super Ljava/lang/Object;
.source "CharBoxGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/textwidget/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public final c:B

.field public final d:I

.field final synthetic e:Lcom/visionobjects/textwidget/e/a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/e/a;Ljava/util/List;Ljava/lang/String;BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;",
            "Ljava/lang/String;",
            "BI)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/visionobjects/textwidget/e/a$a;->e:Lcom/visionobjects/textwidget/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/visionobjects/textwidget/e/a$a;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/visionobjects/textwidget/e/a$a;->b:Ljava/lang/String;

    iput-byte p4, p0, Lcom/visionobjects/textwidget/e/a$a;->c:B

    iput p5, p0, Lcom/visionobjects/textwidget/e/a$a;->d:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "\'%s\' (level %d, offset %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/visionobjects/textwidget/e/a$a;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-byte v4, p0, Lcom/visionobjects/textwidget/e/a$a;->c:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/visionobjects/textwidget/e/a$a;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
