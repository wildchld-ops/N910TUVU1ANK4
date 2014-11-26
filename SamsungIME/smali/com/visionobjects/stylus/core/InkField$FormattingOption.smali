.class public final Lcom/visionobjects/stylus/core/InkField$FormattingOption;
.super Ljava/lang/Object;
.source "InkField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/stylus/core/InkField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FormattingOption"
.end annotation


# static fields
.field public static final AddTrailingSpace:I = 0x8

.field public static final EmptySpacingForm:I = 0x2

.field public static final EraseReplacementChar:I = 0x800

.field public static final NoSpecificFormatting:I = 0x0

.field public static final Normalize:I = 0x1

.field public static final NormalizeBracket:I = 0x20000

.field public static final RecomputeSingleDashesBaselines:I = 0x10000

.field public static final RemoveDuplicateWhitespaces:I = 0x40

.field public static final RemoveDuplicatedCandidates:I = 0x8000

.field public static final RemoveLineBreaks:I = 0x80

.field public static final StringHolderWhitespaceForm:I = 0x4

.field public static final TrimLeadingBackspace:I = 0x4000

.field public static final TrimLeadingSpace:I = 0x1000

.field public static final TrimLeadingWhitespaces:I = 0x20

.field public static final TrimTrailingSpace:I = 0x2000

.field public static final TrimTrailingWhitespaces:I = 0x10

.field public static final UseFrenchFormatting:I = 0x400

.field public static final WithCJKFullSizePunct:I = 0x100

.field public static final WithMirroredSymbols:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
