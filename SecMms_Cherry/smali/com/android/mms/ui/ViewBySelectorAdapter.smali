.class public Lcom/android/mms/ui/ViewBySelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "ViewBySelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;
    }
.end annotation


# static fields
.field public static final VIEWBY_ALL:I = 0x0

.field public static final VIEWBY_MMS:I = 0x2

.field public static final VIEWBY_SLOT1:I = 0x3

.field public static final VIEWBY_SLOT2:I = 0x4

.field public static final VIEWBY_SMS:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/ViewBySelectorAdapter;->getData(Landroid/content/Context;ZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected static getData(Landroid/content/Context;ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const v1, 0x7f0c0487

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v4}, Lcom/android/mms/ui/ViewBySelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    if-eqz p2, :cond_0

    const v1, 0x7f0c0488

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3, v5}, Lcom/android/mms/ui/ViewBySelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ViewBySelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p0, v4}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ViewBySelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    invoke-static {p0, v5}, Lcom/android/mms/ui/MessageUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v3, v2}, Lcom/android/mms/ui/ViewBySelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/ViewBySelectorAdapter$ViewByListItem;->getCommand()I

    move-result v1

    return v1
.end method
