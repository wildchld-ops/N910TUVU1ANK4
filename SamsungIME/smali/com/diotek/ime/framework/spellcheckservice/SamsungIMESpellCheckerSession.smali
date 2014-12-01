.class public Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerSession;
.super Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;
.source "SamsungIMESpellCheckerSession.java"


# direct methods
.method public constructor <init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;-><init>(Lcom/diotek/ime/framework/spellcheckservice/SamsungIMESpellCheckerService;)V

    return-void
.end method


# virtual methods
.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 8

    array-length v1, p1

    new-array v4, v1, [Landroid/view/textservice/SuggestionsInfo;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    if-eqz p3, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v5, v0, -0x1

    aget-object v5, p1, v5

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    aget-object v5, p1, v0

    invoke-virtual {p0, v5, v2, p2}, Lcom/diotek/ime/framework/spellcheckservice/SamsungIMEWordLevelSpellCheckerSession;->onGetSuggestions(Landroid/view/textservice/TextInfo;Ljava/lang/String;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v5

    aput-object v5, v4, v0

    aget-object v5, v4, v0

    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v6

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, v3

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    return-object v4
.end method
