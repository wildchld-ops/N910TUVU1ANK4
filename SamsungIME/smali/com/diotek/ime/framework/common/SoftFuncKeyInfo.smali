.class public Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;
.super Ljava/lang/Object;
.source "SoftFuncKeyInfo.java"


# instance fields
.field private mIndex:I

.field private mKeyCode:I

.field private mLabel:Ljava/lang/String;

.field private mLanguage:Lcom/diotek/ime/framework/common/Language;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lcom/diotek/ime/framework/common/Language;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    iput-object v1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    iput p1, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    iput p2, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    iput-object p3, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    iput-object p4, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mIndex:I

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mKeyCode:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/diotek/ime/framework/common/Language;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/SoftFuncKeyInfo;->mLanguage:Lcom/diotek/ime/framework/common/Language;

    return-object v0
.end method
