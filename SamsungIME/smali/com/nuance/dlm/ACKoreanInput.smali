.class public Lcom/nuance/dlm/ACKoreanInput;
.super Ljava/lang/Object;
.source "ACKoreanInput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/nuance/dlm/ACKoreanInput;->acKoreanRegisterEventHandlerCallback()I

    return-void
.end method

.method private final native acKoreanDeleteCategory(I)I
.end method

.method private final native acKoreanDeleteCategoryLanguage(II)I
.end method

.method private final native acKoreanExportAsEvent(ZI)I
.end method

.method private final native acKoreanProcessEvent([B)I
.end method

.method private final native acKoreanRegisterEventHandlerCallback()I
.end method

.method private final native acKoreanScanBuffer([CIIIIZZ)I
.end method
