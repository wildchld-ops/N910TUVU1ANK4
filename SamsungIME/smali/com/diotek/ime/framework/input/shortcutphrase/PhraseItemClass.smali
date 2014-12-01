.class public Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;
.super Ljava/lang/Object;
.source "PhraseItemClass.java"


# instance fields
.field private phraseCategory:Ljava/lang/String;

.field private phraseEditText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseCategory(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->setPhraseEditText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPhraseCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getPhraseEditText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseEditText:Ljava/lang/String;

    return-object v0
.end method

.method public setPhraseCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseCategory:Ljava/lang/String;

    return-void
.end method

.method public setPhraseEditText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/input/shortcutphrase/PhraseItemClass;->phraseEditText:Ljava/lang/String;

    return-void
.end method
