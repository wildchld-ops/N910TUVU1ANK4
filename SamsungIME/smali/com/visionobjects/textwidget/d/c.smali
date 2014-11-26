.class final Lcom/visionobjects/textwidget/d/c;
.super Ljava/lang/Object;
.source "RecognizerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:[Ljava/lang/String;

.field final synthetic e:[B

.field final synthetic f:I

.field final synthetic g:Lcom/visionobjects/textwidget/d/b;


# direct methods
.method constructor <init>(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/c;->g:Lcom/visionobjects/textwidget/d/b;

    iput p2, p0, Lcom/visionobjects/textwidget/d/c;->a:I

    iput-object p3, p0, Lcom/visionobjects/textwidget/d/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/visionobjects/textwidget/d/c;->c:[Ljava/lang/String;

    iput-object p5, p0, Lcom/visionobjects/textwidget/d/c;->d:[Ljava/lang/String;

    iput-object p6, p0, Lcom/visionobjects/textwidget/d/c;->e:[B

    iput p7, p0, Lcom/visionobjects/textwidget/d/c;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/c;->g:Lcom/visionobjects/textwidget/d/b;

    iget v1, p0, Lcom/visionobjects/textwidget/d/c;->a:I

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/visionobjects/textwidget/d/c;->c:[Ljava/lang/String;

    iget-object v4, p0, Lcom/visionobjects/textwidget/d/c;->d:[Ljava/lang/String;

    iget-object v5, p0, Lcom/visionobjects/textwidget/d/c;->e:[B

    iget v6, p0, Lcom/visionobjects/textwidget/d/c;->f:I

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/textwidget/d/b;->a(Lcom/visionobjects/textwidget/d/b;ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[BI)V

    return-void
.end method
