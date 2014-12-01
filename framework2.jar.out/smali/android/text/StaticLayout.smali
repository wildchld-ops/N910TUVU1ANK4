.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWSP:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1

.field static isCSCLinebreak:Z

.field static isJapaneseLinebreak:Z

.field static isSEALinebreak:Z


# instance fields
.field private mBottomPadding:I

.field private mBreakIterator:Ljava/text/BreakIterator;

.field private mBufend:I

.field private mBufstart:I

.field private mColumns:I

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mIncludePad:Z

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mOuterwidth:I

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    sput-boolean v0, Landroid/text/StaticLayout;->isSEALinebreak:Z

    sput-boolean v0, Landroid/text/StaticLayout;->isCSCLinebreak:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput-object v2, p0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15

    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p11, :cond_2

    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v0, p2

    iput v0, p0, Landroid/text/StaticLayout;->mBufstart:I

    move/from16 v0, p3

    iput v0, p0, Landroid/text/StaticLayout;->mBufend:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mOuterwidth:I

    move/from16 v0, p10

    iput-boolean v0, p0, Landroid/text/StaticLayout;->mIncludePad:Z

    move-object/from16 v0, p11

    iput-object v0, p0, Landroid/text/StaticLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void

    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 25

    cmpg-float v22, p8, p5

    if-gtz v22, :cond_0

    if-nez p10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    const/16 v24, 0x0

    aput v24, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    const/16 v24, 0x0

    aput v24, v22, v23

    :goto_0
    return-void

    :cond_0
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_4

    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sub-int v10, p2, p1

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    const/16 v18, 0x0

    move v15, v10

    move v7, v10

    :goto_2
    if-ltz v7, :cond_1

    if-nez v7, :cond_5

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_5

    :cond_1
    if-eqz v7, :cond_2

    move v7, v15

    :cond_2
    const/4 v5, 0x0

    move v4, v7

    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    aput v5, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    aput v4, v22, v23

    goto :goto_0

    :cond_4
    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    :cond_5
    add-int/lit8 v22, v7, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-gtz v22, :cond_1

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_6

    add-int/lit8 v15, v7, -0x1

    :cond_6
    add-float v18, v18, v21

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_7
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "StaticLayout"

    const-string v23, "Start Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_9

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_f

    :cond_9
    const/16 v18, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_a

    add-int v22, v7, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-lez v22, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    iget-object v0, v12, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v19, v0

    :goto_5
    if-lez v7, :cond_b

    if-ge v7, v10, :cond_b

    aget-char v22, v19, v7

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v22

    if-eqz v22, :cond_b

    new-instance v17, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v20

    add-float v22, v20, v6

    cmpg-float v22, v22, p5

    if-gtz v22, :cond_d

    :cond_b
    move v5, v7

    sub-int v4, v10, v7

    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    add-int/lit8 v5, v10, -0x1

    :goto_6
    if-lez v5, :cond_e

    add-int v22, v5, p1

    sub-int v22, v22, p4

    aget v22, p3, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_e

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    :cond_c
    add-float v18, v18, v21

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    :cond_e
    sub-int v4, v10, v5

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    move v14, v10

    move v15, v14

    sub-float v22, p5, v6

    const/high16 v23, 0x40000000

    div-float v13, v22, v23

    move v14, v10

    :goto_7
    if-ltz v14, :cond_10

    if-nez v14, :cond_13

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_13

    :cond_10
    if-eqz v14, :cond_11

    move v14, v15

    :cond_11
    sub-float v22, p5, v6

    sub-float v8, v22, v16

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v14, :cond_12

    add-int v22, v9, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    add-float v22, v21, v11

    cmpl-float v22, v22, v8

    if-lez v22, :cond_15

    :cond_12
    move v5, v9

    sub-int v4, v14, v9

    goto/16 :goto_3

    :cond_13
    add-int/lit8 v22, v14, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    add-float v22, v21, v16

    cmpl-float v22, v22, v13

    if-gtz v22, :cond_10

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_14

    add-int/lit8 v15, v14, -0x1

    :cond_14
    add-float v16, v16, v21

    add-int/lit8 v14, v14, -0x1

    goto :goto_7

    :cond_15
    add-float v11, v11, v21

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_16
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "StaticLayout"

    const-string v23, "Middle Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_4

    if-nez p1, :cond_3

    sparse-switch p0, :sswitch_data_0

    :cond_3
    move p1, v0

    goto :goto_0

    :sswitch_0
    move p1, v1

    goto :goto_0

    :cond_4
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_6

    if-nez p1, :cond_5

    sparse-switch p0, :sswitch_data_1

    :cond_5
    move p1, v0

    goto :goto_0

    :sswitch_1
    move p1, v1

    goto :goto_0

    :cond_6
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p0, v2, :cond_7

    move p1, v0

    goto :goto_0

    :cond_7
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_8

    const v2, 0x9fbb

    if-gt p0, v2, :cond_8

    move p1, v0

    goto :goto_0

    :cond_8
    const v2, 0xf900

    if-lt p0, v2, :cond_9

    const v2, 0xfad9

    if-gt p0, v2, :cond_9

    move p1, v0

    goto :goto_0

    :cond_9
    const v2, 0xa000

    if-lt p0, v2, :cond_a

    const v2, 0xa48f

    if-gt p0, v2, :cond_a

    move p1, v0

    goto :goto_0

    :cond_a
    const v2, 0xa490

    if-lt p0, v2, :cond_b

    const v2, 0xa4cf

    if-gt p0, v2, :cond_b

    move p1, v0

    goto :goto_0

    :cond_b
    const v2, 0xfe62

    if-lt p0, v2, :cond_c

    const v2, 0xfe66

    if-gt p0, v2, :cond_c

    move p1, v0

    goto :goto_0

    :cond_c
    const v2, 0xff10

    if-lt p0, v2, :cond_d

    const v2, 0xff19

    if-gt p0, v2, :cond_d

    move p1, v0

    goto :goto_0

    :cond_d
    sget-boolean v2, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v2, :cond_14

    const/16 v2, 0x3001

    if-lt p0, v2, :cond_f

    const/16 v2, 0x301f

    if-gt p0, v2, :cond_f

    if-nez p1, :cond_e

    packed-switch p0, :pswitch_data_0

    :cond_e
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    move p1, v0

    goto/16 :goto_0

    :pswitch_2
    move p1, v1

    goto/16 :goto_0

    :pswitch_3
    move p1, v1

    goto/16 :goto_0

    :cond_f
    const v2, 0xff01

    if-lt p0, v2, :cond_11

    const v2, 0xff9f

    if-gt p0, v2, :cond_11

    if-nez p1, :cond_10

    sparse-switch p0, :sswitch_data_2

    :cond_10
    sparse-switch p0, :sswitch_data_3

    move p1, v0

    goto/16 :goto_0

    :sswitch_2
    move p1, v1

    goto/16 :goto_0

    :sswitch_3
    move p1, v1

    goto/16 :goto_0

    :cond_11
    const/16 v2, 0x21

    if-lt p0, v2, :cond_13

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_13

    if-nez p1, :cond_12

    sparse-switch p0, :sswitch_data_4

    :cond_12
    move p1, v0

    goto/16 :goto_0

    :sswitch_4
    move p1, v1

    goto/16 :goto_0

    :cond_13
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p0, v0, :cond_0

    :cond_14
    move p1, v1

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v19

    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_0
    if-eqz p11, :cond_3

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    :cond_3
    if-nez v22, :cond_5

    if-eqz p21, :cond_4

    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_4
    if-eqz p20, :cond_5

    move/from16 p4, p6

    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    if-eqz p21, :cond_6

    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_6
    if-eqz p20, :cond_7

    move/from16 p5, p7

    :cond_7
    if-eqz p15, :cond_10

    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    const-wide/high16 v2, 0x3fe0000000000000L

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    if-eqz p14, :cond_8

    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x20000000

    or-int/2addr v3, v4

    aput v3, v24, v2

    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    :goto_3
    if-eqz p25, :cond_e

    if-nez v22, :cond_12

    const/16 v18, 0x1

    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0000000000000L

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    goto/16 :goto_2

    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 134

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_5

    :cond_0
    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v18, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v115, v0

    const/16 v128, 0x0

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v128, p1

    check-cast v128, Landroid/text/Spanned;

    :cond_1
    const/16 v93, 0x1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_LineBreak_CountryCodeDefaultFromCsc"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    sput-boolean v5, Landroid/text/StaticLayout;->isCSCLinebreak:Z

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v97

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    move-object/from16 v0, v97

    invoke-virtual {v0, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    const/4 v5, 0x1

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    :cond_3
    :goto_2
    move/from16 v29, p2

    :goto_3
    move/from16 v0, v29

    move/from16 v1, p3

    if-gt v0, v1, :cond_3f

    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v38

    if-gez v38, :cond_a

    move/from16 v38, p3

    :goto_4
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v100, v5, 0x1

    move/from16 v99, p5

    move/from16 v123, p5

    const/16 v16, 0x0

    if-eqz v128, :cond_f

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/LeadingMarginSpan;

    const/16 v108, 0x0

    :goto_5
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_b

    aget-object v112, v124, v108

    aget-object v5, v124, v108

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v99, v99, v5

    aget-object v5, v124, v108

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v123, v123, v5

    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_4

    move-object/from16 v113, v112

    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v0, v128

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v114

    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v100, v114, v5

    :cond_4
    add-int/lit8 v108, v108, 0x1

    goto :goto_5

    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    sput-boolean v5, Landroid/text/StaticLayout;->isCSCLinebreak:Z

    goto/16 :goto_1

    :cond_7
    sget-boolean v5, Landroid/text/StaticLayout;->isCSCLinebreak:Z

    if-nez v5, :cond_8

    const-string/jumbo v5, "th_TH"

    invoke-virtual/range {v97 .. v97}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "km_KH"

    invoke-virtual/range {v97 .. v97}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    const/4 v5, 0x1

    sput-boolean v5, Landroid/text/StaticLayout;->isSEALinebreak:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    if-nez v5, :cond_3

    invoke-static/range {v97 .. v97}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x0

    sput-boolean v5, Landroid/text/StaticLayout;->isSEALinebreak:Z

    const/4 v5, 0x0

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_4

    :cond_b
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v16

    array-length v5, v0

    if-eqz v5, :cond_f

    if-eqz v17, :cond_c

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v16

    array-length v6, v0

    if-ge v5, v6, :cond_d

    :cond_c
    move-object/from16 v0, v16

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    :cond_d
    const/16 v108, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v5, v0

    move/from16 v0, v108

    if-ge v0, v5, :cond_f

    aget-object v5, v16, v108

    move-object/from16 v0, v128

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    move/from16 v0, v116

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v17, v108

    :goto_7
    add-int/lit8 v108, v108, 0x1

    goto :goto_6

    :cond_e
    aput v13, v17, v108

    goto :goto_7

    :cond_f
    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, v29

    move/from16 v3, v38

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v27, v0

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v28, v0

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v22, v0

    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v23, v0

    move/from16 v133, v99

    const/16 v62, 0x0

    move/from16 v7, v29

    move/from16 v117, v29

    move/from16 v122, v62

    const/16 v118, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v119, 0x0

    move/from16 v101, v29

    move/from16 v102, v62

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v19, 0x0

    const/16 v107, 0x0

    const/16 v130, 0x0

    move/from16 v127, v29

    :goto_8
    move/from16 v0, v127

    move/from16 v1, v38

    if-ge v0, v1, :cond_3c

    if-nez v128, :cond_1f

    move/from16 v125, v38

    sub-int v126, v125, v127

    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move/from16 v2, v126

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :goto_9
    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v106, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v104, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v103, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v105, v0

    const/16 v94, 0x0

    sget-boolean v5, Landroid/text/StaticLayout;->isSEALinebreak:Z

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    :cond_10
    move/from16 v111, v127

    :goto_a
    move/from16 v0, v111

    move/from16 v1, v125

    if-ge v0, v1, :cond_37

    sub-int v5, v111, v29

    aget-char v96, v27, v5

    const/16 v5, 0xa

    move/from16 v0, v96

    if-ne v0, v5, :cond_20

    :goto_b
    const/16 v5, 0x20

    move/from16 v0, v96

    if-eq v0, v5, :cond_11

    const/16 v5, 0x9

    move/from16 v0, v96

    if-eq v0, v5, :cond_11

    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_28

    :cond_11
    const/16 v110, 0x1

    :goto_c
    move/from16 v0, v133

    int-to-float v5, v0

    cmpg-float v5, v62, v5

    if-lez v5, :cond_12

    if-eqz v110, :cond_35

    :cond_12
    move/from16 v102, v62

    add-int/lit8 v101, v111, 0x1

    move/from16 v0, v106

    move/from16 v1, v41

    if-ge v0, v1, :cond_13

    move/from16 v41, v106

    :cond_13
    move/from16 v0, v103

    move/from16 v1, v39

    if-ge v0, v1, :cond_14

    move/from16 v39, v103

    :cond_14
    move/from16 v0, v105

    move/from16 v1, v40

    if-le v0, v1, :cond_15

    move/from16 v40, v105

    :cond_15
    move/from16 v0, v104

    move/from16 v1, v42

    if-le v0, v1, :cond_16

    move/from16 v42, v104

    :cond_16
    const/16 v5, 0x200b

    move/from16 v0, v96

    if-ne v0, v5, :cond_17

    const/16 v94, 0x1

    :cond_17
    const/16 v109, 0x0

    sget-boolean v5, Landroid/text/StaticLayout;->isSEALinebreak:Z

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mBreakIterator:Ljava/text/BreakIterator;

    sub-int v6, v111, v29

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v5

    if-nez v5, :cond_1a

    if-nez v110, :cond_1a

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_18

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_19

    :cond_18
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_1a

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1a

    :cond_19
    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_29

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_29

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_29

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_29

    :cond_1a
    const/16 v109, 0x1

    :goto_d
    if-eqz v109, :cond_1e

    move/from16 v122, v62

    add-int/lit8 v117, v111, 0x1

    move/from16 v0, v41

    move/from16 v1, v121

    if-ge v0, v1, :cond_1b

    move/from16 v121, v41

    :cond_1b
    move/from16 v0, v39

    move/from16 v1, v118

    if-ge v0, v1, :cond_1c

    move/from16 v118, v39

    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v120

    if-le v0, v1, :cond_1d

    move/from16 v120, v40

    :cond_1d
    move/from16 v0, v42

    move/from16 v1, v119

    if-le v0, v1, :cond_1e

    move/from16 v119, v42

    :cond_1e
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_a

    :cond_1f
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v125

    sub-int v126, v125, v127

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v128

    move/from16 v1, v127

    move/from16 v2, v125

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move-object/from16 v1, v128

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v115

    move-object/from16 v1, p4

    move-object/from16 v2, v129

    move/from16 v3, v126

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_9

    :cond_20
    const/16 v5, 0x9

    move/from16 v0, v96

    if-ne v0, v5, :cond_23

    if-nez v107, :cond_21

    const/16 v107, 0x1

    const/16 v19, 0x1

    if-eqz v128, :cond_21

    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v128

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v129

    check-cast v129, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v129

    array-length v5, v0

    if-lez v5, :cond_21

    new-instance v130, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_21
    if-eqz v130, :cond_22

    move-object/from16 v0, v130

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v62

    goto/16 :goto_b

    :cond_22
    const/16 v5, 0x14

    move/from16 v0, v62

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v62

    goto/16 :goto_b

    :cond_23
    const v5, 0xd800

    move/from16 v0, v96

    if-lt v0, v5, :cond_27

    const v5, 0xdfff

    move/from16 v0, v96

    if-gt v0, v5, :cond_27

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_27

    sub-int v5, v111, v29

    move-object/from16 v0, v27

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v98

    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v98

    if-lt v0, v5, :cond_26

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v98

    if-gt v0, v5, :cond_26

    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v95

    if-eqz v95, :cond_25

    if-nez v128, :cond_24

    move-object/from16 v131, p4

    :goto_e
    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v131 .. v131}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    mul-float/2addr v5, v6

    invoke-virtual/range {v95 .. v95}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v132, v5, v6

    add-float v62, v62, v132

    const/16 v19, 0x1

    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_b

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v131, v0

    goto :goto_e

    :cond_25
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    :cond_26
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    :cond_27
    sub-int v5, v111, v29

    aget v5, v28, v5

    add-float v62, v62, v5

    goto/16 :goto_b

    :cond_28
    const/16 v110, 0x0

    goto/16 :goto_c

    :cond_29
    const/16 v109, 0x0

    goto/16 :goto_d

    :cond_2a
    sget-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v5, :cond_30

    if-nez v110, :cond_2e

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_2b

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_2c

    :cond_2b
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_2e

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2e

    :cond_2c
    if-nez v94, :cond_2d

    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_2d

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2d

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_2d

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_2d
    if-nez v94, :cond_2f

    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_2f

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2f

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_2f

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_2f

    :cond_2e
    const/16 v109, 0x1

    :goto_f
    goto/16 :goto_d

    :cond_2f
    const/16 v109, 0x0

    goto :goto_f

    :cond_30
    if-nez v110, :cond_33

    const/16 v5, 0x2f

    move/from16 v0, v96

    if-eq v0, v5, :cond_31

    const/16 v5, 0x2d

    move/from16 v0, v96

    if-ne v0, v5, :cond_32

    :cond_31
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_33

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_32
    const/16 v5, 0x2e80

    move/from16 v0, v96

    if-lt v0, v5, :cond_34

    const/4 v5, 0x1

    move/from16 v0, v96

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_34

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_34

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v29

    aget-char v5, v27, v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_34

    :cond_33
    const/16 v109, 0x1

    :goto_10
    goto/16 :goto_d

    :cond_34
    const/16 v109, 0x0

    goto :goto_10

    :cond_35
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-gt v5, v0, :cond_38

    const/16 v34, 0x1

    :goto_11
    move/from16 v0, v117

    if-eq v0, v7, :cond_39

    move/from16 v8, v117

    move/from16 v9, v118

    move/from16 v10, v120

    move/from16 v11, v121

    move/from16 v12, v119

    move/from16 v32, v122

    :goto_12
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v24, p3

    move/from16 v25, p9

    move/from16 v26, p10

    move-object/from16 v30, p12

    move/from16 v31, p11

    move-object/from16 v33, p4

    invoke-direct/range {v5 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    move v7, v8

    add-int/lit8 v111, v7, -0x1

    move/from16 v101, v7

    move/from16 v117, v7

    const/16 v62, 0x0

    const/16 v42, 0x0

    move/from16 v41, v42

    move/from16 v40, v42

    move/from16 v39, v42

    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    add-int/lit8 v100, v100, -0x1

    if-gtz v100, :cond_36

    move/from16 v133, v123

    :cond_36
    move/from16 v0, v127

    if-ge v7, v0, :cond_3b

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Landroid/text/MeasuredText;->setPos(I)V

    move/from16 v125, v7

    :cond_37
    :goto_13
    move/from16 v127, v125

    goto/16 :goto_8

    :cond_38
    const/16 v34, 0x0

    goto :goto_11

    :cond_39
    move/from16 v0, v101

    if-eq v0, v7, :cond_3a

    move/from16 v8, v101

    move/from16 v9, v39

    move/from16 v10, v40

    move/from16 v11, v41

    move/from16 v12, v42

    move/from16 v32, v102

    goto :goto_12

    :cond_3a
    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, v18

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, v18

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, v18

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, v18

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int v5, v7, v29

    aget v32, v28, v5

    goto :goto_12

    :cond_3b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_1e

    goto :goto_13

    :cond_3c
    move/from16 v0, v38

    if-eq v0, v7, :cond_3e

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_3e

    or-int v5, v41, v42

    or-int v5, v5, v40

    or-int v5, v5, v39

    if-nez v5, :cond_3d

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v41, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v42, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v39, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v40, v0

    :cond_3d
    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_42

    const/16 v64, 0x1

    :goto_14
    move-object/from16 v35, p0

    move-object/from16 v36, p1

    move/from16 v37, v7

    move/from16 v43, v13

    move/from16 v44, p7

    move/from16 v45, p8

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    move-object/from16 v48, v18

    move/from16 v49, v19

    move/from16 v50, v20

    move-object/from16 v51, v21

    move/from16 v52, v22

    move/from16 v53, v23

    move/from16 v54, p3

    move/from16 v55, p9

    move/from16 v56, p10

    move-object/from16 v57, v27

    move-object/from16 v58, v28

    move/from16 v59, v29

    move-object/from16 v60, p12

    move/from16 v61, p11

    move-object/from16 v63, p4

    invoke-direct/range {v35 .. v64}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    :cond_3e
    move/from16 v29, v38

    move/from16 v0, v38

    move/from16 v1, p3

    if-eq v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v6, :cond_43

    :cond_3f
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_40

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_41

    :cond_40
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v6, :cond_41

    move-object/from16 v0, v115

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v67, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v68, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v69, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v70, v0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v0, v115

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v79, v0

    move-object/from16 v0, v115

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v80, v0

    move-object/from16 v0, v115

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v81, v0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v90, 0x0

    const/16 v92, 0x0

    move-object/from16 v63, p0

    move-object/from16 v64, p1

    move/from16 v65, p3

    move/from16 v66, p3

    move/from16 v71, v13

    move/from16 v72, p7

    move/from16 v73, p8

    move-object/from16 v76, v18

    move/from16 v78, v20

    move/from16 v82, p3

    move/from16 v83, p9

    move/from16 v84, p10

    move/from16 v87, p2

    move-object/from16 v88, p12

    move/from16 v89, p11

    move-object/from16 v91, p4

    invoke-direct/range {v63 .. v92}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v13

    :cond_41
    return-void

    :cond_42
    const/16 v64, 0x0

    goto/16 :goto_14

    :cond_43
    move/from16 v29, v38

    goto/16 :goto_3
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v3, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method
