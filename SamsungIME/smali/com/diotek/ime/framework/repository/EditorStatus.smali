.class public Lcom/diotek/ime/framework/repository/EditorStatus;
.super Ljava/lang/Object;
.source "EditorStatus.java"


# static fields
.field private static sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;


# instance fields
.field private editorClass:I

.field private flags:I

.field private imeOptions:I

.field private inputType:I

.field private variation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    iput v0, p0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    return-void
.end method

.method public static getImeOptions()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    return v0
.end method

.method public static getInputType()I
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    return v0
.end method

.method public static isAutoCompletitionInput()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isDateTimeInputClass()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDateTimeInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isDecimalNumberInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isDigitEditor()Z
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isDateTimeInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isPhoneNumberInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmailInputType()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eq v2, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0xd0

    if-ne v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isNumberInputClass()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNumberOnlyInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isNumberPasswordInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isPasswordInputType()Z
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isNumberPasswordInputType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isTextPasswordInputType()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneNumberInputClass()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSearchInputType()Z
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShortMessageInputType()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-ne v2, v0, :cond_2

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isSignedDecimalNumberInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x3000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isSignedNumberInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    and-int/lit16 v1, v1, 0x3000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isTextPasswordInputType()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-ne v2, v1, :cond_2

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x80

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0xe0

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public static isTimeInputType()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v1, :cond_0

    new-instance v1, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v1}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v1, v1, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isUrlEmailMode()Z
    .locals 1

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isUrlInputType()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/EditorStatus;->isEmailInputType()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUrlInputType()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v2, :cond_0

    new-instance v2, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v2}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    if-eqz v2, :cond_1

    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iget v2, v2, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static setImeOptions(I)V
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->imeOptions:I

    return-void
.end method

.method public static setInputType(I)V
    .locals 2

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/repository/EditorStatus;

    invoke-direct {v0}, Lcom/diotek/ime/framework/repository/EditorStatus;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    and-int/lit8 v1, p0, 0xf

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->editorClass:I

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    and-int/lit16 v1, p0, 0xff0

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->variation:I

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    const v1, 0xfff000

    and-int/2addr v1, p0

    iput v1, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->flags:I

    sget-object v0, Lcom/diotek/ime/framework/repository/EditorStatus;->sInstance:Lcom/diotek/ime/framework/repository/EditorStatus;

    iput p0, v0, Lcom/diotek/ime/framework/repository/EditorStatus;->inputType:I

    return-void
.end method
