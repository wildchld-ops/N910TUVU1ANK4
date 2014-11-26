.class final Lcom/visionobjects/textwidget/d/b$b;
.super Lcom/visionobjects/stylus/core/InputMethodListener;
.source "RecognizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/textwidget/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/visionobjects/textwidget/d/b;

.field private c:I

.field private d:F

.field private e:F

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/visionobjects/textwidget/d/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-direct {p0}, Lcom/visionobjects/stylus/core/InputMethodListener;-><init>()V

    iput-boolean p2, p0, Lcom/visionobjects/textwidget/d/b$b;->f:Z

    return-void
.end method


# virtual methods
.method public final eraseGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/visionobjects/stylus/core/InputMethodListener;->eraseGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final flowSync(Lcom/visionobjects/stylus/core/InputMethod;I)V
    .locals 1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/visionobjects/textwidget/d/b$e;->a(I)V

    :cond_0
    return-void
.end method

.method public final insertGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/4 v0, 0x2

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final joinGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureType()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    :cond_0
    return-void
.end method

.method public final overwriteGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/visionobjects/stylus/core/InputMethodListener;->overwriteGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final returnGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final selectionGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/4 v0, 0x7

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final singleTapGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkLocation;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/4 v0, 0x1

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final underlineGesture(Lcom/visionobjects/stylus/core/InputMethod;Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 2

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->gestureStrokes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/InkItem;->barycenter()Lcom/visionobjects/stylus/core/Point;

    move-result-object v0

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->x()F

    move-result v1

    iput v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    invoke-virtual {v0}, Lcom/visionobjects/stylus/core/Point;->y()F

    move-result v0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    const/16 v0, 0x8

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    return-void
.end method

.method public final update(Lcom/visionobjects/stylus/core/InputMethod;)V
    .locals 3

    invoke-virtual {p1}, Lcom/visionobjects/stylus/core/InputMethod;->field()Lcom/visionobjects/stylus/core/InkField;

    move-result-object v0

    iget-boolean v1, p0, Lcom/visionobjects/textwidget/d/b$b;->f:Z

    iget-object v2, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v2}, Lcom/visionobjects/textwidget/d/b;->c(Lcom/visionobjects/textwidget/d/b;)Z

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v1}, Lcom/visionobjects/textwidget/d/b;->d(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/visionobjects/textwidget/d/b$e;->a(Lcom/visionobjects/stylus/core/InkField;)V

    :cond_0
    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->b(F)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->c(F)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->d(F)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->e(F)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$d;->e()V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/visionobjects/textwidget/d/b$d;->f()V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->f(F)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/visionobjects/textwidget/d/b$b;->c:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/visionobjects/textwidget/d/b$b;->b:Lcom/visionobjects/textwidget/d/b;

    invoke-static {v0}, Lcom/visionobjects/textwidget/d/b;->e(Lcom/visionobjects/textwidget/d/b;)Lcom/visionobjects/textwidget/d/b$d;

    move-result-object v0

    iget v1, p0, Lcom/visionobjects/textwidget/d/b$b;->d:F

    iget v2, p0, Lcom/visionobjects/textwidget/d/b$b;->e:F

    invoke-interface {v0, v1}, Lcom/visionobjects/textwidget/d/b$d;->g(F)V

    goto/16 :goto_0
.end method
