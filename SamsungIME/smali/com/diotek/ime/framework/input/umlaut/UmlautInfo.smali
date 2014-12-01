.class public Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;
.super Ljava/lang/Object;
.source "UmlautInfo.java"


# instance fields
.field private mKeycode:I

.field private mLanguageID:Ljava/lang/String;

.field private mUmlautString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    iput-object p1, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    iput p2, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    iput-object p3, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mLanguageID:Ljava/lang/String;

    return-object v0
.end method

.method public getUmlautString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/input/umlaut/UmlautInfo;->mUmlautString:Ljava/lang/String;

    return-object v0
.end method
