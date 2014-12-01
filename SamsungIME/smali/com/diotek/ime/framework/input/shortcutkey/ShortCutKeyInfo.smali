.class public Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;
.super Ljava/lang/Object;
.source "ShortCutKeyInfo.java"


# instance fields
.field private mIsActiveKey:Z

.field private mKeycode:I

.field private mLanguageID:I

.field private mShortCutKey:I


# direct methods
.method constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    iput p1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    iput p2, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    iput p3, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    return-void
.end method

.method constructor <init>(IIIZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    iput v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    iput p1, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    iput p2, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    iput p3, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    iput-boolean p4, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    return-void
.end method


# virtual methods
.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mKeycode:I

    return v0
.end method

.method public getLanguageID()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mLanguageID:I

    return v0
.end method

.method public getShortCutKeyCode()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mShortCutKey:I

    return v0
.end method

.method public isActiveKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/shortcutkey/ShortCutKeyInfo;->mIsActiveKey:Z

    return v0
.end method
