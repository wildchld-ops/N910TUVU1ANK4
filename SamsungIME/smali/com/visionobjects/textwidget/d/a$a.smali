.class final Lcom/visionobjects/textwidget/d/a$a;
.super Ljava/lang/Object;
.source "RecognizerPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/textwidget/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Lcom/visionobjects/stylus/core/InputMethod;

.field public c:Lcom/visionobjects/stylus/core/InputMethodListener;

.field public d:Z

.field final synthetic e:Lcom/visionobjects/textwidget/d/a;


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/d/a;ILcom/visionobjects/stylus/core/InputMethod;Z)V
    .locals 1

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/a$a;->e:Lcom/visionobjects/textwidget/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/visionobjects/textwidget/d/a$a;->a:I

    iput-object p3, p0, Lcom/visionobjects/textwidget/d/a$a;->b:Lcom/visionobjects/stylus/core/InputMethod;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/visionobjects/textwidget/d/a$a;->c:Lcom/visionobjects/stylus/core/InputMethodListener;

    iput-boolean p4, p0, Lcom/visionobjects/textwidget/d/a$a;->d:Z

    return-void
.end method
