.class public Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
.super Ljava/lang/Object;
.source "TextDiff.java"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final RETURN_STRING:Ljava/lang/String; = "\n"

.field public static final SPACE_STRING:Ljava/lang/String; = " "

.field private static mInstance:Lcom/diotek/ime/framework/engine/vohwr/TextDiff;


# instance fields
.field private mIndex:I

.field private mNewText:Ljava/lang/String;

.field private mOldText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mInstance:Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    iput-object p2, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    iput p3, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    return-void
.end method

.method public static diff(Ljava/lang/String;Ljava/lang/String;Z)Lcom/diotek/ime/framework/engine/vohwr/TextDiff;
    .locals 9

    const/4 v8, 0x0

    const-string v3, ""

    const-string v1, ""

    if-eqz p0, :cond_0

    move-object v3, p0

    :cond_0
    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    const-string v2, ""

    const-string v0, ""

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p2, :cond_4

    invoke-static {v3, v1}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v5, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;

    invoke-direct {v5}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;-><init>()V

    invoke-direct {v5, v4}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setIndex(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {v5, v2}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setOldText(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-direct {v5, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->setNewText(Ljava/lang/String;)V

    :cond_3
    return-object v5

    :cond_4
    invoke-static {v3, v1}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getCommonPrefixSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static getCommonSuffixSize(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v1, :cond_0

    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sub-int v5, v2, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    add-int/lit8 v1, v0, -0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    return-void
.end method

.method private setNewText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    return-void
.end method

.method private setOldText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mIndex:I

    return v0
.end method

.method public getNewText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mNewText:Ljava/lang/String;

    return-object v0
.end method

.method public getOldText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/engine/vohwr/TextDiff;->mOldText:Ljava/lang/String;

    return-object v0
.end method
