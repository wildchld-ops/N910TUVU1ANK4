.class public Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;
.super Ljava/lang/Object;
.source "AutoSpaceController.java"


# static fields
.field private static final SYM_CLOSE_BRACKET:Ljava/lang/String; = ")}>]"

.field private static final SYM_CURRENCY:Ljava/lang/String; = "$\u00a3\u00a5\u20ac\u20a9\u20aa"

.field private static final SYM_OPEN_BRACKET:Ljava/lang/String; = "({<["

.field private static final SYM_PUNCTUATION:Ljava/lang/String; = ",;?!\u061b\u060c\u061f"

.field private static sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;


# instance fields
.field private mDisableSetUpAutoSpace:Z

.field private mEnableNextWordPredicton:Z

.field private mEnableNumeric:Z

.field private mEnableSymbolCloseBracekt:Z

.field private mEnableSymbolCurrency:Z

.field private mEnableSymbolOpenBracket:Z

.field private mEnableSymbolPunctuation:Z

.field private mEnableText:Z

.field private mEnableTrace:Z

.field private mInputLanguage:I

.field private mIsAutoSpace:Z

.field private mIsAutoSpacePreference:Z

.field private mLastActionIsTraceOrPick:Z

.field private mLastKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x656e0000

    iput v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    iput v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    return-void
.end method

.method private isPasswordInputType()Z
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPasswordInputType()Z

    move-result v0

    return v0
.end method

.method public static newInstance()Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->sInstance:Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;

    return-object v0
.end method


# virtual methods
.method public disableSetUpAutoSpace()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    return-void
.end method

.method public init(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    iput p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    return-void
.end method

.method public isAutoSpaceOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoSpacePreferenceOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    return v0
.end method

.method public isEnableAutoSpace(IZ)Z
    .locals 4
    .param p1    # I
    .param p2    # Z

    const/high16 v3, 0x69770000

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x20

    if-eq v1, p1, :cond_0

    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    goto :goto_0

    :cond_5
    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_6

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_6
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_7

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_7
    const/16 v1, 0x25

    if-ne v1, p1, :cond_8

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_8
    const/16 v1, -0x73

    if-ne v1, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const-string v1, "({<["

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_c

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_b

    :cond_a
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    :cond_b
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    :cond_c
    const-string v1, ")}>]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_f

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_e

    :cond_d
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    :cond_e
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    :cond_f
    const-string v1, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto/16 :goto_0
.end method

.method public isEnableAutoSpaceAfterPunctuation(I)Z
    .locals 3
    .param p1    # I

    const/4 v0, 0x0

    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2e

    if-ne v1, p1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isEnableAutoSpaceAtNextWordPrediction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtNumeric()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtSymbol(I)Z
    .locals 4
    .param p1    # I

    const/high16 v3, 0x69770000

    const/4 v0, 0x0

    const/4 v2, -0x1

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    if-ne v1, p1, :cond_3

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_3
    const/16 v1, 0x25

    if-ne v1, p1, :cond_4

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    goto :goto_0

    :cond_4
    const/16 v1, -0x73

    if-ne v1, p1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-string v1, "({<["

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_8

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    :cond_7
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    :cond_8
    const-string v1, ")}>]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_b

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v3, :cond_a

    :cond_9
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    goto :goto_0

    :cond_b
    const-string v1, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtText()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableAutoSpaceAtTrace()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpace:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->isPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLastActionIsTraceOrPick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    return-void
.end method

.method public setAutoSpaceOn(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mIsAutoSpacePreference:Z

    return-void
.end method

.method public setUpAutoSpace(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    const/high16 v5, 0x69770000

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    :cond_1
    :goto_1
    iput p1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    iput-boolean p2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mDisableSetUpAutoSpace:Z

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputSequenceCheck;->isThaiUnicode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    :cond_4
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    :cond_5
    const-string v0, ",;?!\u061b\u060c\u061f"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_7

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    const/16 v0, 0x2c

    if-eq v0, p1, :cond_6

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    :cond_6
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    :cond_7
    const/16 v0, 0x2e

    if-ne v0, p1, :cond_8

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    :cond_8
    const/16 v0, 0x25

    if-eq v0, p1, :cond_9

    const/16 v0, 0x27

    if-ne v0, p1, :cond_a

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastKeyCode:I

    const/16 v1, 0x73

    if-ne v0, v1, :cond_a

    :cond_9
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    goto :goto_1

    :cond_a
    const-string v0, ")}>]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_b

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-eq v0, v5, :cond_1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto :goto_1

    :cond_b
    const-string v0, "({<["

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_d

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    invoke-static {v0}, Lcom/diotek/ime/framework/util/Utils;->isArabicLanguage(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mInputLanguage:I

    if-ne v0, v5, :cond_1

    :cond_c
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    goto/16 :goto_1

    :cond_d
    const-string v0, "$\u00a3\u00a5\u20ac\u20a9\u20aa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    goto/16 :goto_1
.end method

.method public setUpAutoSpace(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_1

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCloseBracekt:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolPunctuation:Z

    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->setUpAutoSpace(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    goto :goto_0
.end method

.method public setUpByPickSuggestion()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->reset()V

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableTrace:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableText:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNumeric:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolCurrency:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableSymbolOpenBracket:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mEnableNextWordPredicton:Z

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/autospace/AutoSpaceController;->mLastActionIsTraceOrPick:Z

    return-void
.end method
