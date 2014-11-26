.class public Lcom/visionobjects/stylus/core/InkField;
.super Ljava/lang/Object;
.source "InkField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visionobjects/stylus/core/InkField$FormattingOption;
    }
.end annotation


# instance fields
.field protected a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkField__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    iput-wide p1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/visionobjects/stylus/core/InkField;)V
    .locals 3

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->new_InkField__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-void
.end method

.method protected static a(Lcom/visionobjects/stylus/core/InkField;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    goto :goto_0
.end method

.method public static fromCandidate(Lcom/visionobjects/stylus/core/Candidate;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Candidate;->a(Lcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromCandidate(JLcom/visionobjects/stylus/core/Candidate;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_6(JLcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_5(JLcom/visionobjects/stylus/core/InkItem;[B)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v2, p0, v3, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_4(JLcom/visionobjects/stylus/core/InkItem;[BF)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FI)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_3(JLcom/visionobjects/stylus/core/InkItem;[BFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FII)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_2(JLcom/visionobjects/stylus/core/InkItem;[BFII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FIIF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9

    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_1(JLcom/visionobjects/stylus/core/InkItem;[BFIIF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItem(Lcom/visionobjects/stylus/core/InkItem;Ljava/lang/String;FIIFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 10

    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/InkItem;->a(Lcom/visionobjects/stylus/core/InkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItem__SWIG_0(JLcom/visionobjects/stylus/core/InkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromItemList(Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_7(JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v4, v2, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_6(JLcom/visionobjects/stylus/core/ListInkItem;[B)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3, v4, v2, v1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_5(JLcom/visionobjects/stylus/core/ListInkItem;[BF)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FI)Lcom/visionobjects/stylus/core/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FI)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_4(JLcom/visionobjects/stylus/core/ListInkItem;[BFI)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FII)Lcom/visionobjects/stylus/core/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FII)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_3(JLcom/visionobjects/stylus/core/ListInkItem;[BFII)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_2(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIFF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_1(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;FIIFFLjava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "FIIFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v3, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v3, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v3, v1}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v12, Lcom/visionobjects/stylus/core/ListInt;

    move-object/from16 v0, p7

    invoke-direct {v12, v0}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    new-instance v13, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v3}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v12}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v10

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v12}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_0(JLcom/visionobjects/stylus/core/ListInkItem;[BFIIFFJLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v13, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v13
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v3, v4, v2, v1, v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_12(JLcom/visionobjects/stylus/core/ListInkItem;[B[B)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;F)Lcom/visionobjects/stylus/core/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "F)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_11(JLcom/visionobjects/stylus/core/ListInkItem;[B[BF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FF)Lcom/visionobjects/stylus/core/InkField;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_10(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFF)Lcom/visionobjects/stylus/core/InkField;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFF)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_9(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFFF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v8, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v8
.end method

.method public static fromItemList(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FFFLjava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FFF",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v3, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v3, p0}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v3, v1}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v11, Lcom/visionobjects/stylus/core/ListInt;

    move-object/from16 v0, p6

    invoke-direct {v11, v0}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    new-instance v12, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v3}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v11}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v9

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromItemList__SWIG_8(JLcom/visionobjects/stylus/core/ListInkItem;[B[BFFFJLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v12, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v12
.end method

.method public static fromLabel(Ljava/lang/String;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_2([B)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_1([BI)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromLabel(Ljava/lang/String;II)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromLabel__SWIG_0([BII)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromParts(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkField;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkField;->native_add(Lcom/visionobjects/stylus/core/InkField;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkField;->getCPtr(Lcom/visionobjects/stylus/core/ListInkField;)J

    move-result-wide v0

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromParts(JLcom/visionobjects/stylus/core/ListInkField;JLcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public static fromSegment(Lcom/visionobjects/stylus/core/Segment;)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {p0}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromSegment(JLcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static fromWordSegmentList(Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListSegment;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/Segment;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListSegment;->native_add(Lcom/visionobjects/stylus/core/Segment;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListSegment;->getCPtr(Lcom/visionobjects/stylus/core/ListSegment;)J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_fromWordSegmentList(JLcom/visionobjects/stylus/core/ListSegment;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public static grafted(Ljava/util/List;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;I)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    new-instance v2, Lcom/visionobjects/stylus/core/ListInkField;

    invoke-direct {v2, p0}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-virtual {v2, v0}, Lcom/visionobjects/stylus/core/ListInkField;->native_add(Lcom/visionobjects/stylus/core/InkField;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    invoke-static {v2}, Lcom/visionobjects/stylus/core/ListInkField;->getCPtr(Lcom/visionobjects/stylus/core/ListInkField;)J

    move-result-wide v3

    invoke-static {v3, v4, v2, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_2(JLcom/visionobjects/stylus/core/ListInkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method


# virtual methods
.method public cutAround(Lcom/visionobjects/stylus/core/InkRange;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkRange;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/visionobjects/stylus/core/ListInkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_cutAround(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public cutAt(Lcom/visionobjects/stylus/core/InkLocation;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkField;",
            ">;"
        }
    .end annotation

    new-instance v6, Lcom/visionobjects/stylus/core/ListInkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLocation;->a(Lcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_cutAt(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLocation;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/ListInkField;-><init>(JZ)V

    return-object v6
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/visionobjects/stylus/core/InkField;->a:Z

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->delete_InkField(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J
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

.method public direction()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_direction(JLcom/visionobjects/stylus/core/InkField;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/visionobjects/stylus/core/InkField;->delete()V

    return-void
.end method

.method public formatted(I)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_formatted(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public formattedExplicitSpaces(Ljava/util/List;Ljava/util/List;)Lcom/visionobjects/stylus/core/InkField;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkLocation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/visionobjects/stylus/core/InkField;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v5, Lcom/visionobjects/stylus/core/ListInkLocation;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkLocation;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkLocation;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkLocation;->native_add(Lcom/visionobjects/stylus/core/InkLocation;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/visionobjects/stylus/core/ListInt;

    invoke-direct {v8, p2}, Lcom/visionobjects/stylus/core/ListInt;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/visionobjects/stylus/core/ListInt;->native_add(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    new-instance v9, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkLocation;->getCPtr(Lcom/visionobjects/stylus/core/ListInkLocation;)J

    move-result-wide v3

    invoke-static {v8}, Lcom/visionobjects/stylus/core/ListInt;->getCPtr(Lcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v6

    move-object v2, p0

    invoke-static/range {v0 .. v8}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_formattedExplicitSpaces(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkLocation;JLcom/visionobjects/stylus/core/ListInt;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v9, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v9
.end method

.method public getCircledCharactersRange()Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_getCircledCharactersRange(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public getGuideBoxes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_getGuideBoxes(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public grafted(Lcom/visionobjects/stylus/core/InkField;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public grafted(Lcom/visionobjects/stylus/core/InkField;I)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_grafted__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public inkLayout()Lcom/visionobjects/stylus/core/InkLayout;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkLayout;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_inkLayout(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkLayout;-><init>(JZ)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_isEmpty(JLcom/visionobjects/stylus/core/InkField;)Z

    move-result v0

    return v0
.end method

.method public items()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_items(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public lineBreaksCount()I
    .locals 2

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v0, v1, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_lineBreaksCount(JLcom/visionobjects/stylus/core/InkField;)I

    move-result v0

    return v0
.end method

.method public lineBreaksNormalized()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_lineBreaksNormalized(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public lineRangesFromLineBreaks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkRange;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_lineRangesFromLineBreaks(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkRange;-><init>(JZ)V

    return-object v0
.end method

.method public mapped(Lcom/visionobjects/stylus/core/Transform;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_mapped(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public normalized()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_normalized__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public normalized(Z)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_normalized__SWIG_0(JLcom/visionobjects/stylus/core/InkField;Z)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public pendingStrokes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkItem;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_pendingStrokes(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(JZ)V

    return-object v0
.end method

.method public remove(Lcom/visionobjects/stylus/core/InkRange;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_remove(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;)V

    return-void
.end method

.method public segments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_segments__SWIG_1(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public segments(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/Segment;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListSegment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_segments__SWIG_0(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListSegment;-><init>(JZ)V

    return-object v0
.end method

.method public selectedLabel()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_selectedLabel(JLcom/visionobjects/stylus/core/InkField;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public setInkLayout(Lcom/visionobjects/stylus/core/InkLayout;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkLayout;->a(Lcom/visionobjects/stylus/core/InkLayout;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setInkLayout(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkLayout;)V

    return-void
.end method

.method public setPendingStrokes(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkItem;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Lcom/visionobjects/stylus/core/ListInkItem;

    invoke-direct {v5, p1}, Lcom/visionobjects/stylus/core/ListInkItem;-><init>(Ljava/lang/Iterable;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visionobjects/stylus/core/InkItem;

    invoke-virtual {v5, v0}, Lcom/visionobjects/stylus/core/ListInkItem;->native_add(Lcom/visionobjects/stylus/core/InkItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v5}, Lcom/visionobjects/stylus/core/ListInkItem;->getCPtr(Lcom/visionobjects/stylus/core/ListInkItem;)J

    move-result-wide v3

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setPendingStrokes(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/ListInkItem;)V

    return-void
.end method

.method public setTag(Lcom/visionobjects/stylus/core/InkTag;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTag(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)V

    return-void
.end method

.method public setTopLevelSegment(Lcom/visionobjects/stylus/core/Segment;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Segment;->a(Lcom/visionobjects/stylus/core/Segment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTopLevelSegment(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Segment;)V

    return-void
.end method

.method public setTransform(Lcom/visionobjects/stylus/core/Transform;)V
    .locals 6

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/Transform;->a(Lcom/visionobjects/stylus/core/Transform;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_setTransform(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/Transform;)V

    return-void
.end method

.method public simplified()Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_simplified(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public split(Lcom/visionobjects/stylus/core/InkRange;Lcom/visionobjects/stylus/core/InkField;Lcom/visionobjects/stylus/core/InkField;)V
    .locals 12

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkRange;->a(Lcom/visionobjects/stylus/core/InkRange;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v6

    invoke-static {p3}, Lcom/visionobjects/stylus/core/InkField;->a(Lcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    move-object v11, p3

    invoke-static/range {v0 .. v11}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_split(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkRange;JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkField;)V

    return-void
.end method

.method public tagRange(I)Lcom/visionobjects/stylus/core/InkRange;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkRange;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_tagRange(JLcom/visionobjects/stylus/core/InkField;I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkRange;-><init>(JZ)V

    return-object v0
.end method

.method public taggedWith(Lcom/visionobjects/stylus/core/InkTag;)Lcom/visionobjects/stylus/core/InkField;
    .locals 7

    new-instance v6, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_taggedWith__SWIG_1(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v6
.end method

.method public taggedWith(Lcom/visionobjects/stylus/core/InkTag;Z)Lcom/visionobjects/stylus/core/InkField;
    .locals 8

    new-instance v7, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v0, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {p1}, Lcom/visionobjects/stylus/core/InkTag;->a(Lcom/visionobjects/stylus/core/InkTag;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_taggedWith__SWIG_0(JLcom/visionobjects/stylus/core/InkField;JLcom/visionobjects/stylus/core/InkTag;Z)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v7, v0, v1, v2}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v7
.end method

.method public tags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/visionobjects/stylus/core/InkTag;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/visionobjects/stylus/core/ListInkTag;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_tags(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/ListInkTag;-><init>(JZ)V

    return-object v0
.end method

.method public timeShifted(J)Lcom/visionobjects/stylus/core/InkField;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/InkField;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0, p1, p2}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_timeShifted(JLcom/visionobjects/stylus/core/InkField;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/InkField;-><init>(JZ)V

    return-object v0
.end method

.method public topLevelSegment()Lcom/visionobjects/stylus/core/Segment;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Segment;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_topLevelSegment(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Segment;-><init>(JZ)V

    return-object v0
.end method

.method public transform()Lcom/visionobjects/stylus/core/Transform;
    .locals 4

    new-instance v0, Lcom/visionobjects/stylus/core/Transform;

    iget-wide v1, p0, Lcom/visionobjects/stylus/core/InkField;->b:J

    invoke-static {v1, v2, p0}, Lcom/visionobjects/stylus/core/styluscoreJNI;->InkField_transform(JLcom/visionobjects/stylus/core/InkField;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/visionobjects/stylus/core/Transform;-><init>(JZ)V

    return-object v0
.end method
