.class public Lcom/nuance/dlm/ACAlphaInput;
.super Ljava/lang/Object;
.source "ACAlphaInput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/nuance/dlm/ACAlphaInput;->acAlphaRegisterEventHandlerCallback()I

    return-void
.end method

.method private final native acAlphaDeleteCategory(I)I
.end method

.method private final native acAlphaDeleteCategoryLanguage(II)I
.end method

.method private final native acAlphaExportAsEvent(ZI)I
.end method

.method private final native acAlphaGetCachedEvents()[B
.end method

.method private final native acAlphaProcessEvent([B)I
.end method

.method private final native acAlphaRegisterEventHandlerCallback()I
.end method

.method private final native acAlphaScanBuffer([CIIIIIZZ)I
.end method

.method private final native acAlphaScanSessionBegin([B[B[BII)I
.end method

.method private final native acAlphaScanSessionEnd()I
.end method
