.class public Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;
.super Ljava/lang/Object;
.source "ComposingTextManagerForJapanese.java"


# static fields
.field public static final LAYER0:I = 0x0

.field public static final LAYER1:I = 0x1

.field public static final LAYER2:I = 0x2

.field public static final MAX_LAYER:I = 0x3

.field private static final OFFSET_FULL_WIDTH:I = 0xfee0

.field protected static mCursor:[I

.field protected static mDisplayCursorState:Z

.field protected static mHasPrediction:Z

.field protected static mPredictionString:Ljava/lang/String;

.field protected static mStringLayer:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation
.end field

.field protected static mVerbatimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sput-boolean v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    sput-boolean v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    sput-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mPredictionString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OnBlockPrediction()Z
    .locals 1

    sget-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    return v0
.end method

.method public static append(I)Z
    .locals 5
    .param p0    # I

    const/4 v4, 0x1

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->isFullWidthMode()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->convertHalftoFull(C)C

    move-result p0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/diotek/ime/framework/input/StrSegment;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, p0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    invoke-static {v4}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return v4
.end method

.method public static append(Lcom/diotek/ime/framework/input/StrSegment;)Z
    .locals 2
    .param p0    # Lcom/diotek/ime/framework/input/StrSegment;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0, v1, p0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V

    return v1
.end method

.method public static clear()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->clear()V

    return-void
.end method

.method public static composingText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-char v3, v0, v1

    const v4, 0xfee0

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method public static delete(IZ)I
    .locals 4
    .param p0    # I
    .param p1    # Z

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-nez p1, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    add-int/lit8 v3, v0, -0x1

    invoke-static {p0, v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    invoke-static {}, Lcom/diotek/ime/framework/input/ComposingTextManager;->deleteLastChar()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-static {p0, v0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    goto :goto_0
.end method

.method public static deleteBlockText()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getCursor(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-static {v2, v3, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v2, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    invoke-static {v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setBlockPrediction(Z)V

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManager;->replace(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteForward(I)I
    .locals 3
    .param p0    # I

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v2, p0

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-static {p0, v0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment(III)V

    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    return v2
.end method

.method public static deleteLastChar()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->delete(IZ)I

    return-void
.end method

.method public static deleteStrSegment(III)V
    .locals 16
    .param p0    # I
    .param p1    # I
    .param p2    # I

    const/4 v13, 0x3

    new-array v4, v13, [I

    fill-array-data v4, :array_0

    const/4 v13, 0x3

    new-array v12, v13, [I

    fill-array-data v12, :array_1

    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x2

    aget-object v10, v13, v14

    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v14, 0x1

    aget-object v9, v13, v14

    const/4 v13, 0x2

    move/from16 v0, p0

    if-ne v0, v13, :cond_0

    const/4 v13, 0x2

    aput p1, v4, v13

    const/4 v13, 0x2

    aput p2, v12, v13

    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    const/4 v14, 0x1

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v4, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    const/4 v14, 0x0

    const/4 v13, 0x1

    aget v13, v12, v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    :goto_0
    sub-int v13, p2, p1

    add-int/lit8 v3, v13, 0x1

    const/4 v6, 0x0

    :goto_1
    const/4 v13, 0x3

    if-ge v6, v13, :cond_a

    aget v13, v4, v6

    if-ltz v13, :cond_2

    aget v13, v4, v6

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    :goto_2
    aget v13, v12, v6

    aget v14, v4, v6

    sub-int/2addr v13, v14

    add-int/lit8 v3, v13, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x1

    move/from16 v0, p0

    if-ne v0, v13, :cond_1

    const/4 v13, 0x1

    aput p1, v4, v13

    const/4 v13, 0x1

    aput p2, v12, v13

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    aput v13, v4, v14

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v13, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v13, v12, v14

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    aput p1, v4, v13

    const/4 v13, 0x0

    aput p2, v12, v13

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const/4 v2, -0x1

    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v8, v13, v6

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_3

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_4

    :cond_3
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-lt v13, v14, :cond_7

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-gt v13, v14, :cond_7

    :cond_4
    aget v13, v4, v6

    if-gez v13, :cond_5

    aput v5, v4, v6

    iget v1, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    :cond_5
    aput v5, v12, v6

    iget v2, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v4, v14

    if-gt v13, v14, :cond_b

    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-lt v13, v14, :cond_b

    iget v1, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v2, v7, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    aput v5, v4, v6

    aput v5, v12, v6

    :cond_8
    :goto_4
    add-int/lit8 v13, v6, -0x1

    aget v13, v4, v13

    if-ne v1, v13, :cond_9

    add-int/lit8 v13, v6, -0x1

    aget v13, v12, v13

    if-eq v2, v13, :cond_c

    :cond_9
    aget v13, v4, v6

    add-int/lit8 v13, v13, 0x1

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    sub-int/2addr v2, v3

    const/4 v13, 0x1

    new-array v11, v13, [Lcom/diotek/ime/framework/input/StrSegment;

    const/4 v13, 0x0

    new-instance v14, Lcom/diotek/ime/framework/input/StrSegment;

    add-int/lit8 v15, v6, -0x1

    invoke-static {v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1, v2}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    aput-object v14, v11, v13

    aget v13, v4, v6

    aget v14, v4, v6

    invoke-static {v6, v11, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    :cond_a
    return-void

    :cond_b
    iget v13, v7, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v14, v6, -0x1

    aget v14, v12, v14

    if-le v13, v14, :cond_6

    goto :goto_4

    :cond_c
    aget v13, v4, v6

    aget v14, v12, v6

    invoke-static {v6, v13, v14, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->deleteStrSegment0(IIII)V

    goto/16 :goto_2

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private static deleteStrSegment0(IIII)V
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v3, p0

    if-eqz p3, :cond_0

    add-int/lit8 v0, p2, 0x1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/StrSegment;

    iget v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    sub-int/2addr v3, p3

    iput v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    sub-int/2addr v3, p3

    iput v3, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getBlockCursor()I
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public static getBlockText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCursor(I)I
    .locals 1
    .param p0    # I

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, p0

    return v0
.end method

.method public static getStrSegment(II)Lcom/diotek/ime/framework/input/StrSegment;
    .locals 4
    .param p0    # I
    .param p1    # I

    const/4 v3, 0x0

    :try_start_0
    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-gez p1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    if-gez p1, :cond_2

    :cond_1
    move-object v2, v3

    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/StrSegment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_0
.end method

.method public static getVerbatim(II)Ljava/lang/String;
    .locals 5
    .param p0    # I
    .param p1    # I

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    const/4 v4, 0x1

    aget-object v0, v3, v4

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget v1, v3, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget v2, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVerbatimForBlock()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVerbatimForPrediction()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    if-nez v1, :cond_1

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->size(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    invoke-static {v3, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->getVerbatim(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public static getVerbatimList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-static {v4, v4, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->convertHalftoFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    return-object v3
.end method

.method private static included(II)I
    .locals 5
    .param p0    # I
    .param p1    # I

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v3, p0, 0x1

    sget-object v4, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v2, v4, v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/StrSegment;

    iget v4, v1, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    if-gt v4, p1, :cond_2

    iget v4, v1, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-le p1, v4, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static insertStrSegment(IILcom/diotek/ime/framework/input/StrSegment;)V
    .locals 10
    .param p0    # I
    .param p1    # I
    .param p2    # Lcom/diotek/ime/framework/input/StrSegment;

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v7, v7, p0

    sget-object v8, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v8, p0

    invoke-virtual {v7, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v7, p0

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, p0

    add-int/lit8 v1, p0, 0x1

    :goto_0
    if-gt v1, p1, :cond_1

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-int/lit8 v3, v7, -0x1

    new-instance v6, Lcom/diotek/ime/framework/input/StrSegment;

    iget-object v7, p2, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-direct {v6, v7, v3, v3}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v5, v7, v1

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v7, v7, v1

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v8, v7, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v1

    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v2, v7, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/diotek/ime/framework/input/StrSegment;

    iget v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v4, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v7, p1

    add-int/lit8 v7, v0, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1, v7, v8, v9}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    invoke-static {p1, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static insertStrSegment(ILcom/diotek/ime/framework/input/StrSegment;)V
    .locals 3
    .param p0    # I
    .param p1    # Lcom/diotek/ime/framework/input/StrSegment;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static isCursorChangingOnComposing()Z
    .locals 1

    sget-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    return v0
.end method

.method public static makeInstance()V
    .locals 4

    const/4 v3, 0x3

    new-array v1, v3, [Ljava/util/ArrayList;

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    new-array v1, v3, [I

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mVerbatimList:Ljava/util/ArrayList;

    return-void
.end method

.method private static modifyUpper(IIII)V
    .locals 17
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v13, 0x2

    move/from16 v0, p0

    if-lt v0, v13, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v10, p0, 0x1

    sget-object v13, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v9, v13, v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-gtz v13, :cond_1

    new-instance v13, Lcom/diotek/ime/framework/input/StrSegment;

    invoke-static/range {p0 .. p0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    sget-object v16, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v16, v16, p0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-direct/range {v13 .. v16}, Lcom/diotek/ime/framework/input/StrSegment;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-static {v10, v13, v14, v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v13, 0x0

    :goto_1
    add-int v5, p1, v13

    if-nez p3, :cond_3

    const/4 v13, 0x0

    :goto_2
    add-int v7, p1, v13

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p1

    if-ge v13, v0, :cond_4

    iput v5, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    iget v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v14, v3, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v3, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-static {v10, v13, v14, v15}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto :goto_0

    :cond_2
    add-int/lit8 v13, p2, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v13, p3, -0x1

    goto :goto_2

    :cond_4
    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_8

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-le v13, v0, :cond_b

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-gt v13, v7, :cond_7

    if-gez v11, :cond_5

    move v11, v2

    :cond_5
    move v12, v2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v12, v2

    :cond_8
    :goto_4
    if-gez v11, :cond_9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_9
    sub-int v1, p2, p3

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    iget v4, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v6, v11, 0x1

    move v2, v6

    :goto_5
    if-gt v2, v12, :cond_d

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-le v4, v13, :cond_a

    iget v4, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    :cond_a
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-nez p3, :cond_c

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    move/from16 v0, p1

    if-ne v13, v0, :cond_c

    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v2, -0x1

    goto :goto_4

    :cond_c
    move v11, v2

    move v12, v2

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    if-lt v13, v7, :cond_6

    goto :goto_4

    :cond_d
    if-ge v4, v5, :cond_e

    :goto_6
    iput v5, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v14, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    move/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    move v2, v6

    :goto_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/diotek/ime/framework/input/StrSegment;

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    add-int/2addr v13, v1

    iput v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    iget v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/2addr v13, v1

    iput v13, v8, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_e
    add-int v5, v4, v1

    goto :goto_6

    :cond_f
    const/4 v13, 0x1

    sub-int v14, v12, v11

    add-int/lit8 v14, v14, 0x1

    invoke-static {v10, v11, v13, v14}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    goto/16 :goto_0
.end method

.method public static moveCursor(II)I
    .locals 2
    .param p0    # I
    .param p1    # I

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, p0

    add-int v0, v1, p1

    invoke-static {p0, v0}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    move-result v1

    return v1
.end method

.method public static replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;)V
    .locals 3
    .param p0    # I
    .param p1    # [Lcom/diotek/ime/framework/input/StrSegment;

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method public static replaceStrSegment(I[Lcom/diotek/ime/framework/input/StrSegment;I)V
    .locals 3
    .param p0    # I
    .param p1    # [Lcom/diotek/ime/framework/input/StrSegment;
    .param p2    # I

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v1, p0

    sub-int v1, v0, p2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v1, v2}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V

    array-length v1, p1

    add-int/2addr v1, v0

    sub-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->setCursor(II)I

    return-void
.end method

.method protected static replaceStrSegment0(I[Lcom/diotek/ime/framework/input/StrSegment;II)V
    .locals 4
    .param p0    # I
    .param p1    # [Lcom/diotek/ime/framework/input/StrSegment;
    .param p2    # I
    .param p3    # I

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v2, p0

    if-ltz p2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p2, v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_1
    if-ltz p3, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le p3, v2, :cond_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    :cond_3
    move v0, p2

    :goto_0
    if-gt v0, p3, :cond_4

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_5

    aget-object v2, p1, v0

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    array-length v2, p1

    sub-int v3, p3, p2

    add-int/lit8 v3, v3, 0x1

    invoke-static {p0, p2, v2, v3}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->modifyUpper(IIII)V

    return-void
.end method

.method public static setBlockPrediction(Z)V
    .locals 0
    .param p0    # Z

    sput-boolean p0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mHasPrediction:Z

    return-void
.end method

.method public static setCursor(II)I
    .locals 5
    .param p0    # I
    .param p1    # I

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x1

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    if-nez p0, :cond_2

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v1

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v1, p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v4

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v1, v1, v4

    invoke-static {v4, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v1

    aput v1, v0, v3

    :goto_0
    return p1

    :cond_2
    if-ne p0, v4, :cond_4

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    invoke-static {v4, p1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->included(II)I

    move-result v2

    aput v2, v0, v3

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v4

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_3

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_1
    aput v0, v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aput p1, v0, v3

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    if-lez p1, :cond_5

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v3

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_2
    aput v0, v2, v4

    sget-object v2, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v0, v0, v4

    if-lez v0, :cond_6

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, v4

    sget-object v3, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/StrSegment;

    iget v0, v0, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    add-int/lit8 v0, v0, 0x1

    :goto_3
    aput v0, v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public static setCursorChangingOnComposing(I)V
    .locals 1
    .param p0    # I

    if-nez p0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mDisplayCursorState:Z

    goto :goto_0
.end method

.method public static size(I)I
    .locals 1
    .param p0    # I

    sget-object v0, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->toString(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(III)Ljava/lang/String;
    .locals 6
    .param p0    # I
    .param p1    # I
    .param p2    # I

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v5, p0

    move v2, p1

    :goto_0
    if-gt v2, p2, :cond_0

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/diotek/ime/framework/input/StrSegment;

    iget-object v5, v3, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    return-object v5

    :catch_0
    move-exception v1

    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public debugout()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_1

    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComposingText["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  cur = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mCursor:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v4, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/diotek/ime/framework/input/StrSegment;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->from:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v4, v2, Lcom/diotek/ime/framework/input/StrSegment;->to:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const-string v4, "OpenWnn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  str = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public getStringLayer(I)Ljava/util/ArrayList;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/diotek/ime/framework/input/StrSegment;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v1, Lcom/diotek/ime/framework/input/ComposingTextManagerForJapanese;->mStringLayer:[Ljava/util/ArrayList;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method
