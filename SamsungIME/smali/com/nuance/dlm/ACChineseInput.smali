.class public Lcom/nuance/dlm/ACChineseInput;
.super Ljava/lang/Object;
.source "ACChineseInput.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/nuance/dlm/ACChineseInput;->acChineseRegisterEventHandlerCallback()I

    return-void
.end method

.method private final native acChineseDeleteCategory(I)I
.end method

.method private final native acChineseDeleteCategoryLanguage(II)I
.end method

.method private final native acChineseExportAsEvent(ZI)I
.end method

.method private final native acChineseProcessEvent([B)I
.end method

.method private final native acChineseRegisterEventHandlerCallback()I
.end method


# virtual methods
.method public deleteCategory(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACChineseInput;->acChineseDeleteCategory(I)I

    return-void
.end method

.method public deleteCategoryLanguage(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACChineseInput;->acChineseDeleteCategoryLanguage(II)I

    return-void
.end method

.method public exportAsEvents(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nuance/dlm/ACChineseInput;->acChineseExportAsEvent(ZI)I

    return-void
.end method

.method public processEvent([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dlm/ACChineseInput;->acChineseProcessEvent([B)I

    return-void
.end method
