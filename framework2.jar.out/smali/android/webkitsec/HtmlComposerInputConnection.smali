.class public Landroid/webkitsec/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object;

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"

.field public static TTSbefore:I


# instance fields
.field public DEBUG:Z

.field final MAX_SPANS:I

.field public TTSbeforeText:Ljava/lang/String;

.field private TTSstart:I

.field TTStext:Ljava/lang/String;

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field protected composingEnd:I

.field protected composingStart:I

.field protected curSelEnd:I

.field protected curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field protected mALTKeyIsPressed:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field private mDefaultCompositeUnderlineWidth:I

.field mTargetView:Landroid/webkitsec/HtmlComposerView;

.field private mToastForMaxLength:Landroid/widget/Toast;

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/webkitsec/ComposingText;

    invoke-direct {v0}, Landroid/webkitsec/ComposingText;-><init>()V

    sput-object v0, Landroid/webkitsec/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbefore:I

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 4
    .param p1    # Landroid/webkitsec/HtmlComposerView;

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bShadeColor:Z

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSstart:I

    const-string v0, ""

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    iput v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mCursorPosition:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->MAX_SPANS:I

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    iput-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;I)V
    .locals 0
    .param p1    # Landroid/webkitsec/HtmlComposerView;
    .param p2    # I

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;-><init>(Landroid/webkitsec/HtmlComposerView;)V

    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    return-void
.end method

.method private isBracketChar(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1    # Ljava/lang/CharSequence;

    const-string v0, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    const-string v1, "<>{}[]()\u00ab\u00bb\u300a\u300b"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isThaiVowel(Ljava/lang/CharSequence;)Z
    .locals 5
    .param p1    # Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xe0e

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe38

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe39

    if-eq v3, v4, :cond_0

    const/16 v4, 0xe3a

    if-ne v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 11
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # Z

    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "replaceTextToHtml called here"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "settings "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " text coming "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v8, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v5, 0x0

    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const/4 v8, -0x1

    if-ne v0, v8, :cond_3

    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-eqz v8, :cond_1

    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    :cond_3
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    if-eqz p1, :cond_1

    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_c

    move-object v5, p1

    check-cast v5, Landroid/text/Spanned;

    invoke-static {v5}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Landroid/webkitsec/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->isBracketChar(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/webkitsec/HtmlComposerInputConnection;->isRTLText(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v4

    const-string v7, ""

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_6
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8, v7, p2, p3, v9}, Landroid/webkitsec/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v3

    const-string v8, "HtmlComposerInputConnection"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selection offset value start "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",End:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_d

    iget v8, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v8, v3, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-ne v8, v9, :cond_7

    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    :cond_7
    :goto_2
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v0, v8

    :cond_8
    if-lez p2, :cond_e

    add-int/lit8 v8, v0, -0x1

    add-int/2addr v8, p2

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    :cond_9
    :goto_3
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-gez v8, :cond_a

    const/4 v8, 0x0

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    :cond_a
    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v8, 0x1

    if-ne v8, v4, :cond_f

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    :cond_b
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Landroid/webkitsec/HtmlComposerInputConnection;->isThaiVowel(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_4

    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    const/4 v8, 0x0

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    const/4 v8, 0x0

    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mDefaultCompositeUnderlineWidth:I

    int-to-float v8, v8

    iput v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v8, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v8, -0x1

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    goto :goto_2

    :cond_e
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int v8, v0, v8

    add-int/2addr v8, p2

    iput v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_3

    :cond_f
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->textChangedForWatcher(Z)V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    goto :goto_4
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .param p1    # I

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .param p1    # Landroid/view/inputmethod/CompletionInfo;

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .locals 2
    .param p1    # Landroid/view/inputmethod/CorrectionInfo;

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection commitCorrection return TRUE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 11
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    const v10, 0x1040bf6

    const v9, 0x1040bf5

    const/4 v8, -0x1

    const/4 v4, 0x0

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v5, :cond_1

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    const/4 v3, 0x0

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v8, v5, :cond_3

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v8, v5, :cond_3

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-le v5, v6, :cond_3

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    sub-int v3, v5, v6

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText prevComposingTextLen = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v6, v6, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-lt v5, v6, :cond_5

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    :goto_1
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_4
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "commitText mBeforeText.length = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], beforeText = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    :cond_7
    invoke-direct {p0, p1, p2, v4}, Landroid/webkitsec/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5, v4}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "HtmlComposerInputConnection"

    const-string v6, "commitText AccessibilityManager"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public convertBracket(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/CharSequence;

    const/16 v6, 0x300b

    const/16 v5, 0x300a

    const/16 v4, 0xbb

    const/16 v3, 0xab

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const-string/jumbo v2, "{"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "}"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "{"

    goto :goto_0

    :cond_2
    const-string v2, "["

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "]"

    goto :goto_0

    :cond_3
    const-string v2, "]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "["

    goto :goto_0

    :cond_4
    const-string v2, "<"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, ">"

    goto :goto_0

    :cond_5
    const-string v2, ">"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "<"

    goto :goto_0

    :cond_6
    const-string v2, "("

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v0, ")"

    goto :goto_0

    :cond_7
    const-string v2, ")"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "("

    goto :goto_0

    :cond_8
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 6
    .param p1    # I
    .param p2    # I

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSurroundingText left "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rgh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const-string v0, ""

    if-ge p1, v2, :cond_2

    invoke-virtual {p0, p2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->beginBatchEdit()Z

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, p1, p2}, Landroid/webkitsec/HtmlComposerView;->deleteSurroundingText(II)V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->endBatchEdit()Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3, v1}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\nX+\n+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->getTTSbeforeText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->getTTStext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/webkitsec/HtmlComposerInputConnection;->setTTSbeforeText(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/webkitsec/HtmlComposerView;->textToSpeech(II)V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-ge p2, v2, :cond_3

    invoke-virtual {p0, p1, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public doExecute(Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Landroid/os/Bundle;

    const/4 v0, 0x0

    return-object v0
.end method

.method public endBatchEdit()Z
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endBatchEdit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    return v0
.end method

.method public finishComposingText()Z
    .locals 3

    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishComposingText  composingStart   composingEnd  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .param p1    # I

    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 10
    .param p1    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p2    # I

    const/4 v7, 0x0

    const-string v6, "HtmlComposerInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExtractedText request.hintMaxChars "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "request.hintMaxLines "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v6, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->beginBatchEdit()Z

    new-instance v2, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iget v6, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    if-lez v6, :cond_4

    iget v1, p1, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    :goto_1
    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7}, Landroid/webkitsec/HtmlComposerInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    :goto_2
    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v6, :cond_2

    iget-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    iput v7, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    if-gtz v6, :cond_6

    move v6, v7

    :goto_3
    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    if-eqz v3, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v6, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    :goto_4
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    if-gtz v6, :cond_8

    move v6, v7

    :goto_5
    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const-string v6, "HtmlComposerInputConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getExtractedText outText.selectionStart "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " outText.selectionEnd "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "outText.startOffset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->endBatchEdit()Z

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v6, :cond_9

    const-string v6, "HtmlComposerInputConnection"

    const-string v7, "getExtractedText return without update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x1e

    goto/16 :goto_1

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    goto/16 :goto_3

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    iput v6, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    goto :goto_4

    :cond_8
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v6, v8

    goto :goto_5

    :cond_9
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v6, v7, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto/16 :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # I

    const-string v1, "HtmlComposerInputConnection"

    const-string v2, "getSelectedText"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 10
    .param p1    # Landroid/text/Spanned;

    const/high16 v9, 0x1000000

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_4

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    const-class v7, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/CharacterStyle;

    const/4 v1, 0x0

    :goto_1
    array-length v7, v5

    if-ge v1, v7, :cond_3

    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/BackgroundColorSpan;

    if-eqz v7, :cond_0

    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v7}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v7

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_1

    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    aget-object v7, v5, v1

    instance-of v7, v7, Landroid/text/style/SuggestionSpan;

    if-eqz v7, :cond_2

    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    aget-object v7, v5, v1

    check-cast v7, Landroid/text/style/SuggestionSpan;

    invoke-virtual {v7, v3}, Landroid/text/style/SuggestionSpan;->updateDrawState(Landroid/text/TextPaint;)V

    new-instance v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6}, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;-><init>()V

    iput v0, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    iput v2, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    iput-boolean v8, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    iget v7, v3, Landroid/text/TextPaint;->underlineColor:I

    add-int/2addr v7, v9

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineColor:I

    iget v7, v3, Landroid/text/TextPaint;->underlineThickness:F

    iput v7, v6, Landroid/webkitsec/HtmlComposerInputConnection$SpanDataInfo;->underlineThickness:F

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    return-void
.end method

.method public getTTSbeforeText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-object v0
.end method

.method public getTTStext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-object v0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # I
    .param p2    # I

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    sget-object v6, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x20

    aput-char v5, v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    move-object v4, v3

    :cond_4
    if-nez v4, :cond_5

    const-string v4, ""

    :cond_5
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextAfterCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # I
    .param p2    # I

    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v5, :cond_1

    const-string v4, ""

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-gtz v5, :cond_2

    const-string v4, ""

    goto :goto_0

    :cond_2
    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-le p1, v5, :cond_3

    iget p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    :cond_3
    iget-object v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    sget-object v6, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x20

    aput-char v5, v0, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    move-object v4, v3

    :cond_6
    if-nez v4, :cond_7

    const-string v4, ""

    :cond_7
    iget-boolean v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string v5, "HtmlComposerInputConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTextBeforeCursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " n "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " flags "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0
.end method

.method isInBatchEditMode()Z
    .locals 1

    iget v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRTLText(Ljava/lang/String;)Z
    .locals 13
    .param p1    # Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-gtz v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_1
    :try_start_0
    iget-object v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v11, 0x3e8

    sget-object v12, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v11, 0x64

    sget-object v12, Landroid/webkitsec/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    invoke-virtual {v10, v11, v12}, Landroid/webkitsec/HtmlComposerView;->getTextAroundCursor(ILandroid/webkitsec/HtmlComposerView$CursorDirection;)Ljava/lang/String;

    move-result-object v7

    if-nez v1, :cond_2

    if-eqz v7, :cond_c

    :cond_2
    if-nez v1, :cond_7

    const-string v1, ""

    :cond_3
    :goto_1
    move-object v2, v1

    if-eqz v7, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    new-instance v0, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v0, v2, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v5, 0x1

    :cond_5
    if-eqz v7, :cond_6

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v3, v9, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x2

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    :goto_2
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_9

    const/4 v5, 0x1

    :cond_6
    :goto_3
    if-eqz v5, :cond_c

    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    const/16 v10, 0xa

    invoke-virtual {v1, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    add-int/lit8 v10, v8, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_8
    new-instance v6, Ljava/text/Bidi;

    const/4 v10, -0x1

    invoke-direct {v6, v7, v10}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-virtual {v3}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v6}, Ljava/text/Bidi;->baseIsLeftToRight()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :catch_0
    move-exception v4

    const-string v10, "HtmlComposerInputConnection"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TAGVIVEK ERROR IN HTMLComposerIC, Msg= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .param p1    # I

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkitsec/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkitsec/HtmlComposerView;->setCaretForEdit(Z)V

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 18
    .param p1    # I

    const-string v1, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performEditorAction "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x5

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v4, 0x82

    invoke-virtual {v1, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_1

    const/16 v1, 0x82

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/16 v4, 0x21

    invoke-virtual {v1, v4}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_3

    const/16 v1, 0x21

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/16 v7, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x16

    move-wide v4, v2

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v2

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/webkitsec/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iput v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "removeComposingSpan called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    iget-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 13
    .param p1    # Landroid/view/KeyEvent;

    const/4 v12, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v9, :cond_1

    move v7, v8

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    if-eq v9, v7, :cond_3

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v9, 0x3d

    if-ne v9, v4, :cond_4

    if-eqz v2, :cond_0

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v9, "InsertText"

    const-string v10, "    "

    invoke-virtual {v8, v9, v10}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->finishComposingText()Z

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8, v7}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl(Z)V

    goto :goto_0

    :cond_3
    move v2, v8

    goto :goto_1

    :cond_4
    const/16 v9, 0x42

    if-ne v4, v9, :cond_8

    if-eqz v2, :cond_0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->clearComposingSelection()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent keyEvent.KEYCODE_ENTER mBeforeText.length = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], beforeText = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x1

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    :cond_6
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v10, "InsertText"

    const-string v11, "\n"

    invoke-virtual {v9, v10, v11}, Landroid/webkitsec/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)Z

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent keyEvent.KEYCODE_ENTER AccessibilityManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v3, v8, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0x43

    if-ne v4, v9, :cond_e

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_9

    const-string v9, "HtmlComposerInputConnection"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendKeyEvent keyEvent.KEYCODE_DEL mBeforeText.length = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "], beforeText = ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    if-lez v9, :cond_a

    const/4 v5, 0x1

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    add-int/lit8 v3, v9, -0x1

    :cond_a
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const-string v10, ""

    invoke-virtual {v9, v10, v7}, Landroid/webkitsec/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v9, v12, :cond_b

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v9, v12, :cond_b

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v10, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-ne v9, v10, :cond_b

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    :cond_b
    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelectionWithAbsolute()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/webkitsec/HtmlComposerView;->drawSelectionControl()V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0, v7, v8}, Landroid/webkitsec/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkitsec/HtmlComposerInputConnection;->isThaiVowel(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->invalidate()V

    :cond_c
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v8}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v9, :cond_d

    const-string v9, "HtmlComposerInputConnection"

    const-string/jumbo v10, "sendKeyEvent keyEvent.KEYCODE_DEL AccessibilityManager"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v9, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v9, v3, v5, v8, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x39

    if-ne v4, v9, :cond_f

    if-eqz v2, :cond_10

    iput-boolean v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    :cond_f
    :goto_2
    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v8, :cond_11

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v6

    :goto_3
    if-eqz v6, :cond_0

    invoke-virtual {v6, p1}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    :cond_10
    iput-boolean v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    goto :goto_2

    :cond_11
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public setComposingRegion(II)Z
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setComposingRegion start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkitsec/HtmlComposerView;->setComposingRegion(II)V

    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, v0}, Landroid/webkitsec/HtmlComposerView;->UpdateRichTextToolbar(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 10
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v6, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_2
    const/4 v3, 0x0

    const/4 v6, -0x1

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-eq v6, v7, :cond_3

    const/4 v6, -0x1

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    if-eq v6, v7, :cond_3

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-le v6, v7, :cond_3

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    sub-int v3, v6, v7

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText prevComposingTextLen = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->htmlLength()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v7, v7, Landroid/webkitsec/HtmlComposerView;->mMaxHtmlLength:I

    if-lt v6, v7, :cond_5

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    if-nez v6, :cond_4

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    :goto_1
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mToastForMaxLength:Landroid/widget/Toast;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf5

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->hideInsertionController()V

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v1

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText mBeforeText.length = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], beforeText = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    if-lt v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_7

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v7, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-interface {v1, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_7
    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText removedText = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :cond_9
    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    iget v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    :cond_a
    :goto_2
    const/4 v6, 0x1

    invoke-direct {p0, p1, p2, v6}, Landroid/webkitsec/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/webkitsec/HtmlComposerView;->DoClearImageSelection()V

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    :goto_3
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-boolean v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "HtmlComposerInputConnection"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setComposingText AccessibilityManager fromIndex = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], removedCount = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], addedCount = ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v6, v2, v4, v0, v1}, Landroid/webkitsec/HtmlComposerView;->sendAccessibilityEventTypeViewTextChanged(IIILjava/lang/CharSequence;)V

    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_d
    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_2

    :cond_e
    iget-object v6, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkitsec/HtmlComposerView;->setComposingState(Z)V

    goto :goto_3
.end method

.method public setSelection(II)Z
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x1

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSelection start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p2, :cond_3

    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->moveCursorBegining()V

    :goto_1
    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1, p1, p2}, Landroid/webkitsec/HtmlComposerView;->setEditableSelection(II)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mALTKeyIsPressed:Z

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->moveCursorSelectionToBeginningOfDocument()V

    :cond_4
    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->selectedType()I

    move-result v1

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    if-ne p2, v1, :cond_0

    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iput p2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    goto :goto_0
.end method

.method public setTTSbeforeText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSbeforeText:Ljava/lang/String;

    return-void
.end method

.method public setTTSstart(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTSstart:I

    return-void
.end method

.method public setTTStext(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->TTStext:Ljava/lang/String;

    return-void
.end method

.method public setTargetNull()V
    .locals 2

    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->removeComposingSpan()V

    return-void
.end method

.method public updateInputMethodSelection()V
    .locals 6

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkitsec/HtmlComposerView;->updateIMSelectionToEditor(II)V

    :cond_0
    iget v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_1

    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    iget v2, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd composingStart, composingEnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "updateInputMethodSelection exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateInputMethodSelectionWithAbsolute()V
    .locals 4

    iget-object v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v0

    iget v1, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v1, v0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    iput v1, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateInputMethodSelection curSelStart curSelEnd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 6

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iget-object v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->mTargetView:Landroid/webkitsec/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkitsec/HtmlComposerView;->getSelectionOffset()Landroid/webkitsec/HtmlComposerView$SelectionOffset;

    move-result-object v2

    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    iget v3, v2, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    const-string v3, "HtmlComposerInputConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateInputMethodSelectionWithRandom curSelStart curSelEnd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkitsec/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/webkitsec/HtmlComposerInputConnection;->updateInputMethodSelection()V

    return-void
.end method
