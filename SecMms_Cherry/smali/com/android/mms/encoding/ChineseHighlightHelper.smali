.class public Lcom/android/mms/encoding/ChineseHighlightHelper;
.super Ljava/lang/Object;
.source "ChineseHighlightHelper.java"


# static fields
.field private static final MAX_MULTI_PINYIN_COUNT:I = 0x4


# instance fields
.field private final DEBUG_HIGH:Z

.field private final DEBUG_LOG:Z

.field private final MAX_LEN_COMBINATION_ARRAY:I

.field private final MAX_LEN_NAME_FOR_PINYIN_CALCULATING:I

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

.field private final PINYIN_SEARCH_HIGHLIGHT_MULTIPINYIN:Z

.field private final TAG:Ljava/lang/String;

.field indices:[I

.field mContext:Landroid/content/Context;

.field mFullString:Ljava/lang/StringBuilder;

.field mFullStringMultiPinyin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field mInitialString:Ljava/lang/StringBuilder;

.field mInitialStringMultiPinyin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternString:Ljava/lang/String;

.field private mPatternStringRaw:Ljava/lang/String;

.field private matchNameText:Ljava/lang/String;

.field name:Landroid/widget/TextView;

.field private nameText:Ljava/lang/String;

.field p:Ljava/util/regex/Pattern;

.field public tokenTypePinyinIncluded:Z

.field tokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/encoding/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MODE_INITIAL:Z

    iput-boolean v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MODE_FULL:Z

    iput-boolean v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->PINYIN_SEARCH_HIGHLIGHT_MULTIPINYIN:Z

    const-string v0, "ChineseHighlightHelper"

    iput-object v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->DEBUG_LOG:Z

    iput-boolean v1, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->DEBUG_HIGH:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->indices:[I

    iput-boolean v1, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->MAX_LEN_NAME_FOR_PINYIN_CALCULATING:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->MAX_LEN_COMBINATION_ARRAY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkIncludingChineseChar(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/mms/encoding/HanziToPinyin;->getInstance()Lcom/android/mms/encoding/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/mms/encoding/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/encoding/HanziToPinyin$Token;

    iget v4, v3, Lcom/android/mms/encoding/HanziToPinyin$Token;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "ChineseHighlightHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--checkIncludingChineseChar : includePinyinString="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private findHighlightFullPinyin()Z
    .locals 9

    const-string v5, "ChineseHighlightHelper"

    const-string v6, "--(2)findHighlightFullPinyin()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternStringRaw:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->indices:[I

    invoke-direct {p0, v5, v6, v4}, Lcom/android/mms/encoding/ChineseHighlightHelper;->findSearchKeywordPositionPinyinFullStringMulti(Ljava/lang/String;[I[Ljava/lang/String;)Z

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/SpannableString;

    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0xcc4a16

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v6, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->indices:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->indices:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    const/16 v8, 0x21

    invoke-interface {v3, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0

    :cond_3
    iget-object v5, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private findHighlightInitialPinyin()Z
    .locals 7

    const-string v4, "ChineseHighlightHelper"

    const-string v5, "--(1)findHighlightInitialPinyin()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/mms/encoding/ChineseHighlightHelper;->checkIncludingChineseChar(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    if-nez v1, :cond_1

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->indices:[I

    invoke-direct {p0, v4, v5, v6}, Lcom/android/mms/encoding/ChineseHighlightHelper;->searchAndHighlight(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->p:Ljava/util/regex/Pattern;

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/mms/encoding/ChineseHighlightHelper;->getMultiPinyinStringFromChineseString(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->matchNameText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return v1
.end method

.method private findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 5
    .param p1    # Ljava/util/regex/Pattern;
    .param p2    # Ljava/lang/String;
    .param p3    # [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    aput v4, p3, v3

    aget v3, p3, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    aput v3, p3, v2

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private findSearchKeywordPositionPinyinFullString(Ljava/lang/String;[I)Z
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # [I

    const-string v9, "ChineseHighlightHelper"

    const-string v10, "findSearchKeywordPositionPinyinFullString() << function : START >>"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v5, ""

    const/4 v2, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-ge v2, v8, :cond_1

    iget-object v9, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/encoding/HanziToPinyin$Token;

    iget-object v9, v7, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    const/4 v4, 0x1

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-ge v2, v8, :cond_3

    iget-object v9, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/encoding/HanziToPinyin$Token;

    iget-object v9, v7, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    const/4 v1, 0x1

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-gt v0, v3, :cond_4

    const/4 v9, 0x0

    aput v0, p2, v9

    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    aput v10, p2, v9

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private findSearchKeywordPositionPinyinFullStringMulti(Ljava/lang/String;[I[Ljava/lang/String;)Z
    .locals 11
    .param p1    # Ljava/lang/String;
    .param p2    # [I
    .param p3    # [Ljava/lang/String;

    const-string v9, "ChineseHighlightHelper"

    const-string v10, "findSearchKeywordPositionPinyinFullStringMulti() << function : START >> "

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v8, p3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const-string v5, ""

    const/4 v2, 0x0

    :goto_0
    if-nez v4, :cond_1

    if-ge v2, v8, :cond_1

    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    const/4 v4, 0x1

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v1, :cond_3

    if-ge v2, v8, :cond_3

    iget-object v9, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/encoding/HanziToPinyin$Token;

    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_2

    const/4 v1, 0x1

    move v0, v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    if-gt v0, v3, :cond_4

    const/4 v9, 0x0

    aput v0, p2, v9

    const/4 v9, 0x1

    add-int/lit8 v10, v3, 0x1

    aput v10, p2, v9

    const/4 v6, 0x1

    :goto_2
    return v6

    :cond_4
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private replaceChnStringWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Ljava/lang/String;

    const-string v3, ""

    move-object v2, p1

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v4, ""

    if-nez p4, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    const/4 v5, 0x1

    :cond_2
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    if-eqz v5, :cond_5

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_3

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    const/4 v6, 0x0

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-lt v0, p4, :cond_2

    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2, p2, p3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private searchAndHighlight(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z
    .locals 6
    .param p1    # Ljava/util/regex/Pattern;
    .param p2    # Ljava/lang/String;
    .param p3    # [I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/encoding/ChineseHighlightHelper;->findSearchKeywordPosition(Ljava/util/regex/Pattern;Ljava/lang/String;[I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/text/SpannableString;

    iget-object v2, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v3, -0xcc4a16

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x0

    aget v3, p3, v3

    const/4 v4, 0x1

    aget v4, p3, v4

    const/16 v5, 0x21

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    iget-object v2, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public findHighlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternString:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mPatternStringRaw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->nameText:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->name:Landroid/widget/TextView;

    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (0) [ findHighlight() Starts ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/mms/encoding/ChineseHighlightHelper;->findHighlightInitialPinyin()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (1) [ findHighlight() pinyin INITIAL search highlight done ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/encoding/ChineseHighlightHelper;->findHighlightFullPinyin()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (2)[  findHighlight() pinyin FULL search  highlight done ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ChineseHighlightHelper"

    const-string v1, "    ****************** (3) [  findHighlight() no match ] ******************"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMultiPinyinStringFromChineseString(Ljava/lang/String;)V
    .locals 35
    .param p1    # Ljava/lang/String;

    const-string v2, "ChineseHighlightHelper"

    const-string v33, "----getMultiPinyinStringFromChineseString"

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/encoding/HanziToMultiPinyin;->getInstance()Lcom/android/mms/encoding/HanziToMultiPinyin;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/mms/encoding/HanziToMultiPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    const/4 v10, 0x0

    move-object/from16 v31, p1

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    const-string v7, ","

    const/16 v16, 0x0

    const/4 v6, 0x0

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v18

    const/16 v2, 0x14

    move/from16 v0, v18

    if-le v0, v2, :cond_0

    const/16 v18, 0x14

    :cond_0
    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v6, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/mms/encoding/HanziToPinyin$Token;

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->type:I

    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v2, v0, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v28

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v16, v0

    const/4 v2, 0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    const-string v2, "ChineseHighlightHelper"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[token type PINYIN] targets.length="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", continue loop with this token.."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    const/4 v2, 0x0

    aget-object v2, v30, v2

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v15

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, ""

    const/4 v2, 0x0

    aget-object v11, v30, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v18, -0x1

    if-ge v6, v2, :cond_1

    const-string v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v2, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    if-ge v2, v0, :cond_4

    const-string v2, "ChineseHighlightHelper"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "targets.length="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", continue loop with this token.."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v30, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v18, -0x1

    if-ge v6, v2, :cond_1

    const-string v2, ","

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v6, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/mms/encoding/HanziToPinyin$Token;

    move-object/from16 v0, v32

    iget v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->type:I

    const/16 v33, 0x2

    move/from16 v0, v33

    if-ne v2, v0, :cond_8

    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v17, v0

    const/4 v13, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v27

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v13, 0x1

    :goto_3
    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    const/4 v2, 0x0

    aget-object v4, v30, v2

    aget-object v5, v30, v13

    const/4 v12, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v12, v0, :cond_7

    if-eqz v8, :cond_7

    new-instance v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/encoding/ChineseHighlightHelper;->replaceChnStringWithIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v29

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    add-int v2, v27, v9

    const/16 v33, 0x5

    move/from16 v0, v33

    if-lt v2, v0, :cond_6

    const/4 v8, 0x0

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_9
    const/4 v14, 0x0

    const/16 v26, 0x0

    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_c

    new-instance v22, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullStringMultiPinyin:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/String;

    invoke-direct/range {v21 .. v21}, Ljava/lang/String;-><init>()V

    const/16 v26, 0x1

    :goto_6
    if-eqz v22, :cond_b

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    if-eqz v26, :cond_b

    const/4 v2, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const/16 v2, 0x2c

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-gez v14, :cond_a

    const/16 v26, 0x0

    goto :goto_6

    :cond_a
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    goto :goto_6

    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialStringMultiPinyin:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_c
    return-void
.end method

.method public getPinyinStringFromChineseString(Ljava/lang/String;)V
    .locals 14
    .param p1    # Ljava/lang/String;

    const-string v11, "ChineseHighlightHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "----getPinyinStringFromChineseString : displayName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/mms/encoding/HanziToPinyin;->getInstance()Lcom/android/mms/encoding/HanziToPinyin;

    move-result-object v11

    invoke-virtual {v11, p1}, Lcom/android/mms/encoding/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move-object v9, p1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_4

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokens:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/encoding/HanziToPinyin$Token;

    iget v11, v10, Lcom/android/mms/encoding/HanziToPinyin$Token;->type:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->tokenTypePinyinIncluded:Z

    iget-object v11, v10, Lcom/android/mms/encoding/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    iget-object v11, v10, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v11, v7

    array-length v12, v8

    if-ge v11, v12, :cond_0

    array-length v3, v7

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    aget-object v12, v8, v2

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    array-length v3, v8

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    aget-object v12, v8, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    iget-object v11, v10, Lcom/android/mms/encoding/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    :goto_4
    array-length v11, v8

    if-ge v2, v11, :cond_3

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mInitialString:Ljava/lang/StringBuilder;

    aget-object v12, v8, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/mms/encoding/ChineseHighlightHelper;->mFullString:Ljava/lang/StringBuilder;

    aget-object v12, v8, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
