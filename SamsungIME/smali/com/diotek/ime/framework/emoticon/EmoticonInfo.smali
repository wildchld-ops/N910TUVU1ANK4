.class public Lcom/diotek/ime/framework/emoticon/EmoticonInfo;
.super Ljava/lang/Object;
.source "EmoticonInfo.java"


# instance fields
.field private mCategoryID:I

.field private mEmoticonCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    const-string v0, ""

    iput-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    iput p1, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    iput-object p2, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCategoryID()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mCategoryID:I

    return v0
.end method

.method public getEmoticonCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/emoticon/EmoticonInfo;->mEmoticonCode:Ljava/lang/String;

    return-object v0
.end method
